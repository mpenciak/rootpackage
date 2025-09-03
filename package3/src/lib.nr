pub type TypeThree = Field;

pub trait TraitThree {
    fn method_three(self) -> Field;
}

pub struct StructThree {
    x : Field
}

impl TraitThree for StructThree {
    fn method_three(self) -> Field {
        self.x
    }
}

pub fn function_three(input: Field) -> StructThree {
    StructThree { x: input }
}
