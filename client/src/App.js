//import logo from './logo.svg';
import './App.css';
import { BrowserRouter, Route, Switch } from "react-router-dom";
import LoginForm from "./Components/LoginForm";
import Homepage from "./Components/Homepage";
import Signup from "./Components/Signup";
import ReviewPage from './Components/ReviewPage';
import TextForm from './Components/TextForm';
import AboutPage from './Components/AboutPage';

function App() {
  return (
    <div className="App">
   
    <BrowserRouter>
    <Switch>
        <Route path="/signup">
          <Signup  />
        </Route>
        <Route path="/login">
          <LoginForm  />
        </Route>
        <Route path="/homepage">
          <Homepage  />
        </Route>
        <Route path="/review">
          <ReviewPage />
        </Route>
        <Route path="/text">
          <TextForm />
        </Route>
        <Route path="/about">
          <AboutPage />
        </Route>

      </Switch>
      </BrowserRouter>
    </div>
  );
}

export default App;
