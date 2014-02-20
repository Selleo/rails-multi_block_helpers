module Rails
  module MultiBlockHelpers
    module CaptureSectionHelper
      extend ActiveSupport::Concern

      included do
        include SwitchBlock
      end

      def capture_section(section, *args)
        value = nil
        buffer = with_output_buffer { value = yield it_to(section) }
        if string = buffer.presence || value and string.is_a?(String)
          ERB::Util.html_escape string
        end
      end
    end
  end
end
