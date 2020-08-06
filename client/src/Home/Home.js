import React from 'react';  
// import { Link } from "react-router-dom";
import './Home.css'
import Nav from './Nav/Nav';
import Rotation from './Rotation/Rotation';
import Hotactive from './Hotactive/Hotactive';
import Recommend from './Recommend/Recommend';
import Homehero from './Homehero/Homehero';

class Home extends React.Component {
	// toFirst() {
	// 	this.props.history.push("/first");
	// }
	// toSecond() {
	// 	// this.props.history.push(`/second/12`);
	// 	let myid = "小明";
	// 	this.props.history.push(`/second/${myid}`);
	// }
	// toThree() {
	// 	this.props.history.push({pathname:"/three", query:{id:100, name:'史相云'}});
	// }
	render() {
	  return (
		<div className="home">
			<div id="home-box">
				<Nav history={this.props.history}></Nav>
			</div>
			<Rotation />
			<Hotactive />
			<Recommend />
			<Homehero history={this.props.history}/>
		</div>
	  );
	}
}
export default Home;