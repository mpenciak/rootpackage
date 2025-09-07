pub type TypeTwoTwo = Field;

pub trait TraitTwoTwo {
    fn method_two_two(self) -> Field;
}

pub struct StructTwoTwo {
    x : Field
}

impl TraitTwoTwo for StructTwoTwo {
    fn method_two_two(self) -> Field {
        self.x
    }
}

pub fn function_two_two(input: Field) -> StructTwoTwo {
    StructTwoTwo { x: input }
}