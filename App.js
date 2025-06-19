import React, { useEffect } from 'react';
import logo from './logo.svg';
import './App.css';

const BACKEND_URI = process.env.REACT_APP_BACKEND_URI;
console.log(BACKEND_URI);
const path = `${BACKEND_URI}/api/v1/seeds`;

function App() {
  useEffect(() => {
    fetch(path)
      .then(response => response.json())
      .then(json => console.log(json));
  }, []);

  return (
    <div className="App">
      <header className="App-header">
        <img src={logo} className="App-logo" alt="logo" />
        <p>
          Edit <code>src/App.js</code> and save to reload.
        </p>
        <a
          className="App-link"
          href="https://reactjs.org"
          target="_blank"
          rel="noopener noreferrer"
        >
          Learn React
        </a>
      </header>
    </div>
  );
}

export default App;
