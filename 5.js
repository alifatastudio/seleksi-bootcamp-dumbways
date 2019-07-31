function drawLine(input){
  const data = input.split('')
  let arrayOutput = []
  for(let x = 0; x < data.length; x++){
    arrayOutput[x] = `${x===0?'':'\n'}`+' '.repeat(x)+data[x]
  }
  const output = arrayOutput.toString().replace(/,/g, '')
  return output
}

// example
const data1 = drawLine('ASIK')
console.log(data1)

const data2 = drawLine('BOOTCAMP')
console.log(data2)