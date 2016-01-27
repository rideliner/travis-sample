# encoding: utf-8
# Copyright (c) 2016 Nathan Currier

if ENV['TRAVIS'] && ENV['DOCS']
  namespace :yard do
    if ENV['TRAVIS_PULL_REQUEST'] == 'false'
      require 'ghpages_deploy/rake_task'

      desc 'Deploy documentation to Github Pages'
      GithubPages::DeployTask.new(:deploy, [:yard]) do |t|
        t.remote = 'origin'
        t.source = '_yardoc'

        branch = ENV['TRAVIS_BRANCH']
        t.register "doc/branch/#{branch}" if branch

        tag = ENV['TRAVIS_TAG']
        t.register "doc/tag/#{tag}" if tag
      end
    else
      task :deploy do
        puts 'Documentation not generated for pull requests.'
      end
    end
  end
end
