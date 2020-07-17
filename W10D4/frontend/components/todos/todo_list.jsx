import React from 'react';
import TodoListItem from '../todo_list/todo_list_item';
import TodoForm from '../todo_list/todo_form';


class ToDoList extends React.Component {
  constructor(props) {
    // debugger;
    super(props);
  }

  render() {

    let todos = this.props.todos.map((todo, idx) => {
      return <ul key={idx}><TodoListItem todo={todo} /></ul>
    });

    debugger;
    return (
      <div>
        {todos}
        <TodoForm receiveTodo={receiveTodo}/>
      </div>

    )

  }

}

export default ToDoList;
