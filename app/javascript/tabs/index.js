import React from 'react';
import ReactDOM from 'react-dom';
import Tabs from './components/tabs';

const tabs = document.getElementById('tabs');
if (tabs) {
  const ParsedTabs = JSON.parse(tabs.dataset.tabs);
  ReactDOM.render(
    <Tabs tabs={ParsedTabs} /> , tabs
    );
}
