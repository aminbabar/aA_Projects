import { createStore } from 'redux';
import rootReducer from '../reducers/root_reducer';

function configureStore () {
    return createStore(rootReducer);
}
// store.dispatch method will invoke rootReducer passing in store.getState(), action

export default configureStore;