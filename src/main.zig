const std = @import("std");
const testing = std.testing;

fn fizz_buzz(input: u64) ![]const u8 {
    if(is_divisible_by_3(input) and is_divisible_by_5(input)){
        return "FizzBuzz";
    } else if(is_divisible_by_3(input)){
        return "Fizz";
    } else if(is_divisible_by_5(input)) {
        return "Buzz";
    } else {
        var buffer: [20]u8 = undefined;
        return try std.fmt.bufPrint(buffer[0..], "{d}", .{input});
    }
}

fn is_divisible_by_3(input: u64) bool {
    return input % 3 == 0;
}

fn is_divisible_by_5(input: u64) bool {
    return input % 5 == 0;
}

test "given 3 return Fizz" {
    const result = try fizz_buzz(3);
    try testing.expectEqualStrings(result, "Fizz");
}

test "given 1 return 1" {
    const result = try fizz_buzz(1);
    try testing.expectEqualStrings(result, "1");
}

test "given 2 return 2" {
    const result = try fizz_buzz(2);
    try testing.expectEqualStrings(result, "2");
}

test "given 6 return Fizz" {
    const result = try fizz_buzz(6);
    try testing.expectEqualStrings(result, "Fizz");
}

test "given 5 return Buzz" {
    const result = try fizz_buzz(5);
    try testing.expectEqualStrings(result, "Buzz");
}

test "given 10 return Buzz" {
    const result = try fizz_buzz(10);
    try testing.expectEqualStrings(result, "Buzz");
}

test "given 1000001 return 100001" {
    const result = try fizz_buzz(1000001);
    try testing.expectEqualStrings(result, "1000001");
}

test "given 15 return FizzBuzz" {
    const result = try fizz_buzz(15);
    try testing.expectEqualStrings(result, "FizzBuzz");
}

test "given 30 return FizzBuzz" {
    const result = try fizz_buzz(30);
    try testing.expectEqualStrings(result, "FizzBuzz");
}
