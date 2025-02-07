// Code generated by jetted for Rust v0.2.0

use serde::{Deserialize, Serialize};

#[derive(Serialize, Deserialize, Debug, Clone, PartialEq, Eq, PartialOrd, Ord, Hash)]
pub enum EnumCollisionsFooBar {
    #[serde(rename = "x")]
    X,

    #[serde(rename = "y")]
    Y,
}

#[derive(Serialize, Deserialize, Debug, Clone, PartialEq, Eq, PartialOrd, Ord, Hash)]
pub struct EnumCollisionsFoo {
    #[serde(rename = "bar")]
    pub bar: EnumCollisionsFooBar,
}

#[derive(Serialize, Deserialize, Debug, Clone, PartialEq, Eq, PartialOrd, Ord, Hash)]
pub enum EnumCollisionsFooBar0 {
    #[serde(rename = "x")]
    X,

    #[serde(rename = "y")]
    Y,
}

#[derive(Serialize, Deserialize, Debug, Clone, PartialEq, Eq, PartialOrd, Ord, Hash)]
pub struct EnumCollisions {
    #[serde(rename = "foo")]
    pub foo: EnumCollisionsFoo,

    #[serde(rename = "foo_bar")]
    pub foo_bar: EnumCollisionsFooBar0,
}
