module ActiveScaffoldExport
  #do not use module Rails... cause Rails.logger will fail
  # not sure if it is a must though...
  #module Rails
    class Engine < ::Rails::Engine
      initializer("initialize_active_scaffold_export", :after => "initialize_active_scaffold") do
        ActiveSupport.on_load(:action_controller) do
          require "active_scaffold_export/config/core.rb"
        end
        ActiveSupport.on_load(:action_view) do
          include ActiveScaffold::Helpers::ExportHelpers
        end
      end
    end
  #end
end
