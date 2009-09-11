God.watch do |w|
  w.group  = "ping_jobs"
  w.name  = "ping_google"
  w.start = "ping -c 5 www.google.com"
end

God.watch do |w|
  w.group  = "ping_jobs"
  w.name  = "ping_clemens_site"
  w.start = "ping -c 5 www.railway.at"
end

God.watch do |w|
  w.group  = "ping_jobs"
  w.name  = "ping_svens_site"
  w.start = "ping -c 5 www.artweb-design.de"
end

["environment", "local", "database"].each do |file|
  God.watch do |w|
    w.group = "find_jobs"
    w.name  = "find_#{file}"
    w.start = "find /usr -iname #{file}.rb"
  end
end