# encoding: utf-8
# Copyright (c) 2016 Nathan Currier

require 'yard'
require 'yard/rake/yardoc_task'

YARD::Rake::YardocTask.new(:yard)

# require 'yard-ghpages-deploy'
namespace :yard do
  desc 'Deploy documentation to Github Pages'
  task :deploy do
    puts 'Not Yet Implemented'
  end
end

CLEAN.include '.yardoc'
CLOBBER.include '_yardoc'
