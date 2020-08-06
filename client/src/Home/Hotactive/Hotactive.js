import React from 'react';
import './Hotactive.css';
import Infocard from './Infocard/Infocard'
import download from './img/download.png'
import newuser from './img/newuser.png'
import lingqu from './img/lingqu.png'

import { Carousel,Tabs,Card,Icon } from 'antd';
const { TabPane } = Tabs;



class Hotactive extends React.Component {
	constructor(props) {
	    super();
	    this.state = {
			key : "正在进行"
	    };
	}
	callback(key){
		this.setState({key});
	}
	render() {
		// <div className=""></div>
		// <span>热门活动</span>
	  return (
		<div className="Hotactive-box">
			
			<div className="Hotactive-box-content">
				<Tabs defaultActiveKey="1" onChange={(this.callback).bind(this)}>
				    <TabPane tab="正在进行" key="正在进行">
						<Infocard tag={this.state.key}/>
				    </TabPane>
				    <TabPane tab="商城特惠" key="商城特惠">
						<Infocard tag={this.state.key}/>
				    </TabPane>
				    <TabPane tab="长期活动" key="长期活动">
						<Infocard tag={this.state.key}/>
					</TabPane>
				</Tabs>
			</div>
			<div className="Hotactive-right">
				<div className="Hotactive-right-guide">
					<img className="download"  src={download} />
					<div className="twopictuer">
						<img className="newuser" src={newuser} />
						<img className="newuser" src={lingqu} />
					</div>
				</div>
				<div className="Hotactive-right-data">
					<Card hoverable bordered={false}><Icon type="customer-service" />在线客服</Card>
					<Card hoverable bordered={false}><Icon type="customer-service" />秩序殿堂</Card>
					<Card hoverable bordered={false}><Icon type="customer-service" />游戏资料</Card>
					<Card hoverable bordered={false}><Icon type="customer-service" />峡谷之巅</Card>
					<Card hoverable bordered={false}><Icon type="customer-service" />云顶之弈</Card>
					<Card hoverable bordered={false}><Icon type="customer-service" />攻略中心</Card>
					<Card hoverable bordered={false}><Icon type="customer-service" />LOL宇宙</Card>
					<Card hoverable bordered={false}><Icon type="customer-service" />微信绑定</Card>
				</div>
			</div>
		</div>
	  );
	}
}
export default Hotactive;