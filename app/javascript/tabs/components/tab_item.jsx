import React, { Component } from 'react';

export default class TabItem extends Component {
  render() {
    let active;
    const tabName  = `{this.props.tab.title[0]} this.props.tab.title[1]}`
    const activeTab = `{this.props.tab.active}`
    console.log(tabName);
    console.log(activeTab);

    if (tabName === activeTab) {
      active = "active"
    }
    return (
      <a className="tab {active}`"  href="#">
        <h3>{this.props.tab.title[0]}</h3>
        <h3>{this.props.tab.title[1]}</h3>
      </a>
    );
  }
}
