# Code generated by jetted for Ruby v0.1.0

require 'json'
require 'time'

module JettedE2E

  class PropertyNameCollisions
    attr_accessor :foo
    attr_accessor :foo0

    def self.from_json_data(data)
      out = PropertyNameCollisions.new
      out.foo = JettedE2E::from_json_data(String, data["Foo"])
      out.foo0 = JettedE2E::from_json_data(String, data["foo"])
      out
    end

    def to_json_data
      data = {}
      data["Foo"] = JettedE2E::to_json_data(foo)
      data["foo"] = JettedE2E::to_json_data(foo0)
      data
    end
  end

  private

  def self.from_json_data(type, data)
    if data.nil? || [Object, TrueClass, Integer, Float, String].include?(type)
      data
    elsif type == DateTime
      DateTime.rfc3339(data)
    elsif type.is_a?(Array)
      data.map { |elem| from_json_data(type.first, elem) }
    elsif type.is_a?(Hash)
      data.transform_values { |elem| from_json_data(type.values.first, elem) }
    else
      type.from_json_data(data)
    end
  end

  def self.to_json_data(data)
    if data.nil? || [TrueClass, FalseClass, Integer, Float, String].include?(data.class)
      data
    elsif data.is_a?(DateTime)
      data.rfc3339
    elsif data.is_a?(Array)
      data.map { |elem| to_json_data(elem) }
    elsif data.is_a?(Hash)
      data.transform_values { |elem| to_json_data(elem) }
    else
      data.to_json_data
    end
  end
end
