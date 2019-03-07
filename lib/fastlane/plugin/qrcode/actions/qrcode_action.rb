require 'fastlane/action'
require_relative '../helper/qrcode_helper'
require 'rqrcode'
module Fastlane
  module Actions
    class QrcodeAction < Action
      def self.run(params)
        UI.message("The qrcode plugin is working!")
        qrcode = RQRCode::QRCode.new(params[:content])
        puts qrcode.as_ansi
      end

      def self.description
        "qrcode"
      end

      def self.authors
        ["勇者"]
      end

      def self.return_value
        # If your method provides a return value, you can describe here what it does
      end

      def self.details
        # Optional:
        "qrcode"
      end

      def self.available_options
        [
          FastlaneCore::ConfigItem.new(key: :content,
                                  env_name: "QRCODE_YOUR_OPTION_CONTENT",
                               description: "A description of your want qrcode",
                                  optional: false,
                                      type: String)
        ]
      end

      def self.is_supported?(platform)
        [:ios, :mac, :android].include?(platform)
      end
    end
  end
end
