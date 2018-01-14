import React, { Component } from 'react';

export default class TabItem extends Component {
  render() {
    //Checking if the tab is the active one by comparing the parsed :active with the tab name
    let active;
    const tabName  = (`${this.props.tab.title[0]} ${this.props.tab.title[1]}`);
    const activeTab = this.props.tab.active;
    if (tabName === activeTab) {
      active = "active"
    } else {
      active = ""
    };
    // if active adding this to className
    return (
        <a className={"tab" + " " + active}  href="#">
          <h3>{this.props.tab.title[0]}</h3>
          <h3>{this.props.tab.title[1]}</h3>
        </a>
    );
  }
}

