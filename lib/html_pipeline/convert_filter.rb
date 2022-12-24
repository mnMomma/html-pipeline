# frozen_string_literal: true

class HTMLPipeline
  class ConvertFilter < Filter
    attr_reader :text, :html

    def initialize(context: {}, result: {})
      super(context: context, result: result)
    end

    def self.call(text, context: {}, result: {})
      new(context: context, result: result).call(text)
    end
  end
end
