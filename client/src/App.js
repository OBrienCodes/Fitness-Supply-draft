import React, {useEffect, useState} from 'react';
import WorkoutsList from './WorkoutsList';
import YourWorkouts from './YourWorkouts';
import Reviews from './Reviews';
import Header from './Header';
import NavBar from './NavBar';
import { BrowserRouter as Router, Route, Switch } from 'react-router-dom';
import './App.css';

function App() {
  const [workouts, setWorkouts] = useState([])
  const [myWorkouts, setMyWorkouts] = useState([])
  const [reviews, setReviews] = useState([])
  const selectWorkout = (workout) => {
    if(myWorkouts.includes(workout)){
      alert('Already Signed Up for This Workout!')
    }else{
    const myWorkoutsList = [...myWorkouts, workout]
    setMyWorkouts(myWorkoutsList)
  }}

  const removeWorkout = (workout) => {
    const myWorkoutsList = [...myWorkouts].filter((myWorkout) => myWorkout.id !== workout.id)
    setMyWorkouts(myWorkoutsList)
  }

  useEffect(() => {
    fetch("http://localhost:3000/workouts")
      .then((resp) => resp.json())
      .then((data) => {
        setWorkouts(data);
      });
      fetch("http://localhost:3000/reviews")
      .then((resp) => resp.json())
      .then((data) => {
        setReviews(data);})
}, []);


return(
  
  <div>
    <Router>
    <NavBar />
    <Header />
      <Switch>
        <Route exact path="/workoutslist" component={
            () => <WorkoutsList workouts={workouts} handleClick={selectWorkout} />}/>
        <Route exact path="/yourworkouts" component={
          () => <YourWorkouts workouts={myWorkouts} handleClick={removeWorkout}/>}/>
          <Route exact path="/reviews" component={
            () => <Reviews reviews={reviews} />}/>
      </Switch>
    </Router>
  </div>
)
}
export default App;
