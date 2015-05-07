(* create a map *)
module MyUsers = Map.Make(String);;
(* MyUsers module created, to let it be empty: *)
let m = MyUsers.empty;;
(* to add some real data: *)
let m = MyUsers.add "Alan" "alanpassword" m;;
(* after the previous step, the module takes only strings to strings,
 * adding a few more user and passwords: 
 *)
let m = MyUsers.add "Dan" "danpassword" m;;
let m = MyUsers.add "Tom" "tompassword" m;;
let m = MyUsers.add "Alex" "alexpassword" m;;
(* To view the data inside the map do this: *)
let print_users key password =
	print_string(key ^ " " ^ password ^ "\n");;
(* Notice the previous is just a function to do the printing 
 * so now we apply the function to the mapping
 *)
MyUsers.iter print_users m;;
(* To quickly find our data in a map do this: *)
MyUsers.find "Tom" m;;