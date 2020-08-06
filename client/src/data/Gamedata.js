import React from 'react';
import axios from 'axios';
import './Gamedata.css';
import runesUrl from "./img/runesAll.png";

import { Tabs } from 'antd';

const { TabPane } = Tabs;


class Gamedata extends React.Component {
	constructor(props){
		super(props);
		this.state={
			hero:[],
			item:[],
			more:[]
		}
	}
	callback(key){
		let that = this;
		axios.get('http://localhost:8888/hero', {
			params:{
				key:key
			}
		  })
		  .then(function (response) {
		    that.setState({
				item : response.data,
			});
		  })
		  .catch(function (error) {
		    console.log(error);
		  });
	}
	clicked(id){
		let that = this;
		that.setState({
			id:id
		});
		console.log("id"+id);
		console.log("more"+this.item);
		// that.more=that.item[id-1];
	}
	componentDidMount(){
		let that = this;
		axios.get('http://localhost:8888/hero', {
		    params: {
		      key: "hero"
		    }
		  })
		  .then(function (response) {
		    that.setState({
				hero : response.data,
			});
		  })
		  .catch(function (error) {
		    console.log(error);
		  });
	}
	toHeroinfo(name) {
		this.props.history.push({pathname:"/heroinfo",query: { name }});
	}
	render() {
		return (
			<div className="Gamedata">
				<Tabs defaultActiveKey="1" onChange={(this.callback).bind(this)}>
					<TabPane tab="英雄" key="hero" className="hero">
					<div className="hero-item">
					{
             		this.state.hero.map((v, i) => (
                 		<div className="hero-item-item" key={i} onClick={(this.toHeroinfo).bind(this,v.name)}>
								<img src={v.imgUrl}/>
								<div></div>
                                <span className='title'>{v.name}</span>
                            </div>
                        ))
                    }
                    </div>
    				</TabPane>
					<TabPane tab="物品" key="item">
					<div className="hero-item">
					{
             		this.state.item.map((v, i) => (
                 		<div className="hero-item-item" key={i}>
								<img src={v.imgUrl}/>
								<div></div>
                                <span className='title'>{v.name}</span>
                            </div>
                        ))
                    }
                    </div>
    				</TabPane>
					<TabPane tab="召唤师技能" key="skill">
						<div className="skill">
							<div className="skill-left">
									{
									this.state.item.map((v, i) => (
										<div className="left-item" key={i} onClick={(this.clicked).bind(this)}>
												<img src={v.imgUrl} className="left-img"/>
												<span className='title'>{v.name}</span>
										</div>
										))
									}
							</div>
							<div className="skill-right">
							{
								<div className="skillRight">
									<div className="right-item">
										<img src="//ossweb-img.qq.com/images/lol/img/spell/SummonerBarrier.png"/* {this.state.more.imgUrl} */ className="right-img"/>
										<div className="right-title-right">
											<span className='right-title'>屏障{/* {this.state.more.name} */}</span>
											<span className="right-grade">召唤师等级：1级</span>
										</div>
									</div>
									<p className="skill-introduce">为你的英雄吧啦吧啦</p>
									<img src="//ossweb-img.qq.com/images/lol/web201310/summoner/21.jpg" className="skill-right-introimg"/>
								</div>

							}
							</div>
						</div>
    				</TabPane>
					<TabPane tab="符文" key="runes">
						<div className="runes">
							<img src={runesUrl} className="runes-box"/>
							<img src="//lol.qq.com/act/a20170926preseason/img/runeBuilder/assets/Precision/vfx-p.png" className="hover1"/>
							<img src="//lol.qq.com/act/a20170926preseason/img/runeBuilder/assets/Domination/vfx-d.png" className="hover2"/>
							<img src="//lol.qq.com/act/a20170926preseason/img/runeBuilder/assets/Sorcery/vfx-s.png" className="hover3"/>
							<img src="//lol.qq.com/act/a20170926preseason/img/runeBuilder/assets/Resolve/vfx-r.png" className="hover4"/>
							<img src="//lol.qq.com/act/a20170926preseason/img/runeBuilder/assets/Inspiration/vfx-i.png" className="hover5"/>
						</div>
    				</TabPane>
				</Tabs>
			</div>
		);
	}
}
export default Gamedata;