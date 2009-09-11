class GodInterface
  attr_accessor :monitored_processes
  
  def initialize
    @monitored_processes = {}
  end
  
  def processes
    parse_status
    monitored_processes
  end
  
  private
    def parse_status
      current_group = nil
      status.split("\n").each do |line|
        if line.match('\:$')
          group = line.gsub!(':', '')
          add_group(group)
          current_group = group
        elsif current_group && line.match(/^ /)
          add_watch(line, current_group)
        else
          add_watch(line)
        end
      end
    end
    
    def get_status(line)
      line.match('[a-zA-Z0-9]*$')[0]
    end
    
    def get_watch_name(line)
      line.match('[a-zA-Z0-9_]*:')[0].gsub!(':', '').to_sym
    end
    
    def add_group(group)
      monitored_processes.merge!("#{group}".to_sym => {})
    end
    
    def add_watch(line, group = nil)
      if group
        monitored_processes["#{group}".to_sym].merge!(get_watch_name(line) => get_status(line))
      else
        monitored_processes.merge!(get_watch_name(line) => get_status(line))
      end
    end
  
    def status
      # "Test:\n  watch_1: up\n  watch_2: unmonitored\nTest2:\n  watch_1: down\n, watch_213: up"
      %x{god status}
    end
end