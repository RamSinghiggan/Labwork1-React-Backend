import React, { Component } from 'react'
import {useState} from "react";
import Axios from 'axios';
import ReactDOM from 'react-dom';




    





function Filedtable() {
    const getEmployees = () => {
        Axios.get("http://localhost:3003/farmprice").then((response) => {
          setFarmList(response.data);
          console.log(farmlist.data);
        });
      };
    
            const[farmlist,setFarmList]=useState([]);
  
    return (
        <div>
       
        <button onClick={getEmployees}>Price</button>
        {farmlist.map((val,key)=>{
  return<div>
    
    <h3>vegetable :{val.veg} </h3>
    <h4>Price :{val.price} /kg</h4>
       
   
    </div>
})}
    </div>
    );
  }
  
  class ShowPrice extends Component {
  
 
  
  render() {
    return <Filedtable />;
  }
  }
  
  
  
  
   ReactDOM.render(<ShowPrice/>, document.getElementById('root'));
  
  
   export default ShowPrice;
  