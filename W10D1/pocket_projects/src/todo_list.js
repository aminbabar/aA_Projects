const addTodos = document.querySelector('.add-todo-form');
const todoAll = document.querySelector('.todos');
const todos = JSON.parse(localStorage.getItem('todos')) || [];

const addTodo = (e) => {
    e.preventDefault();
    const input = document.querySelector('[name=add-todo]').value;

    const todo = {
        input,
        done: false
    };

    todos.push(todo);
    populateList(todos, todoAll);
    localStorage.setItem('todos', JSON.stringify(todos));
    e.currentTarget.reset();
}

function populateList (todos, todoAll) {

    todoAll.innerHTML = todos.map((todo, idx) => {
        return`<li><label>${todo.input}</label></li>`;
    }).join('');
    // console.log(a);
}


addTodos.addEventListener('submit', addTodo);





