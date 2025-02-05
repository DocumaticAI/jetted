// Code generated by jetted for TypeScript v0.2.0

/**
 * A description for discriminator
 */
export type DescriptionDiscriminatorWithDescription = DescriptionDiscriminatorWithDescriptionBar;

/**
 * A description for discriminator variant
 */
export interface DescriptionDiscriminatorWithDescriptionBar {
  foo: "bar";
}

/**
 * A description for enum
 */
export type DescriptionEnumWithDescription =
  /**
   * A description for X
   */
  | "X"

  /**
   * A description for Y
   */
  | "Y"

  /**
   * A description for Z
   */
  | "Z"

/**
 * A description for properties
 */
export interface DescriptionPropertiesWithDescription {
}

export interface Description {
  /**
   * A description for discriminator
   */
  discriminator_with_description: DescriptionDiscriminatorWithDescription;

  /**
   * A description for enum
   */
  enum_with_description: DescriptionEnumWithDescription;

  /**
   * Whereas disregard and contempt for human rights have resulted in barbarous
   * acts which have outraged the conscience of mankind, and the advent of a
   * world in which human beings shall enjoy freedom of speech and belief and
   * freedom from fear and want has been proclaimed as the highest aspiration of
   * the common people,
   */
  long_description: string;

  /**
   * A description for properties
   */
  properties_with_description: DescriptionPropertiesWithDescription;

  /**
   * A description for ref
   */
  ref_with_description: Baz;

  /**
   * A description for string
   */
  string_with_description: string;
}

/**
 * A description for a definition
 */
export type Baz = string;
