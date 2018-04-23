def checkinfoFolder(path)
  Dir.foreach(path) do |entry|
    puts "name: #{entry} path: #{File.absolute_path "#{entry}"}"
  end
end
checkinfoFolder("/usr/")
