import React from 'react';
import { Link } from "react-router-dom";
import './Nav.css';  
import { Icon } from 'antd';


class Nav extends React.Component {
	constructor(props) {
	    super(props);
	    this.state = {
			list : [],
			login: "亲爱的召唤师,请登录"
	    };
	}
	toLogin(){
		this.props.history.push(`/login`);
	}
	componentDidMount(){
		if(sessionStorage.isLogin){
			this.setState({
				login : "已登陆"
			});
		}
	}
	render() {
	  return (
		<div className="nav">
			<Link to={`/`}>
				<img className="nav-logo" src="https://game.gtimg.cn/images/lol/v3/logo-public.png"/>
			</Link>
			<div className="nav-fontbox">
				<div className="nav-linkbox">
					<Link to={`/gamedata`}><div className="nav-font">游戏资料</div></Link>
					<span className="nav-eng">GAME INFO</span>
				</div>
				<div className="nav-linkbox">
					<div className="nav-font">商城/合作</div>
					<span className="nav-eng">GAME INFO</span>
				</div>
				<div className="nav-linkbox">
					<div className="nav-font">社区互动</div>
					<span className="nav-eng">COMMUNITY</span>
				</div>
				<div className="nav-linkbox">
					<div className="nav-font">赛事官网</div>
					<span className="nav-eng">ESPORTS</span>
				</div>
				<div className="nav-linkbox">
					<div className="nav-font">自助系统</div>
					<span className="nav-eng">SYSTEM</span>
				</div>
			</div>
			<div>
				<img className="userimg" src="//game.gtimg.cn/images/lol/v2/personal/avatar/default.png"/>
				<span className="honey" onClick={this.toLogin.bind(this)}>{this.state.login}</span>
			</div>
		</div>
	  );
	}
}
export default Nav;