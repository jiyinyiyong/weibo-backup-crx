
An extension for backuping Weibo
------

I use this extension to navitage my pages on http://weibo.com .
And read the DOM then send data to a backgroud page,
and copy the raw JSON from the Console of the background page.
Now data has been stored here for further analyse.

### in Chinese

微博 API 备份接口只能备份 200 条, 郁闷死了, 干脆自己写一个,
模拟滚动触发加载, 从 HTML 读取数据发送到 Background, 模拟翻页的点击,
然后从 Background 的 Console 用 `copy(JSON.stringify(collection))` 导出数据.

中间可能遇到页面出错, 刷新或者手动点击下一页即可, 数据有少量丢失和重复.
我不打算继续改进插件.. 这次目标主要是导出微博上的老数据.

### License

MIT for the code, CC for the posts.