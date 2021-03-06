open Cil
open Pretty
open Unix
open Printf
module E = Errormsg

let unrollcount = ref 2
let func = ref ""
let tcFile = ref "tc.csv"
let filename = ref "random"  
let func_list = ref []
let file = "functions.txt"

let print_params () =
  E.log "#############\n";
  E.log " PARAMETERS  \n";
  E.log "#############\n";
  E.log "UNROLL COUNT: %d\n" !unrollcount; 
  E.log "FUNCTION NAME: %s\n" !func;
  E.log "TESTCASE FILE: %s\n" !tcFile;   
  ()

let get_unrollcount () =
  if !unrollcount < 1 || !unrollcount > 10 then
    unrollcount := 2


let get_func_list (f: file) =
  let functions = List.filter (
    function g -> match g with
    | GFun(_, loc) when loc.file = !filename ^ ".c" -> true
    | _ -> false
  ) f.globals
  in
  func_list := List.map (
    function g -> match g with
    | GFun(fn, _) -> fn.svar.vname
    | _ -> ""
  ) functions 
  
let printfuncinFile () =
  
  let oc = open_out file in    
  List.iter(fun f -> fprintf oc "%s\n" f;
  )!func_list;
  close_out oc    

let get_func () =
  let index = ref 0 in 
  if  "" = !func then
    begin
      E.log "\n#################################\n";
      List.iter (
        function fn ->
          E.log "%d) %s\n" !index fn;
          index := !index + 1
      ) !func_list;
      E.log "#################################\n";      
      E.log "\nEnter the function number to test : ";
      let n = read_int() in
      func := (List.nth !func_list n);
    end



let getTCFile () =
  tcFile := !filename ^ "_" ^ !func ^ "_" ^ string_of_float( time ()) ^ "tc"
      
let init (f: file) =
  E.colorFlag := true;
  get_func_list f
    
let do_param (f: file) =
  init f;
  printfuncinFile();
  get_unrollcount();
  get_func();
  getTCFile();
  print_params()
    
let feature = {
  fd_name = "Param";
  fd_enabled = ref false;
  fd_description = "Gets the parameters and stores those for later use";
  fd_extraopt = [
    "--param_unrollcount",
    Arg.String (fun s -> unrollcount := int_of_string s),
    " Number of times the loops to be unrolled";
    "--param_func",
    Arg.String (fun s -> func := s),
    " The function to be tested";
    "--param_file",
    Arg.String (fun s -> filename := s),
    " Original filename";
  ];
  fd_doit = do_param;
  fd_post_check = false
 }
