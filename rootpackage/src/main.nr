use package1::{self, TraitOne};
use package2::{self, TraitTwo};
use package3::{self, TraitThree};
use package4::{self, TraitFour};

fn make_diag(x : Field) -> (Field, Field, Field, Field) {
    (x, x, x, x)
}

fn main(x : pub Field) {
    let (a, b, c, d) = make_diag(x);
    let struct1 = package1::function_one(a);
    let struct2 = package2::function_two(b);
    let struct3 = package3::function_three(c);
    let struct4 = package4::function_four(d);

    let fields = (struct1.method_one(), struct2.method_two(), struct3.method_three(), struct4.method_four());

    assert_eq(fields.0, fields.1);
    assert_eq(fields.1, fields.2);
    assert_eq(fields.2, fields.3);
}
