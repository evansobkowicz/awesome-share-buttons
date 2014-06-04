module AwesomeShareButtons
  module Generators
    class InstallGenerator < ::Rails::Generators::Base
      desc "Copy AwesomeShareButtons default files"
      source_root File.expand_path('../templates', __FILE__)

      def copy_config
        directory 'config'
      end
    end
  end
end
