import React from "react";
import { Router, Route, Link,Redirect } from "react-router-dom";
import { createHashHistory } from "history";
import Home from "../Home/Home";
import Gamedata from "../data/Gamedata";
import Heroinfo from "../Heroinfo/Heroinfo";
import Login from "../Login/Login";
import Signin from "../signin/signin";

const history = createHashHistory();

export default class App1 extends React.Component {
	constructor(props) {
	    super(props);
	}
  render() {
    return (
			<Router history={history}>
				<Route exact={true} path="/" component={Home} ></Route>
				<Route path="/gamedata" component={Gamedata} ></Route>
				<Route path="/heroinfo" component={Heroinfo} ></Route>
				<Route path="/login" component={Login} ></Route>
				<Route path="/signin" component={Signin} ></Route>
			</Router>
	  
	);
  }
}