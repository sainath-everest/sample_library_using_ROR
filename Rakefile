# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require_relative "config/application"

Rails.application.load_tasks

namespace :dummy do
  task :apple do
    puts "Eat more apples"
  end

  task :dependency_task do
    puts "this is dependency task"
  end

  task import: "dependency_task" do
    puts "Importing data..."

    Dir.chdir(Rails.root.join("data")) { ruby "load-data.rb" }
  end
  # task :clean do
  #   rm_r FileList["tmp/cache/*"]
  # end
end

