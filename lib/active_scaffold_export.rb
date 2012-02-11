require 'active_scaffold_export/engine'
require 'active_scaffold_export/version'

module ActiveScaffoldExport
  def self.root
    File.dirname(__FILE__) + "/.."
  end
end

module ActiveScaffold
  module Actions
    ActiveScaffold.autoload_subdir('actions', self, File.dirname(__FILE__))
  end

  module Config
    ActiveScaffold.autoload_subdir('config', self, File.dirname(__FILE__))
  end

  module Helpers
    ActiveScaffold.autoload_subdir('helpers', self, File.dirname(__FILE__))
  end
end