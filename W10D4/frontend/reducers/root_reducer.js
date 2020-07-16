import { combineReducers } from 'redux';
import todosReducer from "./todos_reducer";



export default combineReducers({
  todos: todosReducer

});


// import { combineReducers } from 'redux';
// import inventoryReducer from "./inventory_reducer";
// import cartReducer from "./cart_reducer";
