// Code generated by jetted for Go v0.1.0. DO NOT EDIT.

package jetted_e2e

type NullableReferences struct {
	NotnullRefNotnullString NotnullRefNotnullString `json:"notnull_ref_notnull_string"`

	NotnullRefNullString NotnullRefNullString `json:"notnull_ref_null_string"`

	NotnullString NotnullString `json:"notnull_string"`

	NullRefNotnullString NullRefNotnullString `json:"null_ref_notnull_string"`

	NullRefNullString NullRefNullString `json:"null_ref_null_string"`

	NullString NullString `json:"null_string"`
}

type NotnullRefNotnullString = NotnullString

type NotnullRefNullString = NullString

type NotnullString = string

type NullRefNotnullString = *NotnullString

type NullRefNullString = *NullString

type NullString = *string