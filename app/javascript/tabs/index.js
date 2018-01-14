import React from 'react';
import ReactDOM from 'react-dom';
import Tabs from './components/tabs';

const tabs = document.getElementById('tabs');
console.log(tabs);
if (tabs) {
  const tabs = JSON.parse(tabs.dataset.tabs);
  ReactDOM.render(
    <Tabs tabs={tabs} /> , tabs
    );
}
