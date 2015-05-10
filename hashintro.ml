(* let the initial size of hashtable be 123456 *)
let my_hash = Hashtbl.create 123456;;
(* add data to my_hash *)
Hashtbl.add my_hash "h" "hello";
Hashtbl.add my_hash "h" "hi";
Hashtbl.add my_hash "h" "hug";
Hashtbl.add my_hash "h" "hard";
Hashtbl.add my_hash "w" "wimp";
Hashtbl.add my_hash "w" "world";
Hashtbl.add my_hash "w" "wine";;
(* find the last element entered that has an "h", 
 * using find_all finds all instead of just the last entered only *)
Hashtbl.find my_hash "h";;
Hashtbl.find_all my_hash "h";;
(* .remove removes the last entered element *)
Hashtbl.remove my_hash "h";;
Hashtbl.replace my_hash "h" "hank";;