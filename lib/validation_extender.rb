require "validation_extender/version"
require "validation_extender/syntax"

module ValidationExtender
  def self.extended(object)
    klass = object.singleton_class
    klass.class_eval do
    end
  end

  def self.included(klass)
    setup(klass)
  end

  private

  def setup(klass)
    class << klass
      attr_accessor :extended_validations
    end
    klass.instance_valiable_set(:@extended_validations, [])
    klass.extend ValidationExtender::Syntax
  end
end
