import React from 'react';
import ReactDOM from 'react-dom';
import App from './App';
import Counter from "../src/containers/Counter"

it('renders without crashing', () => {
  const div = document.createElement('div');
  ReactDOM.render(<App />, div);
});
it('renders without crashing', () => {
  const div = document.createElement('div');
  ReactDOM.render(<Counter />, div);
});
