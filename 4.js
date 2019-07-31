function check(dataKey, word){
  let isTrue;

  for(let x = 0; x < dataKey.length; x++){
    isTrue = word.search(dataKey[x])
    
    if(isTrue === -1){
      console.log(dataKey[x] + ' => ' + false)
    } else {
      console.log(dataKey[x] + ' => ' + true)
    }
  }
}

// example
const dataKey = ['out','stand','king','and']
const word = 'outstanding'
check(dataKey, word)

// another example
// note : this function is sensitive, lest try it
const dataKey1 = ['camp', 'Ways', 'ways', 'asik',  'ali', 'fata']
const word2 = 'Bootcamp DumbWays asik'
check(dataKey1, word2)
