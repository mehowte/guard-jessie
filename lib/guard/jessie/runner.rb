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
          cmd_parts << "jessie"
          cmd_parts << "-f progress"
          cmd_parts << paths.join(" ")

          cmd_parts.join(" ")
        end
    end
  end
end
