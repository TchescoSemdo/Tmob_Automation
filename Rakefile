require 'rake'
require 'parallel_tests'

task :default do
  sh 'bundle exec cucumber'
end

task :parallel do
  sh 'bundle exec parallel_cucumber features/ -n 4 --profile parallel'
end
