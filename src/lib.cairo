pub fn add (left:usize, right:usize)->usize{
    left + right
}

fn sum_n(n: usize) -> usize {
    let mut i = 0;
    let mut sum = 0;
    while i <= n {
        sum += i;
        i += 1;
    };
    sum
}


#[cfg(test)]
mod tests {
    use super::add;
    use super::sum_n;

    #[test]
    fn it_works() {
        let result = add(2,2);
        assert_eq!(result, 4);
    }

    #[test]
    #[should_panic(expected: ("This should fail",))]
    fn it_not_works_should_panic() {
        let result = add(2,2);
        assert!(result == 6, "This should fail");
    }

    #[test]
    fn it_should_be_different() {
        let result = add(2,2);
        assert_ne!(result, 6, "This values are equal");
    }

    #[test]
    #[available_gas(54170)]
    fn find_match_With_loops() {
        let result = sum_n(10);
        assert!(result == 55, "result is not 55");
    }


}