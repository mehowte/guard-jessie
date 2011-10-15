require 'guard'
require 'guard/guard'

module Guard
  class Jessie < Guard
    autoload :Runner,  'guard/jessie/runner'

    def run_all
      puts "Running all specs"
      Runner.run %w[spec]
    end

    def run_on_change paths
      paths = paths.select {|path| File.exists?(path) }
      if paths.any?
        puts "Running #{paths.join(' ')}"
        Runner.run paths
      end
    end
  end
end

