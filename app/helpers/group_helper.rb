module GroupHelper  
  def group_action_links(group)
    group = group[0]

    return link_to('restart group processes', restart_group_path(group)) + " " +
               link_to('unmonitor all watches', unmonitor_group_path(group)) + " " +
               link_to('monitor all watches', monitor_group_path(group))
  end
end