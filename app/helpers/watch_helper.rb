module WatchHelper
  
  def watch_action_links(watch, group = nil)
    watch, status = watch[0], watch[1]

    if status == 'up'
      path = group ? group_watch_path(group, watch) : watch_path(watch)
      return link_to('stop', path, :method => :delete)
    elsif status == 'unmonitored'
      path = group ? start_group_watch_path(group, watch) : start_watch_path(watch)
      return link_to('start', path)
    end
  end
end