import React from "react";
import { Provider } from "react-redux";
import App from "./app";


const Root = ({ store }) => (
    // debugger;
    <Provider store={store}>
        <App />
    </Provider>
);

export default Root;


