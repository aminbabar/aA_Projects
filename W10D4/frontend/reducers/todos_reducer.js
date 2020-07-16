import {RECEIVE_TODOS, RECEIVE_TODO} from '../actions/todo_actions';
import { merge } from 'lodash';

const initialState = {
  1: {
    id: 1,
    title: "wash car",
    body: "with soap",
    done: false
  },
  2: {
    id: 2,
    title: "wash dog",
    body: "with shampoo",
    done: true
  }
};

const todosReducer = (state = initialState, action) => {
    Object.freeze(state);
    let newObj = {};
  switch (action.type) {
    case RECEIVE_TODOS:
    // return the todos from the action
        action.todos.forEach((todo) => {
            newObj[todo.id] = todo;
        });
        const newState = merge({}, newObj, state);
        return newState;
    
    case RECEIVE_TODO:
    // Make a new object setting a single key value pair for action.todo
    // Return a new state object by merging your previous state and your
    // new object
        newObj = {
            [action.todo.id]: action.todo
        }
        return Object.assign({}, newObj, state);

    default:
      return state;
  }
};

export default todosReducer;


// const newTodos = [{ id: 4, title: "1t", body: "1b", done:false }, { id: 5, title: "2t", body: "2b", done:true }];

// const todosReducer = (state = {}, action) => {
//     switch (action.type) {
        

//         default:
//             return state;
//     }
// };

// export default todosReducer;






// const inventoryReducer = (state = {}, action) => {
//     Object.freeze(state); // "please don't change me."
//     // freezing your state is for good housekeeping making it immutable.

//     // returns slice of state for inventory information 
//     switch (action.type) {
//         case ADD_ITEM:
//             const { key, price, name } = action;
//             const newItem = {
//                 [key]: { // for dynamically assigning key to newItem object
//                     name, // equivalent to name: name
//                     price,
//                     id: key
//                 }
//             };
//             const newState = merge({}, state, newItem);
//             // combining state, and newItem onto {}. creating a brand new object

//             return newState;
//         case CLEAR_ALL:
//             return {};
//         default:
//             return state;
//     }
// };

// export default inventoryReducer;