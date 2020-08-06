import React from 'react';  
import './Homehero.css'
import axios from 'axios';
import { Radio,Icon } from 'antd';


class Homehero extends React.Component {
	constructor(props) {
	    super(props);
	    this.state = {
			list : [],
			value: "",
	    };
	}
	toHeroinfo(name) {
		this.props.history.push({pathname:"/heroinfo",query: { name }});
	}
	componentDidMount(){
		let that = this;
		axios.get('http://localhost:8888/hero', {
		    params: {key: "hero"}
		  })
		  .then(function (response) {
		    that.setState({
				list : response.data
			});
		  })
		  .catch(function (error) {
		    console.log(error);
		  });
	}
	List(){
		const listItems = this.state.list.map((item) =>{
			return (
				<div className="homehero-hero" key={item.id} onClick={(this.toHeroinfo).bind(this,item.name)}>
					<img src={item.imgUrl} />
					<p className="homehero-heroname">{item.name}</p>
					<div className="homehero-hero-hover">
						<Icon type="search" />
					</div>
				</div>
			)
		});
		return listItems
	}
	onChange(e){
		let that = this;
		axios.get('http://localhost:8888/getherotag', {
		    params: {value: e.target.value}
		  })
		  .then(function (response) {
		    that.setState({
				list : response.data
			});
		  })
		  .catch(function (error) {
		    console.log(error);
		  });
	};
	render() {
	  return (
		<div className="homehero-box">
			<div className="homehero">
				<div className="homehero-top">
					<div className="home-shu"></div>
					<div className="homehero-title">英雄资料</div>
					<Radio.Group name="radiogroup" onChange={this.onChange.bind(this)} defaultValue={1}>
					      <Radio value='所有英雄'>所有英雄</Radio>
					      <Radio value='战士'>战士</Radio>
					      <Radio value='法师'>法师</Radio>
					      <Radio value='刺客'>刺客</Radio>
						  <Radio value='坦克'>坦克</Radio>
						  <Radio value='射手'>射手</Radio>
						  <Radio value='辅助'>辅助</Radio>
					</Radio.Group>
				</div>
				<div className="homehero-bottom">{this.List()}</div>
			</div>
		</div>
	  );
	}
}
export default Homehero;