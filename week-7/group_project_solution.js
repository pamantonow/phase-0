

function sum(numbers) {
	var total = 0;
	for (var index = 0; index < numbers.length; index ++) {
		total += numbers[index];
	}
	return total;
}


function mean(numbers) {
	var total = sum(numbers);
	var mean = (total/numbers.length);
	return mean;
}


function median(numbers) {
	var sorted = numbers.sort();
	var middleIndex = Math.round((numbers.length-1)/2);
	var middleValue = sorted[middleIndex];
	return middleValue;
}
var numbers = [1,2,3,4,5,6]

console.log(sum(numbers)== 21) ;
console.log(mean(numbers)== 3.5);
console.log(median(numbers) == 4);

//As a user I want to get  the total of a list of numbers.
//As a user I want to get the average of a list of numbers.
//As a user I want to get the middle number of a list of numbers.
