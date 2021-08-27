/* JAVASCRIPT */



/*========================EJERCICIO 24 VU====================================================================== */

var foo = 1;

function bar() {
  console.log(foo); //Undefined
  if (!foo) {
    var foo = 10;
  }
  console.log(foo);
}
console.log("------ Ejercicio 24 --------");
bar();
// resultado 10






/*=========================EJERCICIO 25 VU================================================================================ */
function output(e) {
  if (e == { name: "vu" }) {
    return "vu";
  } else {
    return "security";
  }
}
console.log("------ Ejercicio 25 --------");
console.log(output({ name: "vu" }));
// Resultado "security"



function objEq(ob) {
  /***************************************************
   * ALTERNATIVA PARA DETERMINAR IGUALDAD DE OBJETOS *
   ***************************************************/
  let oj = { name: "vu" };
  let equal = "vu";
  for (let [key, val] of Object.entries(oj)) {
    if (ob.hasOwnProperty(key)) {
      if (ob[key !== val]) {
        equal = "security";
      }
    } else {
      equal = "security";
    }
    if (!equal) {
      break;
    }
  }
  return equal;
}
console.log("------ Ejercicio 25 # Alternativa # --------");
console.log(objEq({ name: "vu" }));

// Resutado "vu"







/*===============================EJERCICIO 26 VU========================================================== */

/*
setTimeout tiene un intervalo de tiempo mínimo (4ms-16ms), por lo que incluso si establece setTimeout (func, 0), no se ejecutará inmediatamente, sino después del intervalo de tiempo mínimo de 4 milisegundos.
función setTimeout 0:

Acudimos a las promesas para obtener la secuencia de numeros
*/
function fn(j) {
  let promise = new Promise((res, rej) => {
    try {
      res(
        setTimeout(() => {
          console.log('--')
          console.log(j);
        }, 0)
      );
    } catch (e) {
      throw new Error();
    }
  });
  return promise;
}

for (var i = 0; i < 4; i++) {
  setTimeout(() => console.log(i), 0);
}

console.log("------ Ejercicio 26 +  Alternativa -promises- # --------");

for (var i = 0; i < 4; i++) {
  fn(i);
}








/*==============================EJERCICIO 27 VU============================================================== */

// (function () { ... })(); EFFI

/*
IIFE (Immediately-invoked Function Expression) es una forma de ejecutar funciones de forma inmediata, tan pronto como es creada (patrón auto-ejecutable). Es una función anónima encerrada por el operador de agrupación “()”. Esto impide acceder a variables fuera del IIFE, así como afectar al scope global. Una segunda parte crea la expresión de función cuya ejecución es inmediata.
*/
/*============================================================================================================== */
