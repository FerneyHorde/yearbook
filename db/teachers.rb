#!/usr/bin/env ruby

require File.expand_path(File.join(File.dirname(__FILE__), '..', 'config', 'environment'))
require 'fileutils'

yaml = IO.read(__FILE__.sub(/\.rb$/,'.yml'))
teachers = YAML.load yaml
teachers.each do |teacher_name, classes|
  puts classes.inspect
##  teacher = Day.find_or_create_by name: teacher_name
  if classes
    classes.each do |class_name|
      if yb_class = YbClass.find_by( name: class_name)
##    people.each do |person_name|
##      person = Person.find_or_create_by name: person_name, family_id: family.id
##      person.teachers << teacher
##      puts [teacher, family, person].join(", ")
##    end
      else
        puts "no class: #{class_name}"
      end
    end
  end
end

