function range(start, end) {
    // newArr = [];
    if (start === end) {
        return [start];
    }

    return range(start, end - 1).push(end);


    // let list = range(start, end - 1);
    // list.push(end);
    // return list;
}

console.log(range(2, 6));


// function sumRec(arr) {

// }

// console.log()