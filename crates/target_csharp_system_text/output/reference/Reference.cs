// Code generated by jetted for C# + System.Text.Json v0.1.0

using System;
using System.Text.Json;
using System.Text.Json.Serialization;

namespace JettedE2E
{
    [JsonConverter(typeof(ReferenceJsonConverter))]
    public class Reference
    {
        /// <summary>
        /// The underlying data being wrapped.
        /// </summary>
        public Foo Value { get; set; }
    }

    public class ReferenceJsonConverter : JsonConverter<Reference>
    {
        public override Reference Read(ref Utf8JsonReader reader, Type typeToConvert, JsonSerializerOptions options)
        {
            return new Reference { Value = JsonSerializer.Deserialize<Foo>(ref reader, options) };
        }

        public override void Write(Utf8JsonWriter writer, Reference value, JsonSerializerOptions options)
        {
            JsonSerializer.Serialize<Foo>(writer, value.Value, options);
        }
    }
}
