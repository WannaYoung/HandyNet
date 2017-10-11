# HandyNet
网络库Networking和json映射对象库HandyJSON的封装

安装
`
cd HandyNet
carthage update --platform iOS
`
调用方法
`
NetWork.share.getDataWith(path: "", parama: [:], successHandler: { (getData: GetData) in
        }, failureHandler: { (error: NSError) in
        })
          
`
