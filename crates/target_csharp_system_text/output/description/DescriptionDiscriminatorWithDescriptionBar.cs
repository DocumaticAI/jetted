// Code generated by jetted for C# + System.Text.Json v0.1.0

using System.Text.Json.Serialization;

namespace JettedE2E
{
    /// <summary>
    /// A description for discriminator variant
    /// </summary>
    public class DescriptionDiscriminatorWithDescriptionBar : DescriptionDiscriminatorWithDescription
    {
        [JsonPropertyName("foo")]
        public string Foo { get => "bar"; }
    }
}