use prusti_contracts::*;

#[requires(a >= b || b >= a)]
#[ensures(result == a || result == b)]
fn max(a: i32, b: i32) -> i32 {
    // if a > b {
    //     a
    // } else {
    //     b
    // }
    7
}

trait Function {
    fn domain_size(&self) -> usize;
    fn eval(&self, x: usize) -> i32;
}

fn bisect<T: Function>(f: &T, target: i32) -> Option<usize>{
    let mut low = 0;
    let mut high = f.domain_size();
    while low < high {
        let mid = (low + high) / 2;
        let mid_val = f.eval(mid);
        if mid_val < target {
            low = mid + 1;
        } else if mid_val > target{
            high = mid;
        } else{
            return Some(mid)
        }
    }
    None
}

fn main() {let _x = max(2,3);}

