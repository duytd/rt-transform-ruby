require "execjs"
require "singleton"

module Rt
  class Transformer
    include Singleton

    def initialize
      js_path = File.join File.dirname(__FILE__), "../js/react-templates.min.js"
      contents = "var global = global || this;" + File.read(js_path)
      @context = ExecJS.compile(contents)
    end

    def call code, options={}
      name = options[:name] || nil
      modules = options[:modules] || "commonjs"

      @context.call "global.reactTemplates.convertTemplateToReact", code, {modules: modules, name: name}
    end
  end
end
