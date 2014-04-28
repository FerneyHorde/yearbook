#!/usr/bin/env ruby

require File.expand_path(File.join(File.dirname(__FILE__), '..', 'config', 'environment'))
require 'fileutils'
require 'find'

base = File.expand_path(File.join(File.dirname(__FILE__), '..', 'public', 'images')) 
pre = File.expand_path(File.join(File.dirname(__FILE__), '..', 'public')) 
puts  base
Find.find(base) do |path|
  if FileTest.directory?(path)
    next
  end
  filename = path.sub(pre, '')
  dirs = filename.split File::SEPARATOR
  type = dirs[2].classify.constantize
  name = dirs[3]
  imageable = type.find_or_create_by(name: name)
  image = Image.find_or_create_by(filename: filename, imageable: imageable);
  puts image.inspect
end
