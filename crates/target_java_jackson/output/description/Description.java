// Code generated by jetted for Java + Jackson v0.1.0

package com.example;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;

@JsonSerialize
public class Description {
    @JsonProperty("discriminator_with_description")
    private DescriptionDiscriminatorWithDescription discriminatorWithDescription;

    @JsonProperty("enum_with_description")
    private DescriptionEnumWithDescription enumWithDescription;

    @JsonProperty("long_description")
    private String longDescription;

    @JsonProperty("properties_with_description")
    private DescriptionPropertiesWithDescription propertiesWithDescription;

    @JsonProperty("ref_with_description")
    private Baz refWithDescription;

    @JsonProperty("string_with_description")
    private String stringWithDescription;

    public Description() {
    }

    /**
     * Getter for discriminatorWithDescription.<p>
     * A description for discriminator
     */
    public DescriptionDiscriminatorWithDescription getDiscriminatorWithDescription() {
        return discriminatorWithDescription;
    }

    /**
     * Setter for discriminatorWithDescription.<p>
     * A description for discriminator
     */
    public void setDiscriminatorWithDescription(DescriptionDiscriminatorWithDescription discriminatorWithDescription) {
        this.discriminatorWithDescription = discriminatorWithDescription;
    }

    /**
     * Getter for enumWithDescription.<p>
     * A description for enum
     */
    public DescriptionEnumWithDescription getEnumWithDescription() {
        return enumWithDescription;
    }

    /**
     * Setter for enumWithDescription.<p>
     * A description for enum
     */
    public void setEnumWithDescription(DescriptionEnumWithDescription enumWithDescription) {
        this.enumWithDescription = enumWithDescription;
    }

    /**
     * Getter for longDescription.<p>
     * Whereas disregard and contempt for human rights have resulted in
     * barbarous acts which have outraged the conscience of mankind, and the
     * advent of a world in which human beings shall enjoy freedom of speech and
     * belief and freedom from fear and want has been proclaimed as the highest
     * aspiration of the common people,
     */
    public String getLongDescription() {
        return longDescription;
    }

    /**
     * Setter for longDescription.<p>
     * Whereas disregard and contempt for human rights have resulted in
     * barbarous acts which have outraged the conscience of mankind, and the
     * advent of a world in which human beings shall enjoy freedom of speech and
     * belief and freedom from fear and want has been proclaimed as the highest
     * aspiration of the common people,
     */
    public void setLongDescription(String longDescription) {
        this.longDescription = longDescription;
    }

    /**
     * Getter for propertiesWithDescription.<p>
     * A description for properties
     */
    public DescriptionPropertiesWithDescription getPropertiesWithDescription() {
        return propertiesWithDescription;
    }

    /**
     * Setter for propertiesWithDescription.<p>
     * A description for properties
     */
    public void setPropertiesWithDescription(DescriptionPropertiesWithDescription propertiesWithDescription) {
        this.propertiesWithDescription = propertiesWithDescription;
    }

    /**
     * Getter for refWithDescription.<p>
     * A description for ref
     */
    public Baz getRefWithDescription() {
        return refWithDescription;
    }

    /**
     * Setter for refWithDescription.<p>
     * A description for ref
     */
    public void setRefWithDescription(Baz refWithDescription) {
        this.refWithDescription = refWithDescription;
    }

    /**
     * Getter for stringWithDescription.<p>
     * A description for string
     */
    public String getStringWithDescription() {
        return stringWithDescription;
    }

    /**
     * Setter for stringWithDescription.<p>
     * A description for string
     */
    public void setStringWithDescription(String stringWithDescription) {
        this.stringWithDescription = stringWithDescription;
    }
}