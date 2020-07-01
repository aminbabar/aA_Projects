Array.prototype.bubbleSort = function() {
    sorted = false;

    while(!sorted) {
        sorted = true;
        // let temp;s
        for(i = 0; i < this.length; i++) {
            if (this[i] > this[i + 1]) {
                [this[i], this[i+1]] = [this[i+1], this[i]]; 
                // temp = this[i];
                // this[i] = this[i + 1];
                // this[i + 1] = temp;
                sorted = false;
                break;
            }
        }
    }

    return this;
}
 
const arr = [3, 2, 6, 7, 1];
console.log(arr.bubbleSort());

String.prototype.substrings = function()  {
    newArr = [];
    
    for (i = 0; i < this.length; i++) {
        for (j = i; j < this.length; j++) {
            newArr.push(this.slice(i, j + 1));
        }
    }
    return newArr;
}

// console.log("a".substrings());