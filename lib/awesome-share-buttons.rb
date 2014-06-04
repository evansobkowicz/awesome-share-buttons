require "awesome_share_buttons/version"
require "awesome_share_buttons/config"
require "awesome_share_buttons/helper"

I18n.load_path += Dir.glob( File.dirname(__FILE__) + "lib/locales/*.{rb,yml}" )

module AwesomeShareButtons
  module Rails
    if ::Rails.version < "3.1"
      require "awesome_share_buttons/railtie"
    else
      require "awesome_share_buttons/engine"
    end
  end
end

ActionView::Base.send :include, AwesomeShareButtons::Helper
