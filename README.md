# ThinkPHP5 微信支付扩展库（2017年9月24日）

## 使用说明
- 在默认配置情况下，将文件夹**拷贝到根目录**即可, 其中<code>extend</code>目录为扩展目录
- 需要在配置文件<code>extend/wxpay/lib/WxPayConfig.php</code>中填写必要的参数
- 如有退款操作, 请将证书放到<code>extend/wxpay/cert/</code>目录中
- <code>application/index/Example.php</code>为示例代码

## 注意
- 错误采用抛出异常的方式, 可根据自己的业务在统一接口<code>extend/wxpay/lib/WxPayException.php</code>中修改
- 上线后, 请务必将配置中的<code>WXPAY_DEBUG</code>改为<code>false</code>
- <code>公众号支付、wap支付</code>, 由于我们公司是在小程序上开通的微信支付, 无法完美的测试, 只能采用模拟数据形式, 如有问题, 请提交issue

## 用法
#### 扫码支付
调用<code>\wxpay\NativePay::getPayImage($params)</code>即可

#### 小程序支付([流程讲解](http://blog.csdn.net/diannaodashen/article/details/78075049))
调用<code>\wxpay\JsapiPay::getPayParams($params, $code)</code>即可
<p>或</p>
调用<code>\wxpay\JsapiPay::getParams($params, $openId)</code>即可

#### 公众号支付
调用<code>\wxpay\JsapiPay::getPayParams($params)</code>即可

#### H5支付(wap支付)
调用<code>\wxpay\WapPay::getPayUrl($params, $redirect_url)</code>即可

#### 订单查询
调用<code>\wxpay\Query::exec($query_no)</code>即可

#### 下载对账单
调用<code>\wxpay\DownloadBill::exec($date, $type)</code>即可

#### 退款(需证书)
调用<code>\wxpay\Refund::exec($params)</code>即可

#### 退款查询
调用<code>\wxpay\RefundQuery::exec($query_no)</code>即可

#### 异步通知处理类([通知详解](http://blog.csdn.net/diannaodashen/article/details/78075297))
<pre><code>$notify = new \wxpay\Notify();
$notify->Handle();
</code></pre>