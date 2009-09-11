class Watch
  def self.stop(watch)
    system("god stop #{watch}")
  end
  
  def self.start(watch)
    system("god start #{watch}")
  end
end