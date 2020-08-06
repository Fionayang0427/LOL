import React from 'react';  
import './Recommend.css'
import axios from 'axios';

class Recommend extends React.Component {
	constructor(props) {
	    super();
	    this.state = {
			list : []
	    };
	}
	componentDidMount(){
		let that = this;
		axios.get('http://localhost:8888/newintr', {
		    params: {}
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
				<div className="Recommend-left-info" key={item.id}>
					<span>{item.new_tag}</span>
					<p className="Recommend-left-lines">{item.new_desc}</p>
					<p className="Recommend-left-hero">{item.new_name}</p>
					<img src={item.new_img} />
				</div>
			)
		});
		return listItems
	}
	render() {
	  return (
		<div className="Recommend">
			<div className="Recommend-left">{this.List()}</div>
			<div className="Recommend-right">
				<div className="edition">
					<img className="edition-first" src="//img.crawler.qq.com/lolwebschool/0/JAutoCMS_LOLWeb_0776c7e04de8aa29387debab675240ce/0" />
					<img src="//img.crawler.qq.com/lolwebschool/0/JAutoCMS_LOLWeb_234dcc7fd6a409a7bb907c7420eab757/0" />
				</div>
				<div className="edition-right">
					<img src="//img.crawler.qq.com/lolwebschool/0/JAutoCMS_LOLWeb_a0d7e659ad3856ec2480050f113999d2/0" />
					<div className="edition-free">周免</div>
				</div>
			</div>
		</div>
	  );
	}
}
export default Recommend;