from dataclasses import dataclass
from enum import Enum
from typing import Any, Optional, Union, get_args, get_origin
def _from_json(cls, data):
    if data is None or cls in [bool, int, float, str] or cls is Any:
        return data
    if get_origin(cls) is Union:
        return _from_json(get_args(cls)[0], data)
    if get_origin(cls) is list:
        return [_from_json(get_args(cls)[0], d) for d in data]
    if get_origin(cls) is dict:
        return { k: _from_json(get_args(cls)[1], v) for k, v in data.items() }
    return cls.from_json(data)

def _to_json(data):
    if data is None or type(data) in [bool, int, float, str]:
        return data
    if type(data) is list:
        return [_to_json(d) for d in data]
    if type(data) is dict:
        return { k: _to_json(v) for k, v in data.items() }
    return data.to_json()
class Root0(Enum):
    BAR = "Bar"
    BAZ = "Baz"
    FOO = "Foo"
    @classmethod
    def from_json(cls, data) -> "Root0":
         return Root0(data)
    def to_json(self):
        return self.value
@dataclass
class Root:
    value: "Optional[Root0]"
    @classmethod
    def from_json(cls, data) -> "Root":
        return Root(_from_json(Optional[Root0], data))
    def to_json(self):
        return _to_json(self.value)