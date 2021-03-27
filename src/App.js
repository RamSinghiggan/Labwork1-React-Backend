import React,{Component} from "react";
import { render } from "react-dom";
import './App.css';
import ShowAll from "/Users/apple/myLabwork1/client/farm/src/components/ShowAll.js";
import ShowPrice from "/Users/apple/myLabwork1/client/farm/src/components/ShowPrice.js";
import ShowVeg from "/Users/apple/myLabwork1/client/farm/src/components/ShowVeg.js";
function App() {
  return (
    <div className="App">
      <header className="App-header">
       <ShowAll/>
       <ShowPrice/>
       <ShowVeg/>

      </header>
    </div>
  );
}

export default App;
