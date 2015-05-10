module SS = Set.Make(String);;
(* now create empty set, then singleton with single element "hello" *)
let s = SS.empty;;
let s = SS.singleton "hello";;
(* now add in more elements, then create a print function, and print all
 * elements in the set
 *)
let s =
    List.fold_right SS.add ["hello"; "world"; "community"; "manager";
                            "stuff"; "blue"; "green"] s;;
let print_set s = 
     SS.iter print_endline s;;
print_set s;;
(* now to remove several elements at once, use a filter function *)
let my_filter str =
    String.length str <= 5;;
let s2 = SS.filter my_filter s;;
(* same result in one line *)
let s2 = SS.filter (fun str -> String.length str <= 5) s;;
(* see if an element is inside *)
SS.mem	"hello" s2;;
(* the set module also has a difference function *)
print_set (SS.diff s s2);;