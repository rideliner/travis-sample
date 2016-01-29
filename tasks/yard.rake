# encoding: utf-8
# Copyright (c) 2016 Nathan Currier

require 'yard'
require 'yard/rake/yardoc_task'

YARD::Rake::YardocTask.new(:yard) do |t|
  t.options += ['--template-path', File.join(__FILE__, '../template')]
end

CLEAN.include '.yardoc'
CLOBBER.include '_yardoc'
