// Code generated by jetted for C# + System.Text.Json v0.1.0

using System.Text.Json.Serialization;

namespace JettedE2E
{
    public class TypeCollisions
    {
        [JsonPropertyName("foo")]
        public TypeCollisionsFoo Foo { get; set; }

        [JsonPropertyName("foo_bar")]
        public TypeCollisionsFooBar0 FooBar { get; set; }
    }
}