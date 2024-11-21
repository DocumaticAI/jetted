// Code generated by jetted for Rust v0.1.0

use serde::{Deserialize, Serialize};

#[derive(Serialize, Deserialize, Debug, Clone)]
pub struct InitialismsNestedIdInitialism {
    #[serde(rename = "json")]
    pub json: String,

    #[serde(rename = "normalword")]
    pub normalword: String,
}

#[derive(Serialize, Deserialize, Debug, Clone)]
pub struct Initialisms {
    #[serde(rename = "http")]
    pub http: String,

    #[serde(rename = "id")]
    pub id: String,

    #[serde(rename = "nested_id_initialism")]
    pub nestedIdInitialism: InitialismsNestedIdInitialism,

    #[serde(rename = "utf8")]
    pub utf8: String,

    #[serde(rename = "word_with_embedded_id_initialism")]
    pub wordWithEmbeddedIdInitialism: String,

    #[serde(rename = "word_with_trailing_initialism_id")]
    pub wordWithTrailingInitialismId: String,
}
