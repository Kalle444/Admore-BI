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



// export default class ProductList extends Component {
//   render() {
//     return (
//       <div>
//         {this.props.products.map((product) => {
//           return <ProductListItem product={product} key={product.id} />;
//         })}
//       </div>);
//   }
// }
