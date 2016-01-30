# encoding: utf-8
# Copyright (c) 2016 Nathan Currier

require 'yard'
require 'yard/rake/yardoc_task'

YARD::Rake::YardocTask.new(:yard) do |t|
  template_path = File.expand_path('../template', File.dirname(__FILE__))
  t.options += ['--template-path', template_path]
end

CLEAN.include '.yardoc'
CLOBBER.include '_yardoc'
