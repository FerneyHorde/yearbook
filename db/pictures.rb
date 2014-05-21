#!/usr/bin/env ruby

require File.expand_path(File.join(File.dirname(__FILE__), '..', 'config', 'environment'))
require 'fileutils'
require 'find'

Image.find_each do |image|
  ext = File.extname(image.filename).downcase
  id_filename_no_ext = File.expand_path(File.join(File.dirname(__FILE__), '..', 'public', 'images', "#{image.id}.#{ext}"))
  id_filename = File.expand_path(File.join(File.dirname(__FILE__), '..', 'public', 'images', "#{image.id}#{ext}"))
  filename = File.expand_path(File.join(File.dirname(__FILE__), '..', 'public', image.filename))
  if (File.exist? filename and !File.exist? id_filename)
    File.rename(filename, id_filename)
  elsif (File.exist? id_filename_no_ext and !File.exist? id_filename)
    File.rename(id_filename_no_ext, id_filename)
  end
end

base = File.expand_path(File.join(File.dirname(__FILE__), '..', 'public', 'images')) 
pre = File.expand_path(File.join(File.dirname(__FILE__), '..', 'public')) 
puts  base
Find.find(base) do |path|
  if FileTest.directory?(path)
    next
  end
  ext = File.extname(path).downcase
  filename = path.sub(pre, '')
  dirs = filename.split File::SEPARATOR
  begin
    type = dirs[2].classify.constantize
    name = dirs[3]
    imageable = type.find_or_create_by(name: name)
    image = Image.find_or_create_by(filename: filename, imageable: imageable);
    id_filename = File.expand_path(File.join(File.dirname(__FILE__), '..', 'public', 'images', "#{image.id}#{ext}"))
    File.rename(path, id_filename)
    puts image.inspect
  rescue 
    puts $!
  end
end


