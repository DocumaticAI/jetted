// Code generated by jetted for C# + System.Text.Json v0.1.0

using System.Text.Json.Serialization;

namespace JettedE2E
{
    public class NullableDiscriminatorBar : NullableDiscriminator
    {
        [JsonPropertyName("foo")]
        public string Foo { get => "bar"; }

        [JsonPropertyName("baz")]
        public string Baz { get; set; }
    }
}