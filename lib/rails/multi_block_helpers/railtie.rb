module Rails::MultiBlockHelpers
  class Railtie < Rails::Railtie
    initializer 'multi_block_helpers.configure_rails_initialization' do
      ActionView::Base.send :include, Rails::MultiBlockHelpers::CaptureSectionHelper
    end
  end
end
