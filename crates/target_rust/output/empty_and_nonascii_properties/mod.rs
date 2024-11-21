// Code generated by jetted for Rust v0.1.0

use serde::{Deserialize, Serialize};

#[derive(Serialize, Deserialize, Debug, Clone)]
pub struct EmptyAndNonasciiProperties {
    #[serde(rename = "")]
    pub defaultName: String,

    #[serde(rename = "$foo")]
    pub foo: String,

    #[serde(rename = "0foo")]
    pub foo0: String,

    #[serde(rename = "_foo")]
    pub foo1: String,

    #[serde(rename = "foo\nbar")]
    pub fooBar: String,

    #[serde(rename = "foo bar")]
    pub fooBar0: String,

    #[serde(rename = "foo0bar")]
    pub foo0bar: String,

    #[serde(rename = "foo﷽bar")]
    pub fooBar1: String,
}
