// Code generated by jetted for Java + Jackson v0.1.0

package com.example;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;

@JsonSerialize
public class NullableDiscriminatorQuux extends NullableDiscriminator {
    @JsonProperty("quuz")
    private String quuz;

    public NullableDiscriminatorQuux() {
    }

    /**
     * Getter for quuz.<p>
     */
    public String getQuuz() {
        return quuz;
    }

    /**
     * Setter for quuz.<p>
     */
    public void setQuuz(String quuz) {
        this.quuz = quuz;
    }
}