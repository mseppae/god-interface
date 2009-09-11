class Group
  def self.restart(group)
    !! system("god restart '#{group}'")
  end
  
  def self.unmonitor(group)
    !! system("god unmonitor '#{group}'")
  end
  
  def self.monitor(group)
    !! system("god monitor '#{group}'")
  end
end