pub type TypeFour = Field;

pub trait TraitFour {
    fn method_four(self) -> Field;
}

pub struct StructFour {
    x : Field
}

impl TraitFour for StructFour {
    fn method_four(self) -> Field {
        self.x
    }
}

pub fn function_four(input: Field) -> StructFour {
    StructFour { x: input }
}

use transitive_package41::{StructFourOne, function_four_one};
use transitive_package42::{StructFourTwo, function_four_two};

pub fn construct_structs_and_return_random_four() -> Field {
    let s41 = function_four_one(1);
    let s42 = function_four_two(2);
    s41.x + s42.x
}