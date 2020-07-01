Array.prototype.uniq = function() {
    let newArr = [];
    for (let i = 0; i < this.length; i++) {
        if (newArr.indexOf(this[i]) === -1 ) {
            newArr.push(this[i]);
        }
    }

    return newArr;
}

Array.prototype.twoSum = function() {
    let newArr = [];

    for (let i = 0; i < this.length; i++) {
        for (let j = i + 1; j < this.length; j++) {
            if (this[i] + this[j] === 0) {
                newArr.push([i, j]);
            }
        }
    }
    return newArr;
}

/* [[1,2,3], 
    [3,4,5],
    [6,7,8]]
*/

// [[1,3,6],
//  [2,4,7],
//  [3,5,8]]


// [[1,3], [2,4]]

Array.prototype.transpose = function() {
    let newArr = [];
    for (let i = 0; i < this.length; i++) {
        newArr.push([]);
    }
    for (let i = 0; i < this.length; i++) {
        // let subArr = [];
        for (let j = 0; j < this[i].length; j++) {
            // subArr.push(this[j]);
            newArr[j].push(this[i][j]);
        } 
        // newArr.push(subArr[i]);
    }

    return newArr;
}