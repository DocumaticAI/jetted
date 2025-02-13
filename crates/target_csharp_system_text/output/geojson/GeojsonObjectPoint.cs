// Code generated by jetted for C# + System.Text.Json v0.1.0

using System.Text.Json.Serialization;

namespace JettedE2E
{
    /// <summary>
    /// For type "Point", the "coordinates" member is a single position.
    /// </summary>
    public class GeojsonObjectPoint : GeojsonObject
    {
        [JsonPropertyName("type")]
        public string Type_ { get => "Point"; }

        [JsonPropertyName("coordinates")]
        public Position Coordinates { get; set; }

        [JsonPropertyName("bbox")]
        [JsonIgnore(Condition = JsonIgnoreCondition.WhenWritingDefault)]
        public BoundingBox? Bbox { get; set; }
    }
}
