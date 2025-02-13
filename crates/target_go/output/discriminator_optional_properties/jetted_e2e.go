// Code generated by jetted for Go v0.1.0. DO NOT EDIT.

package jetted_e2e

import (
	"encoding/json"
	"fmt"
)

type DiscriminatorOptionalProperties struct {
	Foo string

	Bar DiscriminatorOptionalPropertiesBar
}

func (v DiscriminatorOptionalProperties) MarshalJSON() ([]byte, error) {
	switch v.Foo {
	case "bar":
		return json.Marshal(struct { T string `json:"foo"`; DiscriminatorOptionalPropertiesBar }{ v.Foo, v.Bar })
	}

	return nil, fmt.Errorf("bad Foo value: %s", v.Foo)
}

func (v *DiscriminatorOptionalProperties) UnmarshalJSON(b []byte) error {
	var t struct { T string `json:"foo"` }
	if err := json.Unmarshal(b, &t); err != nil {
		return err
	}

	var err error
	switch t.T {
	case "bar":
		err = json.Unmarshal(b, &v.Bar)
	default:
		err = fmt.Errorf("bad Foo value: %s", t.T)
	}

	if err != nil {
		return err
	}

	v.Foo = t.T
	return nil
}

type DiscriminatorOptionalPropertiesBar struct {
	Baz []string `json:"baz,omitempty"`

	Quux *bool `json:"quux,omitempty"`
}
