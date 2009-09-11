module WatchHelper
  
  def watch_action_links(watch, group = nil)
    watch, status = watch[0], watch[1]

    if status == 'up'
      if group
        return link_to('restart monitored process', group_restart_watch_path(group, watch)) + " " +
               link_to('unmonitor', group_unmonitor_watch_path(group, watch))
      else
        return link_to('restart monitored process', restart_watch_path(watch)) + " " +
               link_to('unmonitor', unmonitor_watch_path(watch))
      end
    elsif status == 'unmonitored'
      path = group ? group_monitor_watch_path(group, watch) : monitor_watch_path(watch)
      return link_to('monitor', path)
    end
  end
end