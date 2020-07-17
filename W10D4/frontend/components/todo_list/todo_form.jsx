import React from "react";
import uniqueId from '../../util/util';

class TodoForm extends React.Component {
    constructor(props) {
        super(props);
        // this.state = {id: "", title: "", body: "", done: ""};
      this.state = { id: "", title: "", body: "", done: false};
      this.handleSubmit = this.handleSubmit.bind(this);
      this.update = this.update.bind(this);      
    }

    handleSubmit(e) {
        e.preventDefault(); // preventing from browser to refresh
        // debugger;
        const { id, title, body, done } = this.state;
        debugger;
        this.props.receiveTodo({id, title, body, done});
    }

    update(field) {
        return e => {
            this.setState({ [field]: e.target.value });
        };
    }


    render() {
        return (
            <form className="add-form" onSubmit={this.handleSubmit}>
                <label>
                    Title
            <input
                        type="text"
                        onChange={this.update("title")}
                        value={this.state.title}
                    />
                </label>
                <label>
                    Body
            <input
                        type="text"
                        onChange={this.update("body")}
                        value={this.state.body}
                    />
                </label>
            <input type="submit" value="Add New Todo" />
            </form>
        )
    }

}


export default TodoForm;