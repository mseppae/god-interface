class Watch
  def self.stop(watch)
    !! system("god stop '#{watch}'")
  end
  
  def self.start(watch)
    !! system("god start '#{watch}'")
  end
  
  def self.restart(watch)
    !! system("god restart '#{watch}'")
  end
  
  def self.unmonitor(watch)
    !! system("god unmonitor '#{watch}'")
  end
  
  def self.monitor(watch)
    !! system("god monitor '#{watch}'")
  end
end