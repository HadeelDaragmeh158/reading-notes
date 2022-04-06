# Purely functional programming

Purely functional programming consists of ensuring that functions, inside the functional paradigm, will only depend on their arguments, regardless of any global or local 
state. A pure functional subroutine only has visibility of changes of the state.

## Difference between pure and impure functional programming
![PureImpureFunctionsEng](https://user-images.githubusercontent.com/97829483/161892728-bbb56281-af11-4974-b824-39f3d1e5b46c.png)
but we can say, we cannot define the spacific difference becase it is a matter of controversy.

      Persistency is required for functional programming; without it, the same computation could return different results. Functional programming may use persistent 
      non-purely functional data structures, while those data structures may not be used in purely functional programs.
      
# Properties of purely functional programming

![Strict+vs+Non-Strict+Languages](https://user-images.githubusercontent.com/97829483/161893305-102ca770-7c78-463b-92ae-9a1ca69751cb.jpg)

![Two+styles_+Strict+Evaluation+Eager,+call-by-value+evaluation](https://user-images.githubusercontent.com/97829483/161893314-98896cf6-cf0a-4163-95ad-c27aa1b52452.jpg)

# Parallel computing 
basclly, is form comoutation in whitch many calculations are curred out semultaneously
its worke when two purely functional parts of the evaluation never interact.

      "In general, conversion of an imperative program to a purely functional one also requires ensuring that the formerly-mutable structures are now explicitly returned
      from functions that update them, a program structure called store-passing style."
      
## Purely functional language
 is a language which only admits purely functional programming. it can be written in languages which are not purely functional.
 
 **JAVA language** is not _pure_ language its _Impure _
 
 ## Pure
          Agda
          Clean
          Coq (Gallina)
          Cuneiform
          Curry
          Elm
          Futhark
          Haskell
          Hope
          Idris
          Joy
          Lean
          Mercury
          Miranda
          PureScript
          Ur
          KRC
          SAC
          SASL
          SequenceL
