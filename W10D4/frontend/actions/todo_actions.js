export const RECEIVE_TODOS = "RECEIVE_TODOS";
export const RECEIVE_TODO = "RECEIVE_TODO";

export const receiveTodos = (todos) => {
  return {
    type: RECEIVE_TODOS,
    todos
  }
}

export const receiveTodo = (todo) => {
  return {
    type: RECEIVE_TODO,
    todo
  }
}



// export const addItem = (name, price) => {
//     return {
//         type: ADD_ITEMS,
//         name, // syntactic sugar for name: name, price: price
//         price,
//         key: Math.floor(Math.random() * 1000)
//     };
// };

// export const clearAll = () => {
//     return {
//         type: CLEAR_ALL
//     };
// };