import React from 'react';  
import './Comprehensive.css';
import axios from 'axios';
class Comprehensive extends React.Component {
	constructor(props) {
	    super();
	    this.state = {
			list : []
	    };
	}
	componentDidMount(){
		let that = this;
		axios.get('http://localhost:8888/notice', {
		    params: {
				key: this.props.tag
		    }
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
					<li key={item.id}>
						<div className="comprehensive-tag">{item.tag}</div>
						<span className="comprehensive-content">{item.brief_introduction}</span>
						<div className="comprehensive-date">{item.date}</div>
					</li>
				)
	        });
	        return listItems;
	}
	render() {
	  return (
		<div className="comprehensive-box">
			<div className="comprehensive-title">9.23版本更新公告: 元素崛起降临峡谷</div>
			<ul>{this.List()}</ul>
		</div>
	  );
	}
}
export default Comprehensive;