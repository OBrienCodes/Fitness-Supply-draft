import React, {useState} from "react";
import WorkoutCard from "./Workoutcard";

function YourWorkouts({workouts, handleClick}) {
    return (
        <div>
            <h1> Your Workouts</h1>
            {
            workouts.map(workout => (
              <WorkoutCard key={workout.id} workout={workout} handleClick={handleClick}/>
            ))
            }
        </div>
    )
}

export default YourWorkouts;