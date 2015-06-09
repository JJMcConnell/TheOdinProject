/* 
The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143 ?
*/


var checkIfPrime = function(num){

	for (var i = 2; i < num; i++){
		if(num % i === 0)
			return false;
	}
	else {
		return true;
	}
};


var largestPrime = function (num) {

	var divisor = num - 1;

	while((divisor) > 1) {
		if (num % (divisor) === 0 && checkIfPrime(divisor)) {
			return divisor;
		}
		divisor--;
	}
	return num;

};

lagestPrime(2134234);