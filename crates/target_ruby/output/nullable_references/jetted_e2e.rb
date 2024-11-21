# Code generated by jetted for Ruby v0.1.0

require 'json'
require 'time'

module JettedE2E

  class NullableReferences
    attr_accessor :notnull_ref_notnull_string
    attr_accessor :notnull_ref_null_string
    attr_accessor :notnull_string
    attr_accessor :null_ref_notnull_string
    attr_accessor :null_ref_null_string
    attr_accessor :null_string

    def self.from_json_data(data)
      out = NullableReferences.new
      out.notnull_ref_notnull_string = JettedE2E::from_json_data(NotnullRefNotnullString, data["notnull_ref_notnull_string"])
      out.notnull_ref_null_string = JettedE2E::from_json_data(NotnullRefNullString, data["notnull_ref_null_string"])
      out.notnull_string = JettedE2E::from_json_data(NotnullString, data["notnull_string"])
      out.null_ref_notnull_string = JettedE2E::from_json_data(NullRefNotnullString, data["null_ref_notnull_string"])
      out.null_ref_null_string = JettedE2E::from_json_data(NullRefNullString, data["null_ref_null_string"])
      out.null_string = JettedE2E::from_json_data(NullString, data["null_string"])
      out
    end

    def to_json_data
      data = {}
      data["notnull_ref_notnull_string"] = JettedE2E::to_json_data(notnull_ref_notnull_string)
      data["notnull_ref_null_string"] = JettedE2E::to_json_data(notnull_ref_null_string)
      data["notnull_string"] = JettedE2E::to_json_data(notnull_string)
      data["null_ref_notnull_string"] = JettedE2E::to_json_data(null_ref_notnull_string)
      data["null_ref_null_string"] = JettedE2E::to_json_data(null_ref_null_string)
      data["null_string"] = JettedE2E::to_json_data(null_string)
      data
    end
  end

  class NotnullRefNotnullString
    attr_accessor :value

    def self.from_json_data(data)
      out = NotnullRefNotnullString.new
      out.value = JettedE2E.from_json_data(NotnullString, data)
      out
    end

    def to_json_data
      JettedE2E.to_json_data(value)
    end
  end

  class NotnullRefNullString
    attr_accessor :value

    def self.from_json_data(data)
      out = NotnullRefNullString.new
      out.value = JettedE2E.from_json_data(NullString, data)
      out
    end

    def to_json_data
      JettedE2E.to_json_data(value)
    end
  end

  class NotnullString
    attr_accessor :value

    def self.from_json_data(data)
      out = NotnullString.new
      out.value = JettedE2E.from_json_data(String, data)
      out
    end

    def to_json_data
      JettedE2E.to_json_data(value)
    end
  end

  class NullRefNotnullString
    attr_accessor :value

    def self.from_json_data(data)
      out = NullRefNotnullString.new
      out.value = JettedE2E.from_json_data(NotnullString, data)
      out
    end

    def to_json_data
      JettedE2E.to_json_data(value)
    end
  end

  class NullRefNullString
    attr_accessor :value

    def self.from_json_data(data)
      out = NullRefNullString.new
      out.value = JettedE2E.from_json_data(NullString, data)
      out
    end

    def to_json_data
      JettedE2E.to_json_data(value)
    end
  end

  class NullString
    attr_accessor :value

    def self.from_json_data(data)
      out = NullString.new
      out.value = JettedE2E.from_json_data(String, data)
      out
    end

    def to_json_data
      JettedE2E.to_json_data(value)
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