import React from 'react';
import axios from 'axios';
import './signin.css';  

class signin extends React.Component {
	constructor(props){
		super(props);
		this.state={
			username: "",
			passwd: "",
			nickname: ""
		}
	}
	register(){
		if(this.state.username != "" && this.state.passwd != "" && this.state.passwd != ""){
			let that = this;
			axios.get('http://localhost:8888/register', {
			    params: {
					username: that.state.username,
					passwd: that.state.passwd,
					nickname: that.state.nickname
			    }
			  })
			  .then(function (response) {
				if(response.data.code == -1){
					alert(response.data.msg)
				}else{
					that.props.history.push(`/`);
				}
			  })
			  .catch(function (error) {
			    console.log(error);
			  });
		}else{
			alert("请输入内容")
		}
	
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
	changenickname(e){
		this.setState({
			nickname:e.target.value
		})
	}
	render() {
	  return (
        <div className="box">
        <div className="name">
             <p className="word">名字</p>
          <input type="text" onChange={this.changenickname.bind(this)}/>
        </div>
        <div className="email">
             <p className="word">账号</p>
          <input type="text" onChange={this.changename.bind(this)}/>
        </div>
        <div className="passwd">
             <p className="word">密码</p>
          <input type="text" onChange={this.changepasswd.bind(this)}/>
        </div>
        <button className="button" onClick={this.register.bind(this)}>创建账户</button>
      </div>
  );
	}
}
export default signin;