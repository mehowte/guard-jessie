module Guard
  class Jessie
    module Runner
      def self.run paths
        return false if paths.empty?
        system(jessie_command(paths))
      end

      private
        def self.jessie_command(paths)
          cmd_parts = []
          cmd_parts << jessie_path
          cmd_parts << "-f progress"
          cmd_parts << paths.join(" ")

          cmd_parts.join(" ")
        end

        def self.jessie_path
          local_jessie = './node_modules/jessie/bin/jessie'
          global_jessie = 'jessie'

          if FileTest.exists?(local_jessie)
            local_jessie
          else
            global_jessie
          end
        end

    end
  end
end
