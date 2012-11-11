require "rjs/if/generator_if_blocks"
require "rjs/if/javascript_element_proxy_extraction"

module RJS
  module If
    class Railtie < Rails::Railtie
      config.after_initialize do
        ActionView::Helpers::PrototypeHelper::JavaScriptGenerator::GeneratorMethods.class_eval do
          include GeneratorIfBlocks
        end
        
        ActionView::Helpers::JavaScriptProxy.class_eval do
          include JavaScriptElementProxyExtraction
        end
      end 
    end
  end
end
