pub type TypeFourTwo = Field;

pub trait TraitFourTwo {
    fn method_four_two(self) -> Field;
}

pub struct StructFourTwo {
    x : Field
}

impl TraitFourTwo for StructFourTwo {
    fn method_four_two(self) -> Field {
        self.x
    }
}

pub fn function_four_two(input: Field) -> StructFourTwo {
    StructFourTwo { x: input }
}