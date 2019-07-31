function isPrime(n) {
  if( n < 2) return false;

  var rt = Math.sqrt(n), i;
  for( i=2; i<=rt; i++) {
      if( n%i == 0) {
          return false;
      }
  }
  return true;
}

function bilang(cols, rows){
  const lengData = parseFloat(cols)*parseFloat(rows)
  
  let num;
  let i = 1;
  let data = [];

  do{
    i = i + 1
    num = isPrime(i)
    if(num){
      data.push(i)
    }
  } while (data.length < lengData)
  
  let separator = [];
  for(let x=1; x < data.length; x++){
    separator.push(data[cols*x])
  }

  separator = separator.filter(s => s !== undefined)
  let output = data.toString()
  for(let y=0; y < separator.length; y++){
    let find = separator[y].toString()
    output = output.replace(find, `\n${find}`)
  } 

  return output 
}

// example
let output;
output = bilang(10, 10)
console.log(output)