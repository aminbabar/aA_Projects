function addOne(num) {
    return num + 1;
}

// function multiplyTwo(num) {
//     return num * 2;
// }

Array.prototype.myEach = function(callback) {
    for (i=0; i < this.length; i++) {
        callback(this[i]);
    }
}

Array.prototype.myMap = function(myMapCallBack) {
    let newArr = [];
    
    let myEachCallBack = function (ele) { // myEach is expecting a callback. We know we are going to be working with one element at a time
        newArr.push(myMapCallBack(ele));
    }
    // anonymous function

    // let myEachCallBack => (ele) { // myEach is expecting a callback. We know we are going to be working with one element at a time
    //     newArr.push(myMapCallBack(ele));
    // }
    // fat-arrow function
    
    this.myEach(myEachCallBack);
    
    // newArr.push(this.myEach(callback));
    return newArr;
}

// [1,2,3]
// 2,3,4


Array.prototype.myReduce = function (myReduceCallBack, initialValue) {  // initialValue is optional
    // JS doesn't care how many args you pass in because even if unexpected args are passed in, it will simply ignore the additional args

    if (initialValue === undefined) {
        initialValue = this[0];
        this.shift();
        // this = this.slice(1);
    }

    let myEachCallBack = function (ele) {
        initialValue = myReduceCallBack(initialValue, ele); // implementing the elements into the callback function
    };

    this.myEach(myEachCallBack);    // invokes myEach function to later define myEachCallBack in line 46
    return initialValue;

}

function reduceCallback(acc, ele) {
    return acc + ele;
}

const arr = [1,2,3];
console.log(arr.myReduce(reduceCallback));
console.log(arr);