import React, { Component } from 'react'
import {useState} from "react";
import Axios from 'axios';
import ReactDOM from 'react-dom';




    





function Filedtable() {
    const getEmployees = () => {
        Axios.get("http://localhost:3003/farmveg").then((response) => {
          setFarmList(response.data);
          console.log(farmlist.data);
        });
      };
    
            const[farmlist,setFarmList]=useState([]);
  
    return (
        <div>
       
        <button onClick={getEmployees}>Veg</button>
        {farmlist.map((val,key)=>{
  return<div>
    <h3>vegetable :{val.vegetables}</h3>
    <h4>Amount :{val.amount} Kg</h4>
    <h4>Field :{val.farmfiled} </h4>
       
   
    </div>
})}
    </div>
    );
  }
  
  class ShowVeg extends Component {
  
 
  
  render() {
    return <Filedtable />;
  }
  }
  
  
  
  
   ReactDOM.render(<ShowVeg/>, document.getElementById('root'));
  
  
   export default ShowVeg;
  