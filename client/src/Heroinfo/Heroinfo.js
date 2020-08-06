import React from 'react';
import { Link } from "react-router-dom";
import axios from 'axios';
import './Heroinfo.css';

import { Icon,Progress,Divider} from 'antd';

class Heroinfo extends React.Component {
	constructor(props){
		super(props);
		this.state={
			// heroname: props.location.state.name,
			heroinfo: [],
			useone: [],
			usetwo: []
		}
	}
	componentDidMount(){
		let that = this;
		axios.get('http://localhost:8888/heroinfo', {
		    params: {
		      heroname: that.props.location.query.name
		    }
		  })
		  .then(function (response) {
			let useone = response.data[0].useone.split("-");
			let usetwo = response.data[0].usetwo.split("-");
		    that.setState({
				heroinfo : response.data[0],
				useone,
				usetwo
			});
		  })
		  .catch(function (error) {
		    console.log(error);
		  });
	}
	callback(){
		
	}
	render() {
		return (
			<div className="Heroinfo">
				<div className="hero-title">
					<Icon type="home" />
					<Link to="/"><span> 英雄联盟首页 </span></Link>
					<Icon type="right" />
					<Link to="/gamedata"><span>  游戏资料  </span></Link>
					<Icon type="right" />
					<Link to="/gamedata"><span>  全部英雄  </span></Link>
					<Icon type="right" />
					<span className="hero-title-name">  {this.state.heroinfo.name1} {this.state.heroinfo.name2} </span>
				</div>
				<div className="hero-info">
					<img src={this.state.heroinfo.hero_img}/>
					<div className="hero-infomation">
						<h1>{this.state.heroinfo.name1}</h1>
						<p>{this.state.heroinfo.name2}</p>
						<div className="hero-tag">{this.state.heroinfo.tag}</div>
						<div className="hero-defail">
						    物理攻击<Progress percent={Number(this.state.heroinfo.physics)} showInfo={false} strokeColor="#f2c500"/>
							魔法攻击<Progress percent={Number(this.state.heroinfo.magic)} showInfo={false} strokeColor="#f59d00"/>
							防御能力<Progress percent={Number(this.state.heroinfo.defense)} showInfo={false} strokeColor="#2c97de"/>
							上手难度<Progress percent={Number(this.state.heroinfo.difficulty)} showInfo={false} strokeColor="#1eca6b"/>
						</div>
						<div className="hero-buy"></div>
					</div>
				</div>
				
				<h4>背景故事</h4>
				
				<div className="hero-story colbox">{this.state.heroinfo.story}</div>
				
				<h4>技能介绍</h4>
				
				<div className="hero-skill colbox">
					
				
				</div>
				
				<h4>使用技巧</h4>
				
				<div className="hero-technic colbox">
					<h4 className="hero-technic-title">当你使用黑暗之女</h4>
					<p>- {this.state.useone[1]}</p>
					<p>- {this.state.useone[2]}</p>
					<p>- {this.state.useone[3]}</p>
					<Divider />
					<h4 className="hero-technic-title">敌人使用黑暗之女</h4>
					<p>- {this.state.usetwo[1]}</p>
					<p>- {this.state.usetwo[2]}</p>
					<p>- {this.state.usetwo[3]}</p>
				</div>
				
			</div>
		);
	}
}
export default Heroinfo;