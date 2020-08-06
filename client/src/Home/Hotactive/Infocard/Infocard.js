import React from 'react';
import './Infocard.css';
import axios from 'axios';

class Infocard extends React.Component {
	constructor(props) {
	    super();
	    //保存数据, state这个属性的名字，不能改成其它名字
	    this.state = {
	      list: []
	    };
	}
	componentDidMount(){
		let that = this;
		axios.get('http://localhost:8888/hotactive', {
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
				<div className="Infocard" key={item.id}>
					<img src={item.hot_img} />
					<span className="Infocard-fontone">{item.hot_desc}</span>
					<span className="Infocard-fonttwo">{item.hot_date}</span>
				</div>
			)
		});
		return listItems
	}
	render() {
	  return (
		<div className="Infocard-box">{this.List()}</div>
	  );
	}
}
export default Infocard;