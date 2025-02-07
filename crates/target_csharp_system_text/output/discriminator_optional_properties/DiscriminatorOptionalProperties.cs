// Code generated by jetted for C# + System.Text.Json v0.1.0

using System;
using System.Text.Json;
using System.Text.Json.Serialization;

namespace JettedE2E
{
    [JsonConverter(typeof(DiscriminatorOptionalPropertiesJsonConverter))]
    public abstract class DiscriminatorOptionalProperties
    {
    }

    public class DiscriminatorOptionalPropertiesJsonConverter : JsonConverter<DiscriminatorOptionalProperties>
    {
        public override DiscriminatorOptionalProperties Read(ref Utf8JsonReader reader, Type typeToConvert, JsonSerializerOptions options)
        {
            var readerCopy = reader;
            var tagValue = JsonDocument.ParseValue(ref reader).RootElement.GetProperty("foo").GetString();

            switch (tagValue)
            {
                case "bar":
                    return JsonSerializer.Deserialize<DiscriminatorOptionalPropertiesBar>(ref readerCopy, options);
                default:
                    throw new ArgumentException(String.Format("Bad Foo value: {0}", tagValue));
            }
        }

        public override void Write(Utf8JsonWriter writer, DiscriminatorOptionalProperties value, JsonSerializerOptions options)
        {
            JsonSerializer.Serialize(writer, value, value.GetType(), options);
        }
    }
}
