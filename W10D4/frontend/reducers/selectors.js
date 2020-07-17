


const allTodos = (state) => {

    let keys = Object.keys(state.todos);
    // debugger;
    let todo_ids = keys.map ((ele, idx) => {
        // debugger;
        return state.todos[ele];
    });

    return todo_ids;
}

export default allTodos;


