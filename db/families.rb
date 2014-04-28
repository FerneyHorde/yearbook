#!/usr/bin/env ruby

require File.expand_path(File.join(File.dirname(__FILE__), '..', 'config', 'environment'))
require 'fileutils'

yaml = IO.read(__FILE__.sub(/\.rb$/,'.yml'))
days = YAML.load yaml
days.each do |day_name, families|
  day = Day.find_or_create_by name: day_name
  families.each do |family_name, people|
    family = Family.find_or_create_by name: family_name
    people.each do |person_name|
      person = Person.find_or_create_by name: person_name, family_id: family.id
      person.days << day
      puts [day, family, person].join(", ")
    end
  end
end

