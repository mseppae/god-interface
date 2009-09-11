God.watch do |w|
  w.group  = "Test watches"
  w.name  = "Test"
  w.start = "ping -c 5 www.google.com"
end