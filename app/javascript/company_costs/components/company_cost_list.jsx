import React, { Component } from 'react';
import CompanyCostItem from './company_cost_item';


export default class CompanyCostList extends Component {
  render () {
    return (
     <div>
        {this.props.costs.map((cost) => {
          return <CompanyCostItem cost={cost} key={cost.id} />;
        })}
    </div>);
  }
}
