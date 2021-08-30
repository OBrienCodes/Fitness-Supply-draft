import React from "react";

function WorkoutCard({ workout, handleClick}) {
  return (
    <div className="ui column">
      <div
        className="ui card"
        key={workout.id}
        onClick={() => handleClick(workout)}
      >
            <div className="header">
            <h2>{workout.name}</h2>
          </div>
        <div className="image" >
          <img alt="image" src={workout.image} />
        </div>
        
        <div className="content">
        
          <div className="meta text-wrap">
            <small>{workout.description}</small>
            <br></br>
            <button onClick>Review</button>
          </div>
        
        </div>  
     </div>
    </div>
  );
}

export default WorkoutCard;
