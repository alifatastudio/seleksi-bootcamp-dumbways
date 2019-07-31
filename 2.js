/** 
 * username validator
*/
function cekUsername(input){
  const data = input.match(/^[a-z]{8}$/)
  let output;

  if(data === null){
    output = 'invalid'
  } else {
    output = 'valid'
  }

  return output
}

/**
 * password validator
 */
function cekPassword(input){
  const data = input.match(/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8}$/)
  let output;

  if(data === null){
    output = 'invalid'
  } else {
    output = 'valid'
  }

  return output
}

/**
 * email validator
 */
function cekEmail(input){
  const data = input.match(/^[a-z.]+@[a-z.]+\.[a-z]{2,4}$/)
  let output;

  if(data === null){
    output = 'invalid'
  } else {
    output = 'valid'
  }

  return output
}


// example test username
let username;
username = cekUsername('vladimir')
console.log(username)
username = cekUsername('vladimi')
console.log(username)

// example test password
let password;
password = cekPassword('jakartA5')
console.log(password)

// example test email
let email;
email = cekEmail('kukuruyuk@gmail.com')
console.log(email)
email = cekEmail('kuk.uruyuk@gmail')
console.log(email)

