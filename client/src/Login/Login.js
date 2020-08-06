import React from 'react';
import axios from 'axios';
import './login.css';  


class Login extends React.Component {
	constructor(props){
		super(props);
		this.state={
			username: "",
			passwd: "",
		}
	}
	login(){
		let that = this;
		axios.get('http://localhost:8888/login', {
		    params: {
				username: that.state.username,
				passwd: that.state.passwd,
		    }
		  })
		  .then(function (response) {
			sessionStorage.isLogin = true;
			that.props.history.push(`/`);
		  })
		  .catch(function (error) {
		    console.log(error);
		  });
	
	}
	toSignin(){
		this.props.history.push(`/signin`);
	}
	changename(e){
		this.setState({
			username:e.target.value
		})
	}
	changepasswd(e){
		this.setState({
			passwd:e.target.value
		})
	}
	render() {
	  return (
        <div className="box">
       <div className="email">
         <p className="word">账号</p>
         <input type="text" onChange={this.changename.bind(this)}/>
       </div>
       <div className="passwd">
         <p className="word">密码</p>
         <input type="password" onChange={this.changepasswd.bind(this)}/>
       </div>
       <button className="button" onClick={this.login.bind(this)}>登录</button>
	   <button className="button" onClick={this.toSignin.bind(this)}>注册</button>
     </div>
  );
	}
}
export default Login;