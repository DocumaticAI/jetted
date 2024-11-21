// Code generated by jetted for Java + Jackson v0.1.0

package com.example;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import java.time.OffsetDateTime;

@JsonSerialize
public class NullableTimestampProperty {
    @JsonProperty("foo")
    private OffsetDateTime foo;

    public NullableTimestampProperty() {
    }

    /**
     * Getter for foo.<p>
     */
    public OffsetDateTime getFoo() {
        return foo;
    }

    /**
     * Setter for foo.<p>
     */
    public void setFoo(OffsetDateTime foo) {
        this.foo = foo;
    }
}