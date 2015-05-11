(* intro to functional programming *)

let double x = x * 2 in
  List.map double [ 1; 2; 3 ];;
(* the 'map' function is also called a higher order function,
 * that is it takes a function as an argument *)

(* here is another example that multiplies any list by any,
 * number not just 2 *)
let multiply n list = 
  let f x =
    n * x in
  List.map f list;;
(* what is happening here is the "list" is applied into f, 
 * which multiplies, an integer n, defined
 * in the "multiply" environment that "f" can access *)
