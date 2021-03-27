import React, { Component } from 'react'
import {useState} from "react";
import Axios from 'axios';
import ReactDOM from 'react-dom';




    





function Filedtable() {
    const getEmployees = () => {
        Axios.get("http://localhost:3003/farms").then((response) => {
          setFarmList(response.data);
          console.log(farmlist.data);
        });
      };
    
            const[farmlist,setFarmList]=useState([]);
  
    return (
        <div>
       
        <button onClick={getEmployees}>farms</button>
        {farmlist.map((val,key)=>{
  return<div>
    <h3>Field: {val.fileds}</h3>
       
   
    </div>
})}
    </div>
    );
  }
  
  class ShowAll extends Component {
  
 
  
  render() {
    return <Filedtable />;
  }
  }
  
  
  
  
   ReactDOM.render(<ShowAll />, document.getElementById('root'));
  
  
   export default ShowAll;
  