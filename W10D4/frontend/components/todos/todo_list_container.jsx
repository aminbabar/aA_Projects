import {connect} from 'react-redux';
// import {connect} from 'react-redux';
import TodoList from './todo_list';
import allTodos from '../../reducers/selectors';
import {RECEIVE_TODO} from '../../actions/todo_actions'


const mapStateToProps = state => ({
    todos: allTodos(state)
});

const mapDispatchToProps = dispatch => ({
    receiveTodo: todo => {
        debugger;
        return dispatch(RECEIVE_TODO(todo))
    }
});

export default connect(
    mapStateToProps,
    mapDispatchToProps
)(TodoList);