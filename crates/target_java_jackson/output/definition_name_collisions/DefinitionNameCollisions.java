// Code generated by jetted for Java + Jackson v0.1.0

package com.example;

import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonValue;

public class DefinitionNameCollisions {
    @JsonValue
    private Foo0 value;

    public DefinitionNameCollisions() {
    }

    @JsonCreator
    public DefinitionNameCollisions(Foo0 value) {
        this.value = value;
    }

    public Foo0 getValue() {
        return value;
    }

    public void setValue(Foo0 value) {
        this.value = value;
    }
}
