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
