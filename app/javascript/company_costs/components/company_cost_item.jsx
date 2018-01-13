import React, { Component } from 'react';

export default class CompanyCostItem extends Component {
  render() {
    return (
      <div className="company-cost-item">
        <h3> {this.props.cost.name}</h3>
        <h3> {this.props.cost.amount}</h3>
        <h3> {this.props.cost.start_date} - </h3>
        <h3> {this.props.cost.end_date}</h3>
        <h3> Admore AB </h3>
      </div>
    );
  }
}


// export default class ProductListItem extends Component {
//   render() {
//     return (
//       <div className="product">
//         <div className="product-upvote">TODO</div>
//         <div className="product-body">
//           <h3>
//             <a href={this.props.product.url} target="_blank">{this.props.product.name}</a>
//           </h3>
//           <p>{this.props.product.tagline}</p>
//         </div>
//         <div className="product-controls">
//           <img src={this.props.product.user.avatar_url} className="avatar" />
//         </div>
//       </div>);
//   }
// }
