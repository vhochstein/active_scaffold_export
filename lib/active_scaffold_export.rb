ActiveScaffold rescue throw "should have included ActiveScaffold plug in first.  Please make sure that this plug-in comes alphabetically after the ActiveScaffold plug-in"

# Load our overrides
require "#{File.dirname(__FILE__)}/active_scaffold_export/config/core.rb"
require "#{File.dirname(__FILE__)}/active_scaffold/config/export.rb"
require "#{File.dirname(__FILE__)}/active_scaffold/actions/export.rb"
require "#{File.dirname(__FILE__)}/active_scaffold/helpers/view_helpers_override.rb"
require "#{File.dirname(__FILE__)}/active_scaffold/helpers/export_helpers.rb"

module ActiveScaffoldExport
  def self.root
    File.dirname(__FILE__) + "/.."
  end
end

ActionView::Base.send(:include, ActiveScaffold::Helpers::ExportHelpers)


##
## Run the install assets script, too, just to make sure
## But at least rescue the action in production
##
Rails::Application.initializer("active_scaffold_export.install_assets") do
  begin
    ActiveScaffoldAssets.copy_to_public(ActiveScaffoldExport.root)
  rescue
    raise $! unless Rails.env == 'production'
  end
end unless defined?(ACTIVE_SCAFFOLD_EXPORT_PLUGIN) && ACTIVE_SCAFFOLD_EXPORT_PLUGIN == true