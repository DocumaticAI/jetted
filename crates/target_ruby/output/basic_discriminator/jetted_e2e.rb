# Code generated by jetted for Ruby v0.1.0

require 'json'
require 'time'

module JettedE2E

  class BasicDiscriminator
    attr_accessor :foo

    def self.from_json_data(data)
      {
        "BAR_BAZ" => BasicDiscriminatorBarBaz,
        "QUUX" => BasicDiscriminatorQuux,
      }[data["foo"]].from_json_data(data)
    end
  end

  class BasicDiscriminatorBarBaz < BasicDiscriminator
    attr_accessor :baz

    def self.from_json_data(data)
      out = BasicDiscriminatorBarBaz.new
      out.foo = "BAR_BAZ"
      out.baz = JettedE2E::from_json_data(String, data["baz"])
      out
    end

    def to_json_data
      data = { "foo" => "BAR_BAZ" }
      data["baz"] = JettedE2E::to_json_data(baz)
      data
    end
  end

  class BasicDiscriminatorQuux < BasicDiscriminator
    attr_accessor :quuz

    def self.from_json_data(data)
      out = BasicDiscriminatorQuux.new
      out.foo = "QUUX"
      out.quuz = JettedE2E::from_json_data(String, data["quuz"])
      out
    end

    def to_json_data
      data = { "foo" => "QUUX" }
      data["quuz"] = JettedE2E::to_json_data(quuz)
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
