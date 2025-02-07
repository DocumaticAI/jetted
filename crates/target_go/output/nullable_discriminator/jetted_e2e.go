// Code generated by jetted for Go v0.1.0. DO NOT EDIT.

package jetted_e2e

import (
	"encoding/json"
	"fmt"
)

type NullableDiscriminator0 struct {
	Foo string

	Bar NullableDiscriminatorBar

	Quux NullableDiscriminatorQuux
}

func (v NullableDiscriminator0) MarshalJSON() ([]byte, error) {
	switch v.Foo {
	case "bar":
		return json.Marshal(struct { T string `json:"foo"`; NullableDiscriminatorBar }{ v.Foo, v.Bar })
	case "quux":
		return json.Marshal(struct { T string `json:"foo"`; NullableDiscriminatorQuux }{ v.Foo, v.Quux })
	}

	return nil, fmt.Errorf("bad Foo value: %s", v.Foo)
}

func (v *NullableDiscriminator0) UnmarshalJSON(b []byte) error {
	var t struct { T string `json:"foo"` }
	if err := json.Unmarshal(b, &t); err != nil {
		return err
	}

	var err error
	switch t.T {
	case "bar":
		err = json.Unmarshal(b, &v.Bar)
	case "quux":
		err = json.Unmarshal(b, &v.Quux)
	default:
		err = fmt.Errorf("bad Foo value: %s", t.T)
	}

	if err != nil {
		return err
	}

	v.Foo = t.T
	return nil
}

type NullableDiscriminatorBar struct {
	Baz string `json:"baz"`
}

type NullableDiscriminatorQuux struct {
	Quuz string `json:"quuz"`
}

type NullableDiscriminator = *NullableDiscriminator0
