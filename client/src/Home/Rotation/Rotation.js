import React from 'react';  
import './Rotation.css';
import Comprehensive from './Comprehensive/Comprehensive'; 

import { Carousel,Tabs } from 'antd';
const { TabPane } = Tabs;

class Rotation extends React.Component {
	constructor(props){
	    super();
	    this.state={
			key: '公告',
	    }
	}
	callback(key){
		if(key == "综合") key = "公告";
		this.setState({key})
	}
	render() {
	  return (
		<div className="comprehensive">
			<div className="rotation-box">
				<Carousel autoplay>
				    <div>
				      <img src="https://ossweb-img.qq.com/upload/adw/image/20191115/dbf77f60688a97e981e88170a6250be6.jpeg" />
				    </div>
				    <div>
				      <img src="https://ossweb-img.qq.com/upload/adw/image/20191126/524cc574d12f13d34b9c871ac0f97d42.jpeg" />
				    </div>
				    <div>
				      <img src="https://ossweb-img.qq.com/upload/adw/image/20191121/be3e76d5f1665559c6c4b3c9d23fa13d.jpeg" />
				    </div>
				    <div>
				      <img src="https://ossweb-img.qq.com/upload/adw/image/20191126/0d13d16415053c33cca7c9b3df6a0610.jpeg" />
				    </div>
					<div>
					  <img src="https://ossweb-img.qq.com/upload/adw/image/20191126/8db79c73d28b468ea13c065973534c18.jpeg" />
					</div>
				  </Carousel>
			</div>
			
			<div className="comprehensive-right">
				<Tabs defaultActiveKey="1" onChange={(this.callback).bind(this)}>
				    <TabPane tab="综合" key="综合">
				      <Comprehensive tag={this.state.key}></Comprehensive>
				    </TabPane>
				    <TabPane tab="公告" key="公告">
				      <Comprehensive tag={this.state.key}></Comprehensive>
				    </TabPane>
				    <TabPane tab="赛事" key="赛事">
				      <Comprehensive tag={this.state.key}></Comprehensive>
				    </TabPane>
					<TabPane tab="攻略" key="新闻">
					  <Comprehensive tag={this.state.key}></Comprehensive>
					</TabPane>
					<TabPane tab="社区" key="娱乐">
					  <Comprehensive tag={this.state.key}></Comprehensive>
					</TabPane>
				</Tabs>
			
			</div>
		</div>
	  );
	}
}
export default Rotation;