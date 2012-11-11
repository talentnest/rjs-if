require 'generator_if_blocks'
require 'javascript_element_proxy_extraction'

ActiveSupport.on_load(:action_view) do
  ActiveSupport.on_load(:after_initialize) do
    ActionView::Helpers::PrototypeHelper::JavaScriptGenerator::GeneratorMethods.class_eval do
      include GeneratorIfBlocks
    end
    
    ActionView::Helpers::JavaScriptProxy.class_eval do
      include JavaScriptElementProxyExtraction
    end
  end
end