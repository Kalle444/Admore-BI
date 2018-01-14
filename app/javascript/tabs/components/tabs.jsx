import React, { Component } from 'react';
import TabItem from './tab_item';


export default class Tabs extends Component {
  render () {
    return (
     <div className="tabs">
        {this.props.tabs.map((tab) => {
          return <TabItem tab={tab} key={tab.id} />;
        })}
    </div>);
  }
}
