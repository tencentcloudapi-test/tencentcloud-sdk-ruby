# frozen_string_literal: true

# Copyright (c) 2017-2018 THL A29 Limited, a Tencent company. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

module TencentCloud
  module Iotexplorer
    module V20190423
      # 云api直接绑定设备出参
      class AppDeviceInfo < TencentCloud::Common::AbstractModel
        # @param DeviceId: 产品ID/设备名
        # @type DeviceId: String
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param DeviceName: 设备名
        # @type DeviceName: String
        # @param AliasName: 设备别名
        # @type AliasName: String
        # @param IconUrl: icon地址
        # @type IconUrl: String
        # @param FamilyId: 家庭ID
        # @type FamilyId: String
        # @param RoomId: 房间ID
        # @type RoomId: String
        # @param DeviceType: 设备类型
        # @type DeviceType: Integer
        # @param CreateTime: 创建时间
        # @type CreateTime: Integer
        # @param UpdateTime: 更新时间
        # @type UpdateTime: Integer

        attr_accessor :DeviceId, :ProductId, :DeviceName, :AliasName, :IconUrl, :FamilyId, :RoomId, :DeviceType, :CreateTime, :UpdateTime
        
        def initialize(deviceid=nil, productid=nil, devicename=nil, aliasname=nil, iconurl=nil, familyid=nil, roomid=nil, devicetype=nil, createtime=nil, updatetime=nil)
          @DeviceId = deviceid
          @ProductId = productid
          @DeviceName = devicename
          @AliasName = aliasname
          @IconUrl = iconurl
          @FamilyId = familyid
          @RoomId = roomid
          @DeviceType = devicetype
          @CreateTime = createtime
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @DeviceId = params['DeviceId']
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @AliasName = params['AliasName']
          @IconUrl = params['IconUrl']
          @FamilyId = params['FamilyId']
          @RoomId = params['RoomId']
          @DeviceType = params['DeviceType']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
        end
      end

      # 获取返回列表的详情。
      class BatchProductionInfo < TencentCloud::Common::AbstractModel
        # @param BatchProductionId: 量产ID
        # @type BatchProductionId: String
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param BurnMethod: 烧录方式
        # @type BurnMethod: Integer
        # @param CreateTime: 创建时间
        # @type CreateTime: Integer
        # @param ProductName: 产品名称
        # @type ProductName: String

        attr_accessor :BatchProductionId, :ProductId, :BurnMethod, :CreateTime, :ProductName
        
        def initialize(batchproductionid=nil, productid=nil, burnmethod=nil, createtime=nil, productname=nil)
          @BatchProductionId = batchproductionid
          @ProductId = productid
          @BurnMethod = burnmethod
          @CreateTime = createtime
          @ProductName = productname
        end

        def deserialize(params)
          @BatchProductionId = params['BatchProductionId']
          @ProductId = params['ProductId']
          @BurnMethod = params['BurnMethod']
          @CreateTime = params['CreateTime']
          @ProductName = params['ProductName']
        end
      end

      # BindDeviceInfo
      class BindDeviceInfo < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID。
        # @type ProductId: String
        # @param DeviceName: 设备名称。
        # @type DeviceName: String

        attr_accessor :ProductId, :DeviceName
        
        def initialize(productid=nil, devicename=nil)
          @ProductId = productid
          @DeviceName = devicename
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
        end
      end

      # BindDevices请求参数结构体
      class BindDevicesRequest < TencentCloud::Common::AbstractModel
        # @param GatewayProductId: 网关设备的产品ID。
        # @type GatewayProductId: String
        # @param GatewayDeviceName: 网关设备的设备名。
        # @type GatewayDeviceName: String
        # @param ProductId: 被绑定设备的产品ID。
        # @type ProductId: String
        # @param DeviceNames: 被绑定的多个设备名。
        # @type DeviceNames: Array

        attr_accessor :GatewayProductId, :GatewayDeviceName, :ProductId, :DeviceNames
        
        def initialize(gatewayproductid=nil, gatewaydevicename=nil, productid=nil, devicenames=nil)
          @GatewayProductId = gatewayproductid
          @GatewayDeviceName = gatewaydevicename
          @ProductId = productid
          @DeviceNames = devicenames
        end

        def deserialize(params)
          @GatewayProductId = params['GatewayProductId']
          @GatewayDeviceName = params['GatewayDeviceName']
          @ProductId = params['ProductId']
          @DeviceNames = params['DeviceNames']
        end
      end

      # BindDevices返回参数结构体
      class BindDevicesResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # 绑定、未绑定产品详细信息
      class BindProductInfo < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID。
        # @type ProductId: String
        # @param ProductName: 产品名称。
        # @type ProductName: String
        # @param ProjectId: 产品所属项目ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectId: String
        # @param DataProtocol: 物模型类型。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataProtocol: Integer
        # @param CategoryId: 产品分组模板ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CategoryId: Integer
        # @param ProductType: 产品类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProductType: Integer
        # @param NetType: 连接类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NetType: String
        # @param DevStatus: 状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DevStatus: String

        attr_accessor :ProductId, :ProductName, :ProjectId, :DataProtocol, :CategoryId, :ProductType, :NetType, :DevStatus
        
        def initialize(productid=nil, productname=nil, projectid=nil, dataprotocol=nil, categoryid=nil, producttype=nil, nettype=nil, devstatus=nil)
          @ProductId = productid
          @ProductName = productname
          @ProjectId = projectid
          @DataProtocol = dataprotocol
          @CategoryId = categoryid
          @ProductType = producttype
          @NetType = nettype
          @DevStatus = devstatus
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @ProductName = params['ProductName']
          @ProjectId = params['ProjectId']
          @DataProtocol = params['DataProtocol']
          @CategoryId = params['CategoryId']
          @ProductType = params['ProductType']
          @NetType = params['NetType']
          @DevStatus = params['DevStatus']
        end
      end

      # BindProducts请求参数结构体
      class BindProductsRequest < TencentCloud::Common::AbstractModel
        # @param GatewayProductId: 网关产品ID。
        # @type GatewayProductId: String
        # @param ProductIds: 待绑定的子产品ID数组。
        # @type ProductIds: Array

        attr_accessor :GatewayProductId, :ProductIds
        
        def initialize(gatewayproductid=nil, productids=nil)
          @GatewayProductId = gatewayproductid
          @ProductIds = productids
        end

        def deserialize(params)
          @GatewayProductId = params['GatewayProductId']
          @ProductIds = params['ProductIds']
        end
      end

      # BindProducts返回参数结构体
      class BindProductsResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # CallDeviceActionAsync请求参数结构体
      class CallDeviceActionAsyncRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品Id
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param ActionId: 产品数据模板中行为功能的标识符，由开发者自行根据设备的应用场景定义
        # @type ActionId: String
        # @param InputParams: 输入参数
        # @type InputParams: String

        attr_accessor :ProductId, :DeviceName, :ActionId, :InputParams
        
        def initialize(productid=nil, devicename=nil, actionid=nil, inputparams=nil)
          @ProductId = productid
          @DeviceName = devicename
          @ActionId = actionid
          @InputParams = inputparams
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @ActionId = params['ActionId']
          @InputParams = params['InputParams']
        end
      end

      # CallDeviceActionAsync返回参数结构体
      class CallDeviceActionAsyncResponse < TencentCloud::Common::AbstractModel
        # @param ClientToken: 调用Id
        # @type ClientToken: String
        # @param Status: 异步调用状态
        # @type Status: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ClientToken, :Status, :RequestId
        
        def initialize(clienttoken=nil, status=nil, requestid=nil)
          @ClientToken = clienttoken
          @Status = status
          @RequestId = requestid
        end

        def deserialize(params)
          @ClientToken = params['ClientToken']
          @Status = params['Status']
          @RequestId = params['RequestId']
        end
      end

      # CallDeviceActionSync请求参数结构体
      class CallDeviceActionSyncRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品Id
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param ActionId: 产品数据模板中行为功能的标识符，由开发者自行根据设备的应用场景定义
        # @type ActionId: String
        # @param InputParams: 输入参数
        # @type InputParams: String

        attr_accessor :ProductId, :DeviceName, :ActionId, :InputParams
        
        def initialize(productid=nil, devicename=nil, actionid=nil, inputparams=nil)
          @ProductId = productid
          @DeviceName = devicename
          @ActionId = actionid
          @InputParams = inputparams
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @ActionId = params['ActionId']
          @InputParams = params['InputParams']
        end
      end

      # CallDeviceActionSync返回参数结构体
      class CallDeviceActionSyncResponse < TencentCloud::Common::AbstractModel
        # @param ClientToken: 调用Id
        # @type ClientToken: String
        # @param OutputParams: 输出参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OutputParams: String
        # @param Status: 返回状态，当设备不在线等部分情况，会通过该 Status 返回。
        # @type Status: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ClientToken, :OutputParams, :Status, :RequestId
        
        def initialize(clienttoken=nil, outputparams=nil, status=nil, requestid=nil)
          @ClientToken = clienttoken
          @OutputParams = outputparams
          @Status = status
          @RequestId = requestid
        end

        def deserialize(params)
          @ClientToken = params['ClientToken']
          @OutputParams = params['OutputParams']
          @Status = params['Status']
          @RequestId = params['RequestId']
        end
      end

      # ControlDeviceData请求参数结构体
      class ControlDeviceDataRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param Data: 属性数据, JSON格式字符串, 注意字段需要在物模型属性里定义
        # @type Data: String
        # @param Method: 请求类型 , 不填该参数或者 desired 表示下发属性给设备,  reported 表示模拟设备上报属性
        # @type Method: String
        # @param DeviceId: 设备ID，该字段有值将代替 ProductId/DeviceName , 通常情况不需要填写
        # @type DeviceId: String
        # @param DataTimestamp: 上报数据UNIX时间戳(毫秒), 仅对Method:reported有效
        # @type DataTimestamp: Integer

        attr_accessor :ProductId, :DeviceName, :Data, :Method, :DeviceId, :DataTimestamp
        
        def initialize(productid=nil, devicename=nil, data=nil, method=nil, deviceid=nil, datatimestamp=nil)
          @ProductId = productid
          @DeviceName = devicename
          @Data = data
          @Method = method
          @DeviceId = deviceid
          @DataTimestamp = datatimestamp
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @Data = params['Data']
          @Method = params['Method']
          @DeviceId = params['DeviceId']
          @DataTimestamp = params['DataTimestamp']
        end
      end

      # ControlDeviceData返回参数结构体
      class ControlDeviceDataResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回信息
        # @type Data: String
        # @param Result: JSON字符串， 返回下发控制的结果信息,
        # Sent = 1 表示设备已经在线并且订阅了控制下发的mqtt topic
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :Result, :RequestId
        
        def initialize(data=nil, result=nil, requestid=nil)
          @Data = data
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # CreateBatchProduction请求参数结构体
      class CreateBatchProductionRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param BurnMethod: 烧录方式，0为直接烧录，1为动态注册。
        # @type BurnMethod: Integer
        # @param GenerationMethod: 生成方式，0为系统生成，1为文件上传。
        # @type GenerationMethod: Integer
        # @param UploadUrl: 文件上传URL，用于文件上传时填写。
        # @type UploadUrl: String
        # @param BatchCnt: 量产数量，用于系统生成时填写。
        # @type BatchCnt: Integer
        # @param GenerationQRCode: 是否生成二维码,0为不生成，1为生成。
        # @type GenerationQRCode: Integer

        attr_accessor :ProjectId, :ProductId, :BurnMethod, :GenerationMethod, :UploadUrl, :BatchCnt, :GenerationQRCode
        
        def initialize(projectid=nil, productid=nil, burnmethod=nil, generationmethod=nil, uploadurl=nil, batchcnt=nil, generationqrcode=nil)
          @ProjectId = projectid
          @ProductId = productid
          @BurnMethod = burnmethod
          @GenerationMethod = generationmethod
          @UploadUrl = uploadurl
          @BatchCnt = batchcnt
          @GenerationQRCode = generationqrcode
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @ProductId = params['ProductId']
          @BurnMethod = params['BurnMethod']
          @GenerationMethod = params['GenerationMethod']
          @UploadUrl = params['UploadUrl']
          @BatchCnt = params['BatchCnt']
          @GenerationQRCode = params['GenerationQRCode']
        end
      end

      # CreateBatchProduction返回参数结构体
      class CreateBatchProductionResponse < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目Id
        # @type ProjectId: String
        # @param ProductId: 产品Id
        # @type ProductId: String
        # @param BatchProductionId: 量产id
        # @type BatchProductionId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ProjectId, :ProductId, :BatchProductionId, :RequestId
        
        def initialize(projectid=nil, productid=nil, batchproductionid=nil, requestid=nil)
          @ProjectId = projectid
          @ProductId = productid
          @BatchProductionId = batchproductionid
          @RequestId = requestid
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @ProductId = params['ProductId']
          @BatchProductionId = params['BatchProductionId']
          @RequestId = params['RequestId']
        end
      end

      # CreateDevice请求参数结构体
      class CreateDeviceRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID。
        # @type ProductId: String
        # @param DeviceName: 设备名称。命名规则：[a-zA-Z0-9:_-]{1,48}。
        # @type DeviceName: String
        # @param DevAddr: LoRaWAN 设备地址
        # @type DevAddr: String
        # @param AppKey: LoRaWAN 应用密钥
        # @type AppKey: String
        # @param DevEUI: LoRaWAN 设备唯一标识
        # @type DevEUI: String
        # @param AppSKey: LoRaWAN 应用会话密钥
        # @type AppSKey: String
        # @param NwkSKey: LoRaWAN 网络会话密钥
        # @type NwkSKey: String
        # @param DefinedPsk: 手动指定设备的PSK密钥
        # @type DefinedPsk: String

        attr_accessor :ProductId, :DeviceName, :DevAddr, :AppKey, :DevEUI, :AppSKey, :NwkSKey, :DefinedPsk
        
        def initialize(productid=nil, devicename=nil, devaddr=nil, appkey=nil, deveui=nil, appskey=nil, nwkskey=nil, definedpsk=nil)
          @ProductId = productid
          @DeviceName = devicename
          @DevAddr = devaddr
          @AppKey = appkey
          @DevEUI = deveui
          @AppSKey = appskey
          @NwkSKey = nwkskey
          @DefinedPsk = definedpsk
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @DevAddr = params['DevAddr']
          @AppKey = params['AppKey']
          @DevEUI = params['DevEUI']
          @AppSKey = params['AppSKey']
          @NwkSKey = params['NwkSKey']
          @DefinedPsk = params['DefinedPsk']
        end
      end

      # CreateDevice返回参数结构体
      class CreateDeviceResponse < TencentCloud::Common::AbstractModel
        # @param Data: 设备参数描述。
        # @type Data: :class:`Tencentcloud::Iotexplorer.v20190423.models.DeviceData`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DeviceData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateFenceBind请求参数结构体
      class CreateFenceBindRequest < TencentCloud::Common::AbstractModel
        # @param FenceId: 围栏Id
        # @type FenceId: Integer
        # @param Items: 围栏绑定的产品列表
        # @type Items: Array

        attr_accessor :FenceId, :Items
        
        def initialize(fenceid=nil, items=nil)
          @FenceId = fenceid
          @Items = items
        end

        def deserialize(params)
          @FenceId = params['FenceId']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              fencebindproductitem_tmp = FenceBindProductItem.new
              fencebindproductitem_tmp.deserialize(i)
              @Items << fencebindproductitem_tmp
            end
          end
        end
      end

      # CreateFenceBind返回参数结构体
      class CreateFenceBindResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # CreateLoRaFrequency请求参数结构体
      class CreateLoRaFrequencyRequest < TencentCloud::Common::AbstractModel
        # @param FreqName: 频点配置名称
        # @type FreqName: String
        # @param ChannelsDataUp: 数据上行信道
        # @type ChannelsDataUp: Array
        # @param ChannelsDataRX1: 数据下行RX1信道
        # @type ChannelsDataRX1: Array
        # @param ChannelsDataRX2: 数据下行RX2信道
        # @type ChannelsDataRX2: Array
        # @param ChannelsJoinUp: 入网上行信道
        # @type ChannelsJoinUp: Array
        # @param ChannelsJoinRX1: 入网下行RX1信道
        # @type ChannelsJoinRX1: Array
        # @param ChannelsJoinRX2: 入网下行RX2信道
        # @type ChannelsJoinRX2: Array
        # @param Description: 频点配置描述
        # @type Description: String

        attr_accessor :FreqName, :ChannelsDataUp, :ChannelsDataRX1, :ChannelsDataRX2, :ChannelsJoinUp, :ChannelsJoinRX1, :ChannelsJoinRX2, :Description
        
        def initialize(freqname=nil, channelsdataup=nil, channelsdatarx1=nil, channelsdatarx2=nil, channelsjoinup=nil, channelsjoinrx1=nil, channelsjoinrx2=nil, description=nil)
          @FreqName = freqname
          @ChannelsDataUp = channelsdataup
          @ChannelsDataRX1 = channelsdatarx1
          @ChannelsDataRX2 = channelsdatarx2
          @ChannelsJoinUp = channelsjoinup
          @ChannelsJoinRX1 = channelsjoinrx1
          @ChannelsJoinRX2 = channelsjoinrx2
          @Description = description
        end

        def deserialize(params)
          @FreqName = params['FreqName']
          @ChannelsDataUp = params['ChannelsDataUp']
          @ChannelsDataRX1 = params['ChannelsDataRX1']
          @ChannelsDataRX2 = params['ChannelsDataRX2']
          @ChannelsJoinUp = params['ChannelsJoinUp']
          @ChannelsJoinRX1 = params['ChannelsJoinRX1']
          @ChannelsJoinRX2 = params['ChannelsJoinRX2']
          @Description = params['Description']
        end
      end

      # CreateLoRaFrequency返回参数结构体
      class CreateLoRaFrequencyResponse < TencentCloud::Common::AbstractModel
        # @param Data: LoRa频点信息
        # @type Data: :class:`Tencentcloud::Iotexplorer.v20190423.models.LoRaFrequencyEntry`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = LoRaFrequencyEntry.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateLoRaGateway请求参数结构体
      class CreateLoRaGatewayRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: LoRa 网关Id
        # @type GatewayId: String
        # @param Name: 网关名称
        # @type Name: String
        # @param Description: 详情描述
        # @type Description: String
        # @param Location: 位置坐标
        # @type Location: :class:`Tencentcloud::Iotexplorer.v20190423.models.LoRaGatewayLocation`
        # @param Position: 位置信息
        # @type Position: String
        # @param PositionDetails: 位置详情
        # @type PositionDetails: String
        # @param IsPublic: 是否公开
        # @type IsPublic: Boolean
        # @param FrequencyId: 频点ID
        # @type FrequencyId: String

        attr_accessor :GatewayId, :Name, :Description, :Location, :Position, :PositionDetails, :IsPublic, :FrequencyId
        
        def initialize(gatewayid=nil, name=nil, description=nil, location=nil, position=nil, positiondetails=nil, ispublic=nil, frequencyid=nil)
          @GatewayId = gatewayid
          @Name = name
          @Description = description
          @Location = location
          @Position = position
          @PositionDetails = positiondetails
          @IsPublic = ispublic
          @FrequencyId = frequencyid
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @Name = params['Name']
          @Description = params['Description']
          unless params['Location'].nil?
            @Location = LoRaGatewayLocation.new
            @Location.deserialize(params['Location'])
          end
          @Position = params['Position']
          @PositionDetails = params['PositionDetails']
          @IsPublic = params['IsPublic']
          @FrequencyId = params['FrequencyId']
        end
      end

      # CreateLoRaGateway返回参数结构体
      class CreateLoRaGatewayResponse < TencentCloud::Common::AbstractModel
        # @param Gateway: LoRa 网关信息
        # @type Gateway: :class:`Tencentcloud::Iotexplorer.v20190423.models.LoRaGatewayItem`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Gateway, :RequestId
        
        def initialize(gateway=nil, requestid=nil)
          @Gateway = gateway
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Gateway'].nil?
            @Gateway = LoRaGatewayItem.new
            @Gateway.deserialize(params['Gateway'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreatePositionFence请求参数结构体
      class CreatePositionFenceRequest < TencentCloud::Common::AbstractModel
        # @param SpaceId: 位置空间Id
        # @type SpaceId: String
        # @param FenceName: 围栏名称
        # @type FenceName: String
        # @param FenceArea: 围栏区域信息，采用 GeoJSON 格式
        # @type FenceArea: String
        # @param FenceDesc: 围栏描述
        # @type FenceDesc: String

        attr_accessor :SpaceId, :FenceName, :FenceArea, :FenceDesc
        
        def initialize(spaceid=nil, fencename=nil, fencearea=nil, fencedesc=nil)
          @SpaceId = spaceid
          @FenceName = fencename
          @FenceArea = fencearea
          @FenceDesc = fencedesc
        end

        def deserialize(params)
          @SpaceId = params['SpaceId']
          @FenceName = params['FenceName']
          @FenceArea = params['FenceArea']
          @FenceDesc = params['FenceDesc']
        end
      end

      # CreatePositionFence返回参数结构体
      class CreatePositionFenceResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # CreatePositionSpace请求参数结构体
      class CreatePositionSpaceRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param SpaceName: 空间名称
        # @type SpaceName: String
        # @param AuthorizeType: 授权类型，0：只读 1：读写
        # @type AuthorizeType: Integer
        # @param ProductIdList: 产品列表
        # @type ProductIdList: Array
        # @param Description: 描述
        # @type Description: String
        # @param Icon: 缩略图
        # @type Icon: String

        attr_accessor :ProjectId, :SpaceName, :AuthorizeType, :ProductIdList, :Description, :Icon
        
        def initialize(projectid=nil, spacename=nil, authorizetype=nil, productidlist=nil, description=nil, icon=nil)
          @ProjectId = projectid
          @SpaceName = spacename
          @AuthorizeType = authorizetype
          @ProductIdList = productidlist
          @Description = description
          @Icon = icon
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @SpaceName = params['SpaceName']
          @AuthorizeType = params['AuthorizeType']
          @ProductIdList = params['ProductIdList']
          @Description = params['Description']
          @Icon = params['Icon']
        end
      end

      # CreatePositionSpace返回参数结构体
      class CreatePositionSpaceResponse < TencentCloud::Common::AbstractModel
        # @param SpaceId: 空间Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SpaceId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SpaceId, :RequestId
        
        def initialize(spaceid=nil, requestid=nil)
          @SpaceId = spaceid
          @RequestId = requestid
        end

        def deserialize(params)
          @SpaceId = params['SpaceId']
          @RequestId = params['RequestId']
        end
      end

      # CreateProject请求参数结构体
      class CreateProjectRequest < TencentCloud::Common::AbstractModel
        # @param ProjectName: 项目名称
        # @type ProjectName: String
        # @param ProjectDesc: 项目描述
        # @type ProjectDesc: String
        # @param InstanceId: 实例ID，不带实例ID，默认为公共实例
        # @type InstanceId: String

        attr_accessor :ProjectName, :ProjectDesc, :InstanceId
        
        def initialize(projectname=nil, projectdesc=nil, instanceid=nil)
          @ProjectName = projectname
          @ProjectDesc = projectdesc
          @InstanceId = instanceid
        end

        def deserialize(params)
          @ProjectName = params['ProjectName']
          @ProjectDesc = params['ProjectDesc']
          @InstanceId = params['InstanceId']
        end
      end

      # CreateProject返回参数结构体
      class CreateProjectResponse < TencentCloud::Common::AbstractModel
        # @param Project: 返回信息
        # @type Project: :class:`Tencentcloud::Iotexplorer.v20190423.models.ProjectEntry`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Project, :RequestId
        
        def initialize(project=nil, requestid=nil)
          @Project = project
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Project'].nil?
            @Project = ProjectEntry.new
            @Project.deserialize(params['Project'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateStudioProduct请求参数结构体
      class CreateStudioProductRequest < TencentCloud::Common::AbstractModel
        # @param ProductName: 产品名称，名称不能和已经存在的产品名称重复。命名规则：[a-zA-Z0-9:_-]{1,32}
        # @type ProductName: String
        # @param CategoryId: 产品分组模板ID , ( 自定义模板填写1 , 控制台调用会使用预置的其他ID)
        # @type CategoryId: Integer
        # @param ProductType: 产品类型 填写 ( 0 普通产品 )
        # @type ProductType: Integer
        # @param EncryptionType: 加密类型 加密类型，1表示证书认证，2表示签名认证。
        # @type EncryptionType: String
        # @param NetType: 连接类型 可以填写 wifi cellular else
        # @type NetType: String
        # @param DataProtocol: 数据协议 (1 使用物模型 2 为自定义)
        # @type DataProtocol: Integer
        # @param ProductDesc: 产品描述
        # @type ProductDesc: String
        # @param ProjectId: 产品的项目ID
        # @type ProjectId: String

        attr_accessor :ProductName, :CategoryId, :ProductType, :EncryptionType, :NetType, :DataProtocol, :ProductDesc, :ProjectId
        
        def initialize(productname=nil, categoryid=nil, producttype=nil, encryptiontype=nil, nettype=nil, dataprotocol=nil, productdesc=nil, projectid=nil)
          @ProductName = productname
          @CategoryId = categoryid
          @ProductType = producttype
          @EncryptionType = encryptiontype
          @NetType = nettype
          @DataProtocol = dataprotocol
          @ProductDesc = productdesc
          @ProjectId = projectid
        end

        def deserialize(params)
          @ProductName = params['ProductName']
          @CategoryId = params['CategoryId']
          @ProductType = params['ProductType']
          @EncryptionType = params['EncryptionType']
          @NetType = params['NetType']
          @DataProtocol = params['DataProtocol']
          @ProductDesc = params['ProductDesc']
          @ProjectId = params['ProjectId']
        end
      end

      # CreateStudioProduct返回参数结构体
      class CreateStudioProductResponse < TencentCloud::Common::AbstractModel
        # @param Product: 产品描述
        # @type Product: :class:`Tencentcloud::Iotexplorer.v20190423.models.ProductEntry`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Product, :RequestId
        
        def initialize(product=nil, requestid=nil)
          @Product = product
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Product'].nil?
            @Product = ProductEntry.new
            @Product.deserialize(params['Product'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateTopicPolicy请求参数结构体
      class CreateTopicPolicyRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param TopicName: Topic名称
        # @type TopicName: String
        # @param Privilege: Topic权限，1发布，2订阅，3订阅和发布
        # @type Privilege: Integer

        attr_accessor :ProductId, :TopicName, :Privilege
        
        def initialize(productid=nil, topicname=nil, privilege=nil)
          @ProductId = productid
          @TopicName = topicname
          @Privilege = privilege
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @TopicName = params['TopicName']
          @Privilege = params['Privilege']
        end
      end

      # CreateTopicPolicy返回参数结构体
      class CreateTopicPolicyResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # CreateTopicRule请求参数结构体
      class CreateTopicRuleRequest < TencentCloud::Common::AbstractModel
        # @param RuleName: 规则名称
        # @type RuleName: String
        # @param TopicRulePayload: 规则内容
        # @type TopicRulePayload: :class:`Tencentcloud::Iotexplorer.v20190423.models.TopicRulePayload`

        attr_accessor :RuleName, :TopicRulePayload
        
        def initialize(rulename=nil, topicrulepayload=nil)
          @RuleName = rulename
          @TopicRulePayload = topicrulepayload
        end

        def deserialize(params)
          @RuleName = params['RuleName']
          unless params['TopicRulePayload'].nil?
            @TopicRulePayload = TopicRulePayload.new
            @TopicRulePayload.deserialize(params['TopicRulePayload'])
          end
        end
      end

      # CreateTopicRule返回参数结构体
      class CreateTopicRuleResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # DeleteDevice请求参数结构体
      class DeleteDeviceRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID。
        # @type ProductId: String
        # @param DeviceName: 设备名称。
        # @type DeviceName: String
        # @param ForceDelete: 是否删除绑定设备
        # @type ForceDelete: Boolean

        attr_accessor :ProductId, :DeviceName, :ForceDelete
        
        def initialize(productid=nil, devicename=nil, forcedelete=nil)
          @ProductId = productid
          @DeviceName = devicename
          @ForceDelete = forcedelete
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @ForceDelete = params['ForceDelete']
        end
      end

      # DeleteDevice返回参数结构体
      class DeleteDeviceResponse < TencentCloud::Common::AbstractModel
        # @param ResultCode: 删除的结果代码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResultCode: String
        # @param ResultMessage: 删除的结果信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResultMessage: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ResultCode, :ResultMessage, :RequestId
        
        def initialize(resultcode=nil, resultmessage=nil, requestid=nil)
          @ResultCode = resultcode
          @ResultMessage = resultmessage
          @RequestId = requestid
        end

        def deserialize(params)
          @ResultCode = params['ResultCode']
          @ResultMessage = params['ResultMessage']
          @RequestId = params['RequestId']
        end
      end

      # DeleteDevices请求参数结构体
      class DeleteDevicesRequest < TencentCloud::Common::AbstractModel
        # @param DevicesItems: 多个设备标识
        # @type DevicesItems: Array

        attr_accessor :DevicesItems
        
        def initialize(devicesitems=nil)
          @DevicesItems = devicesitems
        end

        def deserialize(params)
          unless params['DevicesItems'].nil?
            @DevicesItems = []
            params['DevicesItems'].each do |i|
              devicesitem_tmp = DevicesItem.new
              devicesitem_tmp.deserialize(i)
              @DevicesItems << devicesitem_tmp
            end
          end
        end
      end

      # DeleteDevices返回参数结构体
      class DeleteDevicesResponse < TencentCloud::Common::AbstractModel
        # @param ResultCode: 删除的结果代码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResultCode: String
        # @param ResultMessage: 删除的结果信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResultMessage: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ResultCode, :ResultMessage, :RequestId
        
        def initialize(resultcode=nil, resultmessage=nil, requestid=nil)
          @ResultCode = resultcode
          @ResultMessage = resultmessage
          @RequestId = requestid
        end

        def deserialize(params)
          @ResultCode = params['ResultCode']
          @ResultMessage = params['ResultMessage']
          @RequestId = params['RequestId']
        end
      end

      # DeleteFenceBind请求参数结构体
      class DeleteFenceBindRequest < TencentCloud::Common::AbstractModel
        # @param FenceId: 围栏Id
        # @type FenceId: Integer
        # @param Items: 围栏绑定的产品信息
        # @type Items: Array

        attr_accessor :FenceId, :Items
        
        def initialize(fenceid=nil, items=nil)
          @FenceId = fenceid
          @Items = items
        end

        def deserialize(params)
          @FenceId = params['FenceId']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              fencebindproductitem_tmp = FenceBindProductItem.new
              fencebindproductitem_tmp.deserialize(i)
              @Items << fencebindproductitem_tmp
            end
          end
        end
      end

      # DeleteFenceBind返回参数结构体
      class DeleteFenceBindResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # DeleteLoRaFrequency请求参数结构体
      class DeleteLoRaFrequencyRequest < TencentCloud::Common::AbstractModel
        # @param FreqId: 频点唯一ID
        # @type FreqId: String

        attr_accessor :FreqId
        
        def initialize(freqid=nil)
          @FreqId = freqid
        end

        def deserialize(params)
          @FreqId = params['FreqId']
        end
      end

      # DeleteLoRaFrequency返回参数结构体
      class DeleteLoRaFrequencyResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # DeleteLoRaGateway请求参数结构体
      class DeleteLoRaGatewayRequest < TencentCloud::Common::AbstractModel
        # @param GatewayId: LoRa 网关 Id
        # @type GatewayId: String

        attr_accessor :GatewayId
        
        def initialize(gatewayid=nil)
          @GatewayId = gatewayid
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
        end
      end

      # DeleteLoRaGateway返回参数结构体
      class DeleteLoRaGatewayResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # DeletePositionFence请求参数结构体
      class DeletePositionFenceRequest < TencentCloud::Common::AbstractModel
        # @param SpaceId: 位置空间Id
        # @type SpaceId: String
        # @param FenceId: 围栏Id
        # @type FenceId: Integer

        attr_accessor :SpaceId, :FenceId
        
        def initialize(spaceid=nil, fenceid=nil)
          @SpaceId = spaceid
          @FenceId = fenceid
        end

        def deserialize(params)
          @SpaceId = params['SpaceId']
          @FenceId = params['FenceId']
        end
      end

      # DeletePositionFence返回参数结构体
      class DeletePositionFenceResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # DeletePositionSpace请求参数结构体
      class DeletePositionSpaceRequest < TencentCloud::Common::AbstractModel
        # @param SpaceId: 位置空间Id
        # @type SpaceId: String

        attr_accessor :SpaceId
        
        def initialize(spaceid=nil)
          @SpaceId = spaceid
        end

        def deserialize(params)
          @SpaceId = params['SpaceId']
        end
      end

      # DeletePositionSpace返回参数结构体
      class DeletePositionSpaceResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # DeleteProject请求参数结构体
      class DeleteProjectRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String

        attr_accessor :ProjectId
        
        def initialize(projectid=nil)
          @ProjectId = projectid
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
        end
      end

      # DeleteProject返回参数结构体
      class DeleteProjectResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # DeleteStudioProduct请求参数结构体
      class DeleteStudioProductRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String

        attr_accessor :ProductId
        
        def initialize(productid=nil)
          @ProductId = productid
        end

        def deserialize(params)
          @ProductId = params['ProductId']
        end
      end

      # DeleteStudioProduct返回参数结构体
      class DeleteStudioProductResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # DeleteTopicPolicy请求参数结构体
      class DeleteTopicPolicyRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param TopicName: Topic名称
        # @type TopicName: String

        attr_accessor :ProductId, :TopicName
        
        def initialize(productid=nil, topicname=nil)
          @ProductId = productid
          @TopicName = topicname
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @TopicName = params['TopicName']
        end
      end

      # DeleteTopicPolicy返回参数结构体
      class DeleteTopicPolicyResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # DeleteTopicRule请求参数结构体
      class DeleteTopicRuleRequest < TencentCloud::Common::AbstractModel
        # @param RuleName: 规则名
        # @type RuleName: String

        attr_accessor :RuleName
        
        def initialize(rulename=nil)
          @RuleName = rulename
        end

        def deserialize(params)
          @RuleName = params['RuleName']
        end
      end

      # DeleteTopicRule返回参数结构体
      class DeleteTopicRuleResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # DescribeBatchProduction请求参数结构体
      class DescribeBatchProductionRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param BatchProductionId: 量产ID
        # @type BatchProductionId: String

        attr_accessor :ProductId, :BatchProductionId
        
        def initialize(productid=nil, batchproductionid=nil)
          @ProductId = productid
          @BatchProductionId = batchproductionid
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @BatchProductionId = params['BatchProductionId']
        end
      end

      # DescribeBatchProduction返回参数结构体
      class DescribeBatchProductionResponse < TencentCloud::Common::AbstractModel
        # @param BatchCnt: 量产数量。
        # @type BatchCnt: Integer
        # @param BurnMethod: 烧录方式。
        # @type BurnMethod: Integer
        # @param CreateTime: 创建时间。
        # @type CreateTime: Integer
        # @param DownloadUrl: 下载URL。
        # @type DownloadUrl: String
        # @param GenerationMethod: 生成方式。
        # @type GenerationMethod: Integer
        # @param UploadUrl: 上传URL。
        # @type UploadUrl: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BatchCnt, :BurnMethod, :CreateTime, :DownloadUrl, :GenerationMethod, :UploadUrl, :RequestId
        
        def initialize(batchcnt=nil, burnmethod=nil, createtime=nil, downloadurl=nil, generationmethod=nil, uploadurl=nil, requestid=nil)
          @BatchCnt = batchcnt
          @BurnMethod = burnmethod
          @CreateTime = createtime
          @DownloadUrl = downloadurl
          @GenerationMethod = generationmethod
          @UploadUrl = uploadurl
          @RequestId = requestid
        end

        def deserialize(params)
          @BatchCnt = params['BatchCnt']
          @BurnMethod = params['BurnMethod']
          @CreateTime = params['CreateTime']
          @DownloadUrl = params['DownloadUrl']
          @GenerationMethod = params['GenerationMethod']
          @UploadUrl = params['UploadUrl']
          @RequestId = params['RequestId']
        end
      end

      # DescribeBindedProducts请求参数结构体
      class DescribeBindedProductsRequest < TencentCloud::Common::AbstractModel
        # @param GatewayProductId: 网关产品ID
        # @type GatewayProductId: String
        # @param Offset: 分页偏移量
        # @type Offset: Integer
        # @param Limit: 分页大小
        # @type Limit: Integer

        attr_accessor :GatewayProductId, :Offset, :Limit
        
        def initialize(gatewayproductid=nil, offset=nil, limit=nil)
          @GatewayProductId = gatewayproductid
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @GatewayProductId = params['GatewayProductId']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeBindedProducts返回参数结构体
      class DescribeBindedProductsResponse < TencentCloud::Common::AbstractModel
        # @param Products: 当前分页的子产品数组
        # @type Products: Array
        # @param Total: 绑定的子产品总数量
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Products, :Total, :RequestId
        
        def initialize(products=nil, total=nil, requestid=nil)
          @Products = products
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Products'].nil?
            @Products = []
            params['Products'].each do |i|
              bindproductinfo_tmp = BindProductInfo.new
              bindproductinfo_tmp.deserialize(i)
              @Products << bindproductinfo_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDeviceBindGateway请求参数结构体
      class DescribeDeviceBindGatewayRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品Id
        # @type ProductId: String
        # @param DeviceName: 设备名
        # @type DeviceName: String

        attr_accessor :ProductId, :DeviceName
        
        def initialize(productid=nil, devicename=nil)
          @ProductId = productid
          @DeviceName = devicename
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
        end
      end

      # DescribeDeviceBindGateway返回参数结构体
      class DescribeDeviceBindGatewayResponse < TencentCloud::Common::AbstractModel
        # @param GatewayProductId: 网关产品ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GatewayProductId: String
        # @param GatewayDeviceName: 网关设备名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GatewayDeviceName: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :GatewayProductId, :GatewayDeviceName, :RequestId
        
        def initialize(gatewayproductid=nil, gatewaydevicename=nil, requestid=nil)
          @GatewayProductId = gatewayproductid
          @GatewayDeviceName = gatewaydevicename
          @RequestId = requestid
        end

        def deserialize(params)
          @GatewayProductId = params['GatewayProductId']
          @GatewayDeviceName = params['GatewayDeviceName']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDeviceDataHistory请求参数结构体
      class DescribeDeviceDataHistoryRequest < TencentCloud::Common::AbstractModel
        # @param MinTime: 区间开始时间（Unix 时间戳，毫秒级）
        # @type MinTime: Integer
        # @param MaxTime: 区间结束时间（Unix 时间戳，毫秒级）
        # @type MaxTime: Integer
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param FieldName: 属性字段名称，对应数据模板中功能属性的标识符
        # @type FieldName: String
        # @param Limit: 返回条数
        # @type Limit: Integer
        # @param Context: 检索上下文
        # @type Context: String

        attr_accessor :MinTime, :MaxTime, :ProductId, :DeviceName, :FieldName, :Limit, :Context
        
        def initialize(mintime=nil, maxtime=nil, productid=nil, devicename=nil, fieldname=nil, limit=nil, context=nil)
          @MinTime = mintime
          @MaxTime = maxtime
          @ProductId = productid
          @DeviceName = devicename
          @FieldName = fieldname
          @Limit = limit
          @Context = context
        end

        def deserialize(params)
          @MinTime = params['MinTime']
          @MaxTime = params['MaxTime']
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @FieldName = params['FieldName']
          @Limit = params['Limit']
          @Context = params['Context']
        end
      end

      # DescribeDeviceDataHistory返回参数结构体
      class DescribeDeviceDataHistoryResponse < TencentCloud::Common::AbstractModel
        # @param FieldName: 属性字段名称，对应数据模板中功能属性的标识符
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FieldName: String
        # @param Listover: 数据是否已全部返回，true 表示数据全部返回，false 表示还有数据待返回，可将 Context 作为入参，继续查询返回结果。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Listover: Boolean
        # @param Context: 检索上下文，当 ListOver 为false时，可以用此上下文，继续读取后续数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Context: String
        # @param Results: 历史数据结果数组，返回对应时间点及取值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Results: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FieldName, :Listover, :Context, :Results, :RequestId
        
        def initialize(fieldname=nil, listover=nil, context=nil, results=nil, requestid=nil)
          @FieldName = fieldname
          @Listover = listover
          @Context = context
          @Results = results
          @RequestId = requestid
        end

        def deserialize(params)
          @FieldName = params['FieldName']
          @Listover = params['Listover']
          @Context = params['Context']
          unless params['Results'].nil?
            @Results = []
            params['Results'].each do |i|
              devicedatahistoryitem_tmp = DeviceDataHistoryItem.new
              devicedatahistoryitem_tmp.deserialize(i)
              @Results << devicedatahistoryitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDeviceData请求参数结构体
      class DescribeDeviceDataRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param DeviceId: 设备ID，该字段有值将代替 ProductId/DeviceName
        # @type DeviceId: String

        attr_accessor :ProductId, :DeviceName, :DeviceId
        
        def initialize(productid=nil, devicename=nil, deviceid=nil)
          @ProductId = productid
          @DeviceName = devicename
          @DeviceId = deviceid
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @DeviceId = params['DeviceId']
        end
      end

      # DescribeDeviceData返回参数结构体
      class DescribeDeviceDataResponse < TencentCloud::Common::AbstractModel
        # @param Data: 设备数据
        # @type Data: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDevicePositionList请求参数结构体
      class DescribeDevicePositionListRequest < TencentCloud::Common::AbstractModel
        # @param ProductIdList: 产品标识列表
        # @type ProductIdList: Array
        # @param CoordinateType: 坐标类型
        # @type CoordinateType: Integer
        # @param Offset: 分页偏移
        # @type Offset: Integer
        # @param Limit: 分页的大小
        # @type Limit: Integer

        attr_accessor :ProductIdList, :CoordinateType, :Offset, :Limit
        
        def initialize(productidlist=nil, coordinatetype=nil, offset=nil, limit=nil)
          @ProductIdList = productidlist
          @CoordinateType = coordinatetype
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @ProductIdList = params['ProductIdList']
          @CoordinateType = params['CoordinateType']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeDevicePositionList返回参数结构体
      class DescribeDevicePositionListResponse < TencentCloud::Common::AbstractModel
        # @param Positions: 产品设备位置信息列表
        # @type Positions: Array
        # @param Total: 产品设备位置信息的数目
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Positions, :Total, :RequestId
        
        def initialize(positions=nil, total=nil, requestid=nil)
          @Positions = positions
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Positions'].nil?
            @Positions = []
            params['Positions'].each do |i|
              productdevicespositionitem_tmp = ProductDevicesPositionItem.new
              productdevicespositionitem_tmp.deserialize(i)
              @Positions << productdevicespositionitem_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDevice请求参数结构体
      class DescribeDeviceRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param DeviceName: 设备名
        # @type DeviceName: String
        # @param DeviceId: 设备ID，该字段有值将代替 ProductId/DeviceName
        # @type DeviceId: String

        attr_accessor :ProductId, :DeviceName, :DeviceId
        
        def initialize(productid=nil, devicename=nil, deviceid=nil)
          @ProductId = productid
          @DeviceName = devicename
          @DeviceId = deviceid
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @DeviceId = params['DeviceId']
        end
      end

      # DescribeDevice返回参数结构体
      class DescribeDeviceResponse < TencentCloud::Common::AbstractModel
        # @param Device: 设备信息
        # @type Device: :class:`Tencentcloud::Iotexplorer.v20190423.models.DeviceInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Device, :RequestId
        
        def initialize(device=nil, requestid=nil)
          @Device = device
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Device'].nil?
            @Device = DeviceInfo.new
            @Device.deserialize(params['Device'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeFenceBindList请求参数结构体
      class DescribeFenceBindListRequest < TencentCloud::Common::AbstractModel
        # @param FenceId: 围栏Id
        # @type FenceId: Integer
        # @param Offset: 翻页偏移量，0起始
        # @type Offset: Integer
        # @param Limit: 最大返回结果数
        # @type Limit: Integer

        attr_accessor :FenceId, :Offset, :Limit
        
        def initialize(fenceid=nil, offset=nil, limit=nil)
          @FenceId = fenceid
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @FenceId = params['FenceId']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeFenceBindList返回参数结构体
      class DescribeFenceBindListResponse < TencentCloud::Common::AbstractModel
        # @param List: 围栏绑定的产品设备列表
        # @type List: Array
        # @param Total: 围栏绑定的设备总数
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :List, :Total, :RequestId
        
        def initialize(list=nil, total=nil, requestid=nil)
          @List = list
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              fencebindproductitem_tmp = FenceBindProductItem.new
              fencebindproductitem_tmp.deserialize(i)
              @List << fencebindproductitem_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # DescribeFenceEventList请求参数结构体
      class DescribeFenceEventListRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 围栏告警信息的查询起始时间，Unix时间，单位为毫秒
        # @type StartTime: Integer
        # @param EndTime: 围栏告警信息的查询结束时间，Unix时间，单位为毫秒
        # @type EndTime: Integer
        # @param FenceId: 围栏Id
        # @type FenceId: Integer
        # @param Offset: 翻页偏移量，0起始
        # @type Offset: Integer
        # @param Limit: 最大返回结果数
        # @type Limit: Integer
        # @param ProductId: 告警对应的产品Id
        # @type ProductId: String
        # @param DeviceName: 告警对应的设备名称
        # @type DeviceName: String

        attr_accessor :StartTime, :EndTime, :FenceId, :Offset, :Limit, :ProductId, :DeviceName
        
        def initialize(starttime=nil, endtime=nil, fenceid=nil, offset=nil, limit=nil, productid=nil, devicename=nil)
          @StartTime = starttime
          @EndTime = endtime
          @FenceId = fenceid
          @Offset = offset
          @Limit = limit
          @ProductId = productid
          @DeviceName = devicename
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @FenceId = params['FenceId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
        end
      end

      # DescribeFenceEventList返回参数结构体
      class DescribeFenceEventListResponse < TencentCloud::Common::AbstractModel
        # @param List: 围栏告警事件列表
        # @type List: Array
        # @param Total: 围栏告警事件总数
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :List, :Total, :RequestId
        
        def initialize(list=nil, total=nil, requestid=nil)
          @List = list
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              fenceeventitem_tmp = FenceEventItem.new
              fenceeventitem_tmp.deserialize(i)
              @List << fenceeventitem_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # DescribeFirmwareTask请求参数结构体
      class DescribeFirmwareTaskRequest < TencentCloud::Common::AbstractModel
        # @param ProductID: 产品ID
        # @type ProductID: String
        # @param FirmwareVersion: 固件版本号
        # @type FirmwareVersion: String
        # @param TaskId: 固件任务ID
        # @type TaskId: Integer

        attr_accessor :ProductID, :FirmwareVersion, :TaskId
        
        def initialize(productid=nil, firmwareversion=nil, taskid=nil)
          @ProductID = productid
          @FirmwareVersion = firmwareversion
          @TaskId = taskid
        end

        def deserialize(params)
          @ProductID = params['ProductID']
          @FirmwareVersion = params['FirmwareVersion']
          @TaskId = params['TaskId']
        end
      end

      # DescribeFirmwareTask返回参数结构体
      class DescribeFirmwareTaskResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 固件任务ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskId: Integer
        # @param Status: 固件任务状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param CreateTime: 固件任务创建时间，单位：秒
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: Integer
        # @param Type: 固件任务升级类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: Integer
        # @param ProductName: 产品名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProductName: String
        # @param UpgradeMode: 固件任务升级模式。originalVersion（按版本号升级）、filename（提交文件升级）、devicenames（按设备名称升级）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpgradeMode: String
        # @param ProductId: 产品ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProductId: String
        # @param OriginalVersion: 原始固件版本号，在UpgradeMode是originalVersion升级模式下会返回
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OriginalVersion: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :Status, :CreateTime, :Type, :ProductName, :UpgradeMode, :ProductId, :OriginalVersion, :RequestId
        
        def initialize(taskid=nil, status=nil, createtime=nil, type=nil, productname=nil, upgrademode=nil, productid=nil, originalversion=nil, requestid=nil)
          @TaskId = taskid
          @Status = status
          @CreateTime = createtime
          @Type = type
          @ProductName = productname
          @UpgradeMode = upgrademode
          @ProductId = productid
          @OriginalVersion = originalversion
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @Status = params['Status']
          @CreateTime = params['CreateTime']
          @Type = params['Type']
          @ProductName = params['ProductName']
          @UpgradeMode = params['UpgradeMode']
          @ProductId = params['ProductId']
          @OriginalVersion = params['OriginalVersion']
          @RequestId = params['RequestId']
        end
      end

      # DescribeGatewayBindDevices请求参数结构体
      class DescribeGatewayBindDevicesRequest < TencentCloud::Common::AbstractModel
        # @param GatewayProductId: 网关设备的产品ID
        # @type GatewayProductId: String
        # @param GatewayDeviceName: 网关设备的设备名
        # @type GatewayDeviceName: String
        # @param ProductId: 子产品的ID
        # @type ProductId: String
        # @param Offset: 分页的偏移
        # @type Offset: Integer
        # @param Limit: 分页的页大小
        # @type Limit: Integer

        attr_accessor :GatewayProductId, :GatewayDeviceName, :ProductId, :Offset, :Limit
        
        def initialize(gatewayproductid=nil, gatewaydevicename=nil, productid=nil, offset=nil, limit=nil)
          @GatewayProductId = gatewayproductid
          @GatewayDeviceName = gatewaydevicename
          @ProductId = productid
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @GatewayProductId = params['GatewayProductId']
          @GatewayDeviceName = params['GatewayDeviceName']
          @ProductId = params['ProductId']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeGatewayBindDevices返回参数结构体
      class DescribeGatewayBindDevicesResponse < TencentCloud::Common::AbstractModel
        # @param Devices: 子设备信息。
        # @type Devices: Array
        # @param Total: 子设备总数。
        # @type Total: Integer
        # @param ProductName: 子设备所属的产品名。
        # @type ProductName: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Devices, :Total, :ProductName, :RequestId
        
        def initialize(devices=nil, total=nil, productname=nil, requestid=nil)
          @Devices = devices
          @Total = total
          @ProductName = productname
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Devices'].nil?
            @Devices = []
            params['Devices'].each do |i|
              binddeviceinfo_tmp = BindDeviceInfo.new
              binddeviceinfo_tmp.deserialize(i)
              @Devices << binddeviceinfo_tmp
            end
          end
          @Total = params['Total']
          @ProductName = params['ProductName']
          @RequestId = params['RequestId']
        end
      end

      # DescribeGatewaySubDeviceList请求参数结构体
      class DescribeGatewaySubDeviceListRequest < TencentCloud::Common::AbstractModel
        # @param GatewayProductId: 网关产品ID
        # @type GatewayProductId: String
        # @param GatewayDeviceName: 网关设备名称
        # @type GatewayDeviceName: String
        # @param Offset: 分页偏移
        # @type Offset: Integer
        # @param Limit: 分页的大小
        # @type Limit: Integer

        attr_accessor :GatewayProductId, :GatewayDeviceName, :Offset, :Limit
        
        def initialize(gatewayproductid=nil, gatewaydevicename=nil, offset=nil, limit=nil)
          @GatewayProductId = gatewayproductid
          @GatewayDeviceName = gatewaydevicename
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @GatewayProductId = params['GatewayProductId']
          @GatewayDeviceName = params['GatewayDeviceName']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeGatewaySubDeviceList返回参数结构体
      class DescribeGatewaySubDeviceListResponse < TencentCloud::Common::AbstractModel
        # @param Total: 设备的总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: Integer
        # @param DeviceList: 设备列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeviceList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :DeviceList, :RequestId
        
        def initialize(total=nil, devicelist=nil, requestid=nil)
          @Total = total
          @DeviceList = devicelist
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['DeviceList'].nil?
            @DeviceList = []
            params['DeviceList'].each do |i|
              familysubdevice_tmp = FamilySubDevice.new
              familysubdevice_tmp.deserialize(i)
              @DeviceList << familysubdevice_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeGatewaySubProducts请求参数结构体
      class DescribeGatewaySubProductsRequest < TencentCloud::Common::AbstractModel
        # @param GatewayProductId: 网关产品ID
        # @type GatewayProductId: String
        # @param Offset: 分页的偏移量
        # @type Offset: Integer
        # @param Limit: 分页的大小
        # @type Limit: Integer
        # @param ProjectId: 项目Id
        # @type ProjectId: String

        attr_accessor :GatewayProductId, :Offset, :Limit, :ProjectId
        
        def initialize(gatewayproductid=nil, offset=nil, limit=nil, projectid=nil)
          @GatewayProductId = gatewayproductid
          @Offset = offset
          @Limit = limit
          @ProjectId = projectid
        end

        def deserialize(params)
          @GatewayProductId = params['GatewayProductId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @ProjectId = params['ProjectId']
        end
      end

      # DescribeGatewaySubProducts返回参数结构体
      class DescribeGatewaySubProductsResponse < TencentCloud::Common::AbstractModel
        # @param Products: 当前分页的可绑定或解绑的产品信息。
        # @type Products: Array
        # @param Total: 可绑定或解绑的产品总数
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Products, :Total, :RequestId
        
        def initialize(products=nil, total=nil, requestid=nil)
          @Products = products
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Products'].nil?
            @Products = []
            params['Products'].each do |i|
              bindproductinfo_tmp = BindProductInfo.new
              bindproductinfo_tmp.deserialize(i)
              @Products << bindproductinfo_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # DescribeLoRaFrequency请求参数结构体
      class DescribeLoRaFrequencyRequest < TencentCloud::Common::AbstractModel
        # @param FreqId: 频点唯一ID
        # @type FreqId: String

        attr_accessor :FreqId
        
        def initialize(freqid=nil)
          @FreqId = freqid
        end

        def deserialize(params)
          @FreqId = params['FreqId']
        end
      end

      # DescribeLoRaFrequency返回参数结构体
      class DescribeLoRaFrequencyResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回详情项
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Iotexplorer.v20190423.models.LoRaFrequencyEntry`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = LoRaFrequencyEntry.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeModelDefinition请求参数结构体
      class DescribeModelDefinitionRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String

        attr_accessor :ProductId
        
        def initialize(productid=nil)
          @ProductId = productid
        end

        def deserialize(params)
          @ProductId = params['ProductId']
        end
      end

      # DescribeModelDefinition返回参数结构体
      class DescribeModelDefinitionResponse < TencentCloud::Common::AbstractModel
        # @param Model: 产品数据模板
        # @type Model: :class:`Tencentcloud::Iotexplorer.v20190423.models.ProductModelDefinition`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Model, :RequestId
        
        def initialize(model=nil, requestid=nil)
          @Model = model
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Model'].nil?
            @Model = ProductModelDefinition.new
            @Model.deserialize(params['Model'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribePositionFenceList请求参数结构体
      class DescribePositionFenceListRequest < TencentCloud::Common::AbstractModel
        # @param SpaceId: 位置空间Id
        # @type SpaceId: String
        # @param Offset: 翻页偏移量，0起始
        # @type Offset: Integer
        # @param Limit: 最大返回结果数
        # @type Limit: Integer

        attr_accessor :SpaceId, :Offset, :Limit
        
        def initialize(spaceid=nil, offset=nil, limit=nil)
          @SpaceId = spaceid
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @SpaceId = params['SpaceId']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribePositionFenceList返回参数结构体
      class DescribePositionFenceListResponse < TencentCloud::Common::AbstractModel
        # @param List: 围栏列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type List: Array
        # @param Total: 围栏数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :List, :Total, :RequestId
        
        def initialize(list=nil, total=nil, requestid=nil)
          @List = list
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              positionfenceinfo_tmp = PositionFenceInfo.new
              positionfenceinfo_tmp.deserialize(i)
              @List << positionfenceinfo_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # DescribeProject请求参数结构体
      class DescribeProjectRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String

        attr_accessor :ProjectId
        
        def initialize(projectid=nil)
          @ProjectId = projectid
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
        end
      end

      # DescribeProject返回参数结构体
      class DescribeProjectResponse < TencentCloud::Common::AbstractModel
        # @param Project: 返回信息
        # @type Project: :class:`Tencentcloud::Iotexplorer.v20190423.models.ProjectEntryEx`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Project, :RequestId
        
        def initialize(project=nil, requestid=nil)
          @Project = project
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Project'].nil?
            @Project = ProjectEntryEx.new
            @Project.deserialize(params['Project'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSpaceFenceEventList请求参数结构体
      class DescribeSpaceFenceEventListRequest < TencentCloud::Common::AbstractModel
        # @param SpaceId: 位置空间Id
        # @type SpaceId: String
        # @param StartTime: 围栏告警信息的查询起始时间，Unix时间，单位为毫秒
        # @type StartTime: Integer
        # @param EndTime: 围栏告警信息的查询结束时间，Unix时间，单位为毫秒
        # @type EndTime: Integer
        # @param Offset: 翻页偏移量，0起始
        # @type Offset: Integer
        # @param Limit: 最大返回结果数
        # @type Limit: Integer

        attr_accessor :SpaceId, :StartTime, :EndTime, :Offset, :Limit
        
        def initialize(spaceid=nil, starttime=nil, endtime=nil, offset=nil, limit=nil)
          @SpaceId = spaceid
          @StartTime = starttime
          @EndTime = endtime
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @SpaceId = params['SpaceId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeSpaceFenceEventList返回参数结构体
      class DescribeSpaceFenceEventListResponse < TencentCloud::Common::AbstractModel
        # @param List: 围栏告警事件列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type List: Array
        # @param Total: 围栏告警事件总数
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :List, :Total, :RequestId
        
        def initialize(list=nil, total=nil, requestid=nil)
          @List = list
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              fenceeventitem_tmp = FenceEventItem.new
              fenceeventitem_tmp.deserialize(i)
              @List << fenceeventitem_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # DescribeStudioProduct请求参数结构体
      class DescribeStudioProductRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String

        attr_accessor :ProductId
        
        def initialize(productid=nil)
          @ProductId = productid
        end

        def deserialize(params)
          @ProductId = params['ProductId']
        end
      end

      # DescribeStudioProduct返回参数结构体
      class DescribeStudioProductResponse < TencentCloud::Common::AbstractModel
        # @param Product: 产品详情
        # @type Product: :class:`Tencentcloud::Iotexplorer.v20190423.models.ProductEntry`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Product, :RequestId
        
        def initialize(product=nil, requestid=nil)
          @Product = product
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Product'].nil?
            @Product = ProductEntry.new
            @Product.deserialize(params['Product'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTopicPolicy请求参数结构体
      class DescribeTopicPolicyRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param TopicName: Topic名字
        # @type TopicName: String

        attr_accessor :ProductId, :TopicName
        
        def initialize(productid=nil, topicname=nil)
          @ProductId = productid
          @TopicName = topicname
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @TopicName = params['TopicName']
        end
      end

      # DescribeTopicPolicy返回参数结构体
      class DescribeTopicPolicyResponse < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param TopicName: Topic名称
        # @type TopicName: String
        # @param Privilege: Topic权限
        # @type Privilege: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ProductId, :TopicName, :Privilege, :RequestId
        
        def initialize(productid=nil, topicname=nil, privilege=nil, requestid=nil)
          @ProductId = productid
          @TopicName = topicname
          @Privilege = privilege
          @RequestId = requestid
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @TopicName = params['TopicName']
          @Privilege = params['Privilege']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTopicRule请求参数结构体
      class DescribeTopicRuleRequest < TencentCloud::Common::AbstractModel
        # @param RuleName: 规则名称。
        # @type RuleName: String

        attr_accessor :RuleName
        
        def initialize(rulename=nil)
          @RuleName = rulename
        end

        def deserialize(params)
          @RuleName = params['RuleName']
        end
      end

      # DescribeTopicRule返回参数结构体
      class DescribeTopicRuleResponse < TencentCloud::Common::AbstractModel
        # @param Rule: 规则描述。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Rule: :class:`Tencentcloud::Iotexplorer.v20190423.models.TopicRule`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Rule, :RequestId
        
        def initialize(rule=nil, requestid=nil)
          @Rule = rule
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Rule'].nil?
            @Rule = TopicRule.new
            @Rule.deserialize(params['Rule'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DeviceData
      class DeviceData < TencentCloud::Common::AbstractModel
        # @param DeviceCert: 设备证书，用于 TLS 建立链接时校验客户端身份。采用非对称加密时返回该参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeviceCert: String
        # @param DeviceName: 设备名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeviceName: String
        # @param DevicePrivateKey: 设备私钥，用于 TLS 建立链接时校验客户端身份，腾讯云后台不保存，请妥善保管。采用非对称加密时返回该参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DevicePrivateKey: String
        # @param DevicePsk: 对称加密密钥，base64编码。采用对称加密时返回该参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DevicePsk: String

        attr_accessor :DeviceCert, :DeviceName, :DevicePrivateKey, :DevicePsk
        
        def initialize(devicecert=nil, devicename=nil, deviceprivatekey=nil, devicepsk=nil)
          @DeviceCert = devicecert
          @DeviceName = devicename
          @DevicePrivateKey = deviceprivatekey
          @DevicePsk = devicepsk
        end

        def deserialize(params)
          @DeviceCert = params['DeviceCert']
          @DeviceName = params['DeviceName']
          @DevicePrivateKey = params['DevicePrivateKey']
          @DevicePsk = params['DevicePsk']
        end
      end

      # 设备历史数据结构
      class DeviceDataHistoryItem < TencentCloud::Common::AbstractModel
        # @param Time: 时间点，毫秒时间戳
        # @type Time: String
        # @param Value: 字段取值
        # @type Value: String

        attr_accessor :Time, :Value
        
        def initialize(time=nil, value=nil)
          @Time = time
          @Value = value
        end

        def deserialize(params)
          @Time = params['Time']
          @Value = params['Value']
        end
      end

      # 设备详细信息
      class DeviceInfo < TencentCloud::Common::AbstractModel
        # @param DeviceName: 设备名
        # @type DeviceName: String
        # @param Status: 0: 离线, 1: 在线, 2: 获取失败, 3 未激活
        # @type Status: Integer
        # @param DevicePsk: 设备密钥，密钥加密的设备返回
        # @type DevicePsk: String
        # @param FirstOnlineTime: 首次上线时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FirstOnlineTime: Integer
        # @param LoginTime: 最后一次上线时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LoginTime: Integer
        # @param CreateTime: 设备创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: Integer
        # @param Version: 设备固件版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Version: String
        # @param DeviceCert: 设备证书
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeviceCert: String
        # @param LogLevel: 日志级别
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LogLevel: Integer
        # @param DevAddr: LoRaWAN 设备地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DevAddr: String
        # @param AppKey: LoRaWAN 应用密钥
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppKey: String
        # @param DevEUI: LoRaWAN 设备唯一标识
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DevEUI: String
        # @param AppSKey: LoRaWAN 应用会话密钥
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppSKey: String
        # @param NwkSKey: LoRaWAN 网络会话密钥
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NwkSKey: String
        # @param CreateUserId: 创建人Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateUserId: Integer
        # @param CreatorNickName: 创建人昵称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatorNickName: String
        # @param EnableState: 启用/禁用状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnableState: Integer
        # @param ProductId: 产品ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProductId: String
        # @param ProductName: 产品名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProductName: String
        # @param DeviceType: 设备类型（设备、子设备、网关）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeviceType: String

        attr_accessor :DeviceName, :Status, :DevicePsk, :FirstOnlineTime, :LoginTime, :CreateTime, :Version, :DeviceCert, :LogLevel, :DevAddr, :AppKey, :DevEUI, :AppSKey, :NwkSKey, :CreateUserId, :CreatorNickName, :EnableState, :ProductId, :ProductName, :DeviceType
        
        def initialize(devicename=nil, status=nil, devicepsk=nil, firstonlinetime=nil, logintime=nil, createtime=nil, version=nil, devicecert=nil, loglevel=nil, devaddr=nil, appkey=nil, deveui=nil, appskey=nil, nwkskey=nil, createuserid=nil, creatornickname=nil, enablestate=nil, productid=nil, productname=nil, devicetype=nil)
          @DeviceName = devicename
          @Status = status
          @DevicePsk = devicepsk
          @FirstOnlineTime = firstonlinetime
          @LoginTime = logintime
          @CreateTime = createtime
          @Version = version
          @DeviceCert = devicecert
          @LogLevel = loglevel
          @DevAddr = devaddr
          @AppKey = appkey
          @DevEUI = deveui
          @AppSKey = appskey
          @NwkSKey = nwkskey
          @CreateUserId = createuserid
          @CreatorNickName = creatornickname
          @EnableState = enablestate
          @ProductId = productid
          @ProductName = productname
          @DeviceType = devicetype
        end

        def deserialize(params)
          @DeviceName = params['DeviceName']
          @Status = params['Status']
          @DevicePsk = params['DevicePsk']
          @FirstOnlineTime = params['FirstOnlineTime']
          @LoginTime = params['LoginTime']
          @CreateTime = params['CreateTime']
          @Version = params['Version']
          @DeviceCert = params['DeviceCert']
          @LogLevel = params['LogLevel']
          @DevAddr = params['DevAddr']
          @AppKey = params['AppKey']
          @DevEUI = params['DevEUI']
          @AppSKey = params['AppSKey']
          @NwkSKey = params['NwkSKey']
          @CreateUserId = params['CreateUserId']
          @CreatorNickName = params['CreatorNickName']
          @EnableState = params['EnableState']
          @ProductId = params['ProductId']
          @ProductName = params['ProductName']
          @DeviceType = params['DeviceType']
        end
      end

      # 设备位置详情
      class DevicePositionItem < TencentCloud::Common::AbstractModel
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param CreateTime: 位置信息时间
        # @type CreateTime: Integer
        # @param Longitude: 设备经度信息
        # @type Longitude: Float
        # @param Latitude: 设备纬度信息
        # @type Latitude: Float

        attr_accessor :DeviceName, :CreateTime, :Longitude, :Latitude
        
        def initialize(devicename=nil, createtime=nil, longitude=nil, latitude=nil)
          @DeviceName = devicename
          @CreateTime = createtime
          @Longitude = longitude
          @Latitude = latitude
        end

        def deserialize(params)
          @DeviceName = params['DeviceName']
          @CreateTime = params['CreateTime']
          @Longitude = params['Longitude']
          @Latitude = params['Latitude']
        end
      end

      # 设备签名
      class DeviceSignatureInfo < TencentCloud::Common::AbstractModel
        # @param DeviceName: 设备名
        # @type DeviceName: String
        # @param DeviceSignature: 设备签名
        # @type DeviceSignature: String

        attr_accessor :DeviceName, :DeviceSignature
        
        def initialize(devicename=nil, devicesignature=nil)
          @DeviceName = devicename
          @DeviceSignature = devicesignature
        end

        def deserialize(params)
          @DeviceName = params['DeviceName']
          @DeviceSignature = params['DeviceSignature']
        end
      end

      # 设备的用户
      class DeviceUser < TencentCloud::Common::AbstractModel
        # @param UserId: 用户ID
        # @type UserId: String
        # @param Role: 用户角色 1所有者，0：其他分享者
        # @type Role: Integer

        attr_accessor :UserId, :Role
        
        def initialize(userid=nil, role=nil)
          @UserId = userid
          @Role = role
        end

        def deserialize(params)
          @UserId = params['UserId']
          @Role = params['Role']
        end
      end

      # ProductId -> DeviceName
      class DevicesItem < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品id
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String

        attr_accessor :ProductId, :DeviceName
        
        def initialize(productid=nil, devicename=nil)
          @ProductId = productid
          @DeviceName = devicename
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
        end
      end

      # DirectBindDeviceInFamily请求参数结构体
      class DirectBindDeviceInFamilyRequest < TencentCloud::Common::AbstractModel
        # @param IotAppID: 小程序appid
        # @type IotAppID: String
        # @param UserID: 用户ID
        # @type UserID: String
        # @param FamilyId: 家庭ID
        # @type FamilyId: String
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param DeviceName: 设备名
        # @type DeviceName: String
        # @param RoomId: 房间ID
        # @type RoomId: String

        attr_accessor :IotAppID, :UserID, :FamilyId, :ProductId, :DeviceName, :RoomId
        
        def initialize(iotappid=nil, userid=nil, familyid=nil, productid=nil, devicename=nil, roomid=nil)
          @IotAppID = iotappid
          @UserID = userid
          @FamilyId = familyid
          @ProductId = productid
          @DeviceName = devicename
          @RoomId = roomid
        end

        def deserialize(params)
          @IotAppID = params['IotAppID']
          @UserID = params['UserID']
          @FamilyId = params['FamilyId']
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @RoomId = params['RoomId']
        end
      end

      # DirectBindDeviceInFamily返回参数结构体
      class DirectBindDeviceInFamilyResponse < TencentCloud::Common::AbstractModel
        # @param AppDeviceInfo: 返回设备信息
        # @type AppDeviceInfo: :class:`Tencentcloud::Iotexplorer.v20190423.models.AppDeviceInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AppDeviceInfo, :RequestId
        
        def initialize(appdeviceinfo=nil, requestid=nil)
          @AppDeviceInfo = appdeviceinfo
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['AppDeviceInfo'].nil?
            @AppDeviceInfo = AppDeviceInfo.new
            @AppDeviceInfo.deserialize(params['AppDeviceInfo'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DisableTopicRule请求参数结构体
      class DisableTopicRuleRequest < TencentCloud::Common::AbstractModel
        # @param RuleName: 规则名称
        # @type RuleName: String

        attr_accessor :RuleName
        
        def initialize(rulename=nil)
          @RuleName = rulename
        end

        def deserialize(params)
          @RuleName = params['RuleName']
        end
      end

      # DisableTopicRule返回参数结构体
      class DisableTopicRuleResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # EnableTopicRule请求参数结构体
      class EnableTopicRuleRequest < TencentCloud::Common::AbstractModel
        # @param RuleName: 规则名称
        # @type RuleName: String

        attr_accessor :RuleName
        
        def initialize(rulename=nil)
          @RuleName = rulename
        end

        def deserialize(params)
          @RuleName = params['RuleName']
        end
      end

      # EnableTopicRule返回参数结构体
      class EnableTopicRuleResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # 设备事件的搜索结果项
      class EventHistoryItem < TencentCloud::Common::AbstractModel
        # @param TimeStamp: 事件的时间戳
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TimeStamp: Integer
        # @param ProductId: 事件的产品ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProductId: String
        # @param DeviceName: 事件的设备名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeviceName: String
        # @param EventId: 事件的标识符ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EventId: String
        # @param Type: 事件的类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param Data: 事件的数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: String

        attr_accessor :TimeStamp, :ProductId, :DeviceName, :EventId, :Type, :Data
        
        def initialize(timestamp=nil, productid=nil, devicename=nil, eventid=nil, type=nil, data=nil)
          @TimeStamp = timestamp
          @ProductId = productid
          @DeviceName = devicename
          @EventId = eventid
          @Type = type
          @Data = data
        end

        def deserialize(params)
          @TimeStamp = params['TimeStamp']
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @EventId = params['EventId']
          @Type = params['Type']
          @Data = params['Data']
        end
      end

      # 子设备详情
      class FamilySubDevice < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品Id
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param DeviceId: 设备ID
        # @type DeviceId: String
        # @param AliasName: 设备别名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AliasName: String
        # @param FamilyId: 设备绑定的家庭ID
        # @type FamilyId: String
        # @param RoomId: 设备所在的房间ID，默认"0"
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RoomId: String
        # @param IconUrl: 图标
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IconUrl: String
        # @param IconUrlGrid: grid图标
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IconUrlGrid: String
        # @param CreateTime: 设备绑定时间戳
        # @type CreateTime: Integer
        # @param UpdateTime: 设备更新时间戳
        # @type UpdateTime: Integer

        attr_accessor :ProductId, :DeviceName, :DeviceId, :AliasName, :FamilyId, :RoomId, :IconUrl, :IconUrlGrid, :CreateTime, :UpdateTime
        
        def initialize(productid=nil, devicename=nil, deviceid=nil, aliasname=nil, familyid=nil, roomid=nil, iconurl=nil, iconurlgrid=nil, createtime=nil, updatetime=nil)
          @ProductId = productid
          @DeviceName = devicename
          @DeviceId = deviceid
          @AliasName = aliasname
          @FamilyId = familyid
          @RoomId = roomid
          @IconUrl = iconurl
          @IconUrlGrid = iconurlgrid
          @CreateTime = createtime
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @DeviceId = params['DeviceId']
          @AliasName = params['AliasName']
          @FamilyId = params['FamilyId']
          @RoomId = params['RoomId']
          @IconUrl = params['IconUrl']
          @IconUrlGrid = params['IconUrlGrid']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
        end
      end

      # 围栏告警位置点
      class FenceAlarmPoint < TencentCloud::Common::AbstractModel
        # @param AlarmTime: 围栏告警时间
        # @type AlarmTime: Integer
        # @param Longitude: 围栏告警位置的经度
        # @type Longitude: Float
        # @param Latitude: 围栏告警位置的纬度
        # @type Latitude: Float

        attr_accessor :AlarmTime, :Longitude, :Latitude
        
        def initialize(alarmtime=nil, longitude=nil, latitude=nil)
          @AlarmTime = alarmtime
          @Longitude = longitude
          @Latitude = latitude
        end

        def deserialize(params)
          @AlarmTime = params['AlarmTime']
          @Longitude = params['Longitude']
          @Latitude = params['Latitude']
        end
      end

      # 围栏绑定的设备信息
      class FenceBindDeviceItem < TencentCloud::Common::AbstractModel
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param AlertCondition: 告警条件(In，进围栏报警；Out，出围栏报警；InOrOut，进围栏或者出围栏均报警)
        # @type AlertCondition: String
        # @param FenceEnable: 是否使能围栏(true，使能；false，禁用)
        # @type FenceEnable: Boolean
        # @param Method: 告警处理方法
        # @type Method: String

        attr_accessor :DeviceName, :AlertCondition, :FenceEnable, :Method
        
        def initialize(devicename=nil, alertcondition=nil, fenceenable=nil, method=nil)
          @DeviceName = devicename
          @AlertCondition = alertcondition
          @FenceEnable = fenceenable
          @Method = method
        end

        def deserialize(params)
          @DeviceName = params['DeviceName']
          @AlertCondition = params['AlertCondition']
          @FenceEnable = params['FenceEnable']
          @Method = params['Method']
        end
      end

      # 围栏绑定的产品信息
      class FenceBindProductItem < TencentCloud::Common::AbstractModel
        # @param Devices: 围栏绑定的设备信息
        # @type Devices: Array
        # @param ProductId: 围栏绑定的产品Id
        # @type ProductId: String

        attr_accessor :Devices, :ProductId
        
        def initialize(devices=nil, productid=nil)
          @Devices = devices
          @ProductId = productid
        end

        def deserialize(params)
          unless params['Devices'].nil?
            @Devices = []
            params['Devices'].each do |i|
              fencebinddeviceitem_tmp = FenceBindDeviceItem.new
              fencebinddeviceitem_tmp.deserialize(i)
              @Devices << fencebinddeviceitem_tmp
            end
          end
          @ProductId = params['ProductId']
        end
      end

      # 围栏事件详情
      class FenceEventItem < TencentCloud::Common::AbstractModel
        # @param ProductId: 围栏事件的产品Id
        # @type ProductId: String
        # @param DeviceName: 围栏事件的设备名称
        # @type DeviceName: String
        # @param FenceId: 围栏Id
        # @type FenceId: Integer
        # @param AlertType: 围栏事件的告警类型（In，进围栏报警；Out，出围栏报警；InOrOut，进围栏或者出围栏均报警）
        # @type AlertType: String
        # @param Data: 围栏事件的设备位置信息
        # @type Data: :class:`Tencentcloud::Iotexplorer.v20190423.models.FenceAlarmPoint`

        attr_accessor :ProductId, :DeviceName, :FenceId, :AlertType, :Data
        
        def initialize(productid=nil, devicename=nil, fenceid=nil, alerttype=nil, data=nil)
          @ProductId = productid
          @DeviceName = devicename
          @FenceId = fenceid
          @AlertType = alerttype
          @Data = data
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @FenceId = params['FenceId']
          @AlertType = params['AlertType']
          unless params['Data'].nil?
            @Data = FenceAlarmPoint.new
            @Data.deserialize(params['Data'])
          end
        end
      end

      # 设备固件详细信息
      class FirmwareInfo < TencentCloud::Common::AbstractModel
        # @param Version: 固件版本
        # @type Version: String
        # @param Md5sum: 固件MD5值
        # @type Md5sum: String
        # @param CreateTime: 固件创建时间
        # @type CreateTime: Integer
        # @param ProductName: 产品名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProductName: String
        # @param Name: 固件名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Description: 固件描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param ProductId: 产品ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProductId: String
        # @param FwType: 固件升级模块
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FwType: String
        # @param CreateUserId: 创建者子 uin
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateUserId: Integer
        # @param CreatorNickName: 创建者昵称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatorNickName: String

        attr_accessor :Version, :Md5sum, :CreateTime, :ProductName, :Name, :Description, :ProductId, :FwType, :CreateUserId, :CreatorNickName
        
        def initialize(version=nil, md5sum=nil, createtime=nil, productname=nil, name=nil, description=nil, productid=nil, fwtype=nil, createuserid=nil, creatornickname=nil)
          @Version = version
          @Md5sum = md5sum
          @CreateTime = createtime
          @ProductName = productname
          @Name = name
          @Description = description
          @ProductId = productid
          @FwType = fwtype
          @CreateUserId = createuserid
          @CreatorNickName = creatornickname
        end

        def deserialize(params)
          @Version = params['Version']
          @Md5sum = params['Md5sum']
          @CreateTime = params['CreateTime']
          @ProductName = params['ProductName']
          @Name = params['Name']
          @Description = params['Description']
          @ProductId = params['ProductId']
          @FwType = params['FwType']
          @CreateUserId = params['CreateUserId']
          @CreatorNickName = params['CreatorNickName']
        end
      end

      # GenSingleDeviceSignatureOfPublic请求参数结构体
      class GenSingleDeviceSignatureOfPublicRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 设备所属的产品ID
        # @type ProductId: String
        # @param DeviceName: 需要绑定的设备
        # @type DeviceName: String
        # @param Expire: 设备绑定签名的有效时间,以秒为单位。取值范围：0 < Expire <= 86400，Expire == -1（十年）
        # @type Expire: Integer

        attr_accessor :ProductId, :DeviceName, :Expire
        
        def initialize(productid=nil, devicename=nil, expire=nil)
          @ProductId = productid
          @DeviceName = devicename
          @Expire = expire
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @Expire = params['Expire']
        end
      end

      # GenSingleDeviceSignatureOfPublic返回参数结构体
      class GenSingleDeviceSignatureOfPublicResponse < TencentCloud::Common::AbstractModel
        # @param DeviceSignature: 设备签名
        # @type DeviceSignature: :class:`Tencentcloud::Iotexplorer.v20190423.models.DeviceSignatureInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DeviceSignature, :RequestId
        
        def initialize(devicesignature=nil, requestid=nil)
          @DeviceSignature = devicesignature
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DeviceSignature'].nil?
            @DeviceSignature = DeviceSignatureInfo.new
            @DeviceSignature.deserialize(params['DeviceSignature'])
          end
          @RequestId = params['RequestId']
        end
      end

      # GetBatchProductionsList请求参数结构体
      class GetBatchProductionsListRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 返回数量限制
        # @type Limit: Integer

        attr_accessor :ProjectId, :Offset, :Limit
        
        def initialize(projectid=nil, offset=nil, limit=nil)
          @ProjectId = projectid
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # GetBatchProductionsList返回参数结构体
      class GetBatchProductionsListResponse < TencentCloud::Common::AbstractModel
        # @param BatchProductions: 返回详情信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BatchProductions: Array
        # @param TotalCnt: 返回数量。
        # @type TotalCnt: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BatchProductions, :TotalCnt, :RequestId
        
        def initialize(batchproductions=nil, totalcnt=nil, requestid=nil)
          @BatchProductions = batchproductions
          @TotalCnt = totalcnt
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['BatchProductions'].nil?
            @BatchProductions = []
            params['BatchProductions'].each do |i|
              batchproductioninfo_tmp = BatchProductionInfo.new
              batchproductioninfo_tmp.deserialize(i)
              @BatchProductions << batchproductioninfo_tmp
            end
          end
          @TotalCnt = params['TotalCnt']
          @RequestId = params['RequestId']
        end
      end

      # GetCOSURL请求参数结构体
      class GetCOSURLRequest < TencentCloud::Common::AbstractModel
        # @param ProductID: 产品ID
        # @type ProductID: String
        # @param FirmwareVersion: 固件版本
        # @type FirmwareVersion: String
        # @param FileSize: 文件大小
        # @type FileSize: Integer

        attr_accessor :ProductID, :FirmwareVersion, :FileSize
        
        def initialize(productid=nil, firmwareversion=nil, filesize=nil)
          @ProductID = productid
          @FirmwareVersion = firmwareversion
          @FileSize = filesize
        end

        def deserialize(params)
          @ProductID = params['ProductID']
          @FirmwareVersion = params['FirmwareVersion']
          @FileSize = params['FileSize']
        end
      end

      # GetCOSURL返回参数结构体
      class GetCOSURLResponse < TencentCloud::Common::AbstractModel
        # @param Url: 固件URL
        # @type Url: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Url, :RequestId
        
        def initialize(url=nil, requestid=nil)
          @Url = url
          @RequestId = requestid
        end

        def deserialize(params)
          @Url = params['Url']
          @RequestId = params['RequestId']
        end
      end

      # GetDeviceList请求参数结构体
      class GetDeviceListRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 需要查看设备列表的产品 ID
        # @type ProductId: String
        # @param Offset: 分页偏移
        # @type Offset: Integer
        # @param Limit: 分页的大小，数值范围 10-100
        # @type Limit: Integer
        # @param FirmwareVersion: 设备固件版本号，若不带此参数会返回所有固件版本的设备。传"None-FirmwareVersion"查询无版本号的设备
        # @type FirmwareVersion: String
        # @param DeviceName: 需要过滤的设备名称
        # @type DeviceName: String
        # @param ProjectId: 项目ID。产品 ID 为 -1 时，该参数必填
        # @type ProjectId: String

        attr_accessor :ProductId, :Offset, :Limit, :FirmwareVersion, :DeviceName, :ProjectId
        
        def initialize(productid=nil, offset=nil, limit=nil, firmwareversion=nil, devicename=nil, projectid=nil)
          @ProductId = productid
          @Offset = offset
          @Limit = limit
          @FirmwareVersion = firmwareversion
          @DeviceName = devicename
          @ProjectId = projectid
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @FirmwareVersion = params['FirmwareVersion']
          @DeviceName = params['DeviceName']
          @ProjectId = params['ProjectId']
        end
      end

      # GetDeviceList返回参数结构体
      class GetDeviceListResponse < TencentCloud::Common::AbstractModel
        # @param Devices: 返回的设备列表, 注意列表设备的 DevicePsk 为空, 要获取设备的 DevicePsk 请使用 DescribeDevice
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Devices: Array
        # @param Total: 产品下的设备总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Devices, :Total, :RequestId
        
        def initialize(devices=nil, total=nil, requestid=nil)
          @Devices = devices
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Devices'].nil?
            @Devices = []
            params['Devices'].each do |i|
              deviceinfo_tmp = DeviceInfo.new
              deviceinfo_tmp.deserialize(i)
              @Devices << deviceinfo_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # GetDeviceLocationHistory请求参数结构体
      class GetDeviceLocationHistoryRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品Id
        # @type ProductId: String
        # @param DeviceName: 设备名
        # @type DeviceName: String
        # @param StartTime: 查询起始时间，Unix时间，单位为毫秒
        # @type StartTime: Integer
        # @param EndTime: 查询结束时间，Unix时间，单位为毫秒
        # @type EndTime: Integer
        # @param CoordinateType: 坐标类型
        # @type CoordinateType: Integer

        attr_accessor :ProductId, :DeviceName, :StartTime, :EndTime, :CoordinateType
        
        def initialize(productid=nil, devicename=nil, starttime=nil, endtime=nil, coordinatetype=nil)
          @ProductId = productid
          @DeviceName = devicename
          @StartTime = starttime
          @EndTime = endtime
          @CoordinateType = coordinatetype
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @CoordinateType = params['CoordinateType']
        end
      end

      # GetDeviceLocationHistory返回参数结构体
      class GetDeviceLocationHistoryResponse < TencentCloud::Common::AbstractModel
        # @param Positions: 历史位置列表
        # @type Positions: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Positions, :RequestId
        
        def initialize(positions=nil, requestid=nil)
          @Positions = positions
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Positions'].nil?
            @Positions = []
            params['Positions'].each do |i|
              positionitem_tmp = PositionItem.new
              positionitem_tmp.deserialize(i)
              @Positions << positionitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # GetFamilyDeviceUserList请求参数结构体
      class GetFamilyDeviceUserListRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String

        attr_accessor :ProductId, :DeviceName
        
        def initialize(productid=nil, devicename=nil)
          @ProductId = productid
          @DeviceName = devicename
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
        end
      end

      # GetFamilyDeviceUserList返回参数结构体
      class GetFamilyDeviceUserListResponse < TencentCloud::Common::AbstractModel
        # @param UserList: 设备的用户列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :UserList, :RequestId
        
        def initialize(userlist=nil, requestid=nil)
          @UserList = userlist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['UserList'].nil?
            @UserList = []
            params['UserList'].each do |i|
              deviceuser_tmp = DeviceUser.new
              deviceuser_tmp.deserialize(i)
              @UserList << deviceuser_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # GetGatewaySubDeviceList请求参数结构体
      class GetGatewaySubDeviceListRequest < TencentCloud::Common::AbstractModel
        # @param GatewayProductId: 网关产品ID
        # @type GatewayProductId: String
        # @param GatewayDeviceName: 网关设备名称
        # @type GatewayDeviceName: String
        # @param Offset: 分页偏移
        # @type Offset: Integer
        # @param Limit: 分页的大小
        # @type Limit: Integer

        attr_accessor :GatewayProductId, :GatewayDeviceName, :Offset, :Limit
        
        def initialize(gatewayproductid=nil, gatewaydevicename=nil, offset=nil, limit=nil)
          @GatewayProductId = gatewayproductid
          @GatewayDeviceName = gatewaydevicename
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @GatewayProductId = params['GatewayProductId']
          @GatewayDeviceName = params['GatewayDeviceName']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # GetGatewaySubDeviceList返回参数结构体
      class GetGatewaySubDeviceListResponse < TencentCloud::Common::AbstractModel
        # @param Total: 设备的总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: Integer
        # @param DeviceList: 设备列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeviceList: :class:`Tencentcloud::Iotexplorer.v20190423.models.FamilySubDevice`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :DeviceList, :RequestId
        
        def initialize(total=nil, devicelist=nil, requestid=nil)
          @Total = total
          @DeviceList = devicelist
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['DeviceList'].nil?
            @DeviceList = FamilySubDevice.new
            @DeviceList.deserialize(params['DeviceList'])
          end
          @RequestId = params['RequestId']
        end
      end

      # GetLoRaGatewayList请求参数结构体
      class GetLoRaGatewayListRequest < TencentCloud::Common::AbstractModel
        # @param IsCommunity: 是否是社区网关
        # @type IsCommunity: Boolean
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 限制个数
        # @type Limit: Integer

        attr_accessor :IsCommunity, :Offset, :Limit
        
        def initialize(iscommunity=nil, offset=nil, limit=nil)
          @IsCommunity = iscommunity
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @IsCommunity = params['IsCommunity']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # GetLoRaGatewayList返回参数结构体
      class GetLoRaGatewayListResponse < TencentCloud::Common::AbstractModel
        # @param Total: 返回总数
        # @type Total: Integer
        # @param Gateways: 返回详情项
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Gateways: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :Gateways, :RequestId
        
        def initialize(total=nil, gateways=nil, requestid=nil)
          @Total = total
          @Gateways = gateways
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['Gateways'].nil?
            @Gateways = []
            params['Gateways'].each do |i|
              loragatewayitem_tmp = LoRaGatewayItem.new
              loragatewayitem_tmp.deserialize(i)
              @Gateways << loragatewayitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # GetPositionSpaceList请求参数结构体
      class GetPositionSpaceListRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目Id
        # @type ProjectId: String
        # @param Offset: 翻页偏移量，0起始
        # @type Offset: Integer
        # @param Limit: 最大返回结果数
        # @type Limit: Integer

        attr_accessor :ProjectId, :Offset, :Limit
        
        def initialize(projectid=nil, offset=nil, limit=nil)
          @ProjectId = projectid
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # GetPositionSpaceList返回参数结构体
      class GetPositionSpaceListResponse < TencentCloud::Common::AbstractModel
        # @param List: 位置空间列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type List: Array
        # @param Total: 位置空间数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :List, :Total, :RequestId
        
        def initialize(list=nil, total=nil, requestid=nil)
          @List = list
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              positionspaceinfo_tmp = PositionSpaceInfo.new
              positionspaceinfo_tmp.deserialize(i)
              @List << positionspaceinfo_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # GetProjectList请求参数结构体
      class GetProjectListRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 个数限制
        # @type Limit: Integer
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param ProjectId: 按项目D搜索
        # @type ProjectId: String
        # @param ProductId: 按产品ID搜索
        # @type ProductId: String
        # @param Includes: 加载 ProductCount、DeviceCount、ApplicationCount，可选值：ProductCount、DeviceCount、ApplicationCount，可多选
        # @type Includes: Array
        # @param ProjectName: 按项目名称搜索
        # @type ProjectName: String

        attr_accessor :Offset, :Limit, :InstanceId, :ProjectId, :ProductId, :Includes, :ProjectName
        
        def initialize(offset=nil, limit=nil, instanceid=nil, projectid=nil, productid=nil, includes=nil, projectname=nil)
          @Offset = offset
          @Limit = limit
          @InstanceId = instanceid
          @ProjectId = projectid
          @ProductId = productid
          @Includes = includes
          @ProjectName = projectname
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @InstanceId = params['InstanceId']
          @ProjectId = params['ProjectId']
          @ProductId = params['ProductId']
          @Includes = params['Includes']
          @ProjectName = params['ProjectName']
        end
      end

      # GetProjectList返回参数结构体
      class GetProjectListResponse < TencentCloud::Common::AbstractModel
        # @param Projects: 项目列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Projects: Array
        # @param Total: 列表项个数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Projects, :Total, :RequestId
        
        def initialize(projects=nil, total=nil, requestid=nil)
          @Projects = projects
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Projects'].nil?
            @Projects = []
            params['Projects'].each do |i|
              projectentryex_tmp = ProjectEntryEx.new
              projectentryex_tmp.deserialize(i)
              @Projects << projectentryex_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # GetStudioProductList请求参数结构体
      class GetStudioProductListRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param DevStatus: 产品DevStatus
        # @type DevStatus: String
        # @param Offset: Offset
        # @type Offset: Integer
        # @param Limit: Limit
        # @type Limit: Integer

        attr_accessor :ProjectId, :DevStatus, :Offset, :Limit
        
        def initialize(projectid=nil, devstatus=nil, offset=nil, limit=nil)
          @ProjectId = projectid
          @DevStatus = devstatus
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @DevStatus = params['DevStatus']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # GetStudioProductList返回参数结构体
      class GetStudioProductListResponse < TencentCloud::Common::AbstractModel
        # @param Products: 产品列表
        # @type Products: Array
        # @param Total: 产品数量
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Products, :Total, :RequestId
        
        def initialize(products=nil, total=nil, requestid=nil)
          @Products = products
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Products'].nil?
            @Products = []
            params['Products'].each do |i|
              productentry_tmp = ProductEntry.new
              productentry_tmp.deserialize(i)
              @Products << productentry_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # GetTopicRuleList请求参数结构体
      class GetTopicRuleListRequest < TencentCloud::Common::AbstractModel
        # @param PageNum: 请求的页数
        # @type PageNum: Integer
        # @param PageSize: 分页的大小
        # @type PageSize: Integer

        attr_accessor :PageNum, :PageSize
        
        def initialize(pagenum=nil, pagesize=nil)
          @PageNum = pagenum
          @PageSize = pagesize
        end

        def deserialize(params)
          @PageNum = params['PageNum']
          @PageSize = params['PageSize']
        end
      end

      # GetTopicRuleList返回参数结构体
      class GetTopicRuleListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCnt: 规则总数量
        # @type TotalCnt: Integer
        # @param Rules: 规则列表
        # @type Rules: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCnt, :Rules, :RequestId
        
        def initialize(totalcnt=nil, rules=nil, requestid=nil)
          @TotalCnt = totalcnt
          @Rules = rules
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCnt = params['TotalCnt']
          unless params['Rules'].nil?
            @Rules = []
            params['Rules'].each do |i|
              topicruleinfo_tmp = TopicRuleInfo.new
              topicruleinfo_tmp.deserialize(i)
              @Rules << topicruleinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ListEventHistory请求参数结构体
      class ListEventHistoryRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param Type: 搜索的事件类型：alert 表示告警，fault 表示故障，info 表示信息，为空则表示查询上述所有类型事件
        # @type Type: String
        # @param StartTime: 起始时间（Unix 时间戳，秒级）, 为0 表示 当前时间 - 24h
        # @type StartTime: Integer
        # @param EndTime: 结束时间（Unix 时间戳，秒级）, 为0 表示当前时间
        # @type EndTime: Integer
        # @param Context: 搜索上下文, 用作查询游标
        # @type Context: String
        # @param Size: 单次获取的历史数据项目的最大数量, 缺省10
        # @type Size: Integer
        # @param EventId: 事件标识符，可以用来指定查询特定的事件，如果不指定，则查询所有事件。
        # @type EventId: String

        attr_accessor :ProductId, :DeviceName, :Type, :StartTime, :EndTime, :Context, :Size, :EventId
        
        def initialize(productid=nil, devicename=nil, type=nil, starttime=nil, endtime=nil, context=nil, size=nil, eventid=nil)
          @ProductId = productid
          @DeviceName = devicename
          @Type = type
          @StartTime = starttime
          @EndTime = endtime
          @Context = context
          @Size = size
          @EventId = eventid
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @Type = params['Type']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Context = params['Context']
          @Size = params['Size']
          @EventId = params['EventId']
        end
      end

      # ListEventHistory返回参数结构体
      class ListEventHistoryResponse < TencentCloud::Common::AbstractModel
        # @param Context: 搜索上下文, 用作查询游标
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Context: String
        # @param Total: 搜索结果数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: Integer
        # @param Listover: 搜索结果是否已经结束
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Listover: Boolean
        # @param EventHistory: 搜集结果集
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EventHistory: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Context, :Total, :Listover, :EventHistory, :RequestId
        
        def initialize(context=nil, total=nil, listover=nil, eventhistory=nil, requestid=nil)
          @Context = context
          @Total = total
          @Listover = listover
          @EventHistory = eventhistory
          @RequestId = requestid
        end

        def deserialize(params)
          @Context = params['Context']
          @Total = params['Total']
          @Listover = params['Listover']
          unless params['EventHistory'].nil?
            @EventHistory = []
            params['EventHistory'].each do |i|
              eventhistoryitem_tmp = EventHistoryItem.new
              eventhistoryitem_tmp.deserialize(i)
              @EventHistory << eventhistoryitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ListFirmwares请求参数结构体
      class ListFirmwaresRequest < TencentCloud::Common::AbstractModel
        # @param PageNum: 获取的页数
        # @type PageNum: Integer
        # @param PageSize: 分页的大小
        # @type PageSize: Integer
        # @param ProductID: 产品ID
        # @type ProductID: String
        # @param Filters: 搜索过滤条件
        # @type Filters: Array

        attr_accessor :PageNum, :PageSize, :ProductID, :Filters
        
        def initialize(pagenum=nil, pagesize=nil, productid=nil, filters=nil)
          @PageNum = pagenum
          @PageSize = pagesize
          @ProductID = productid
          @Filters = filters
        end

        def deserialize(params)
          @PageNum = params['PageNum']
          @PageSize = params['PageSize']
          @ProductID = params['ProductID']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              searchkeyword_tmp = SearchKeyword.new
              searchkeyword_tmp.deserialize(i)
              @Filters << searchkeyword_tmp
            end
          end
        end
      end

      # ListFirmwares返回参数结构体
      class ListFirmwaresResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 固件总数
        # @type TotalCount: Integer
        # @param Firmwares: 固件列表
        # @type Firmwares: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Firmwares, :RequestId
        
        def initialize(totalcount=nil, firmwares=nil, requestid=nil)
          @TotalCount = totalcount
          @Firmwares = firmwares
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Firmwares'].nil?
            @Firmwares = []
            params['Firmwares'].each do |i|
              firmwareinfo_tmp = FirmwareInfo.new
              firmwareinfo_tmp.deserialize(i)
              @Firmwares << firmwareinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ListTopicPolicy请求参数结构体
      class ListTopicPolicyRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String

        attr_accessor :ProductId
        
        def initialize(productid=nil)
          @ProductId = productid
        end

        def deserialize(params)
          @ProductId = params['ProductId']
        end
      end

      # ListTopicPolicy返回参数结构体
      class ListTopicPolicyResponse < TencentCloud::Common::AbstractModel
        # @param Topics: Topic列表
        # @type Topics: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Topics, :RequestId
        
        def initialize(topics=nil, requestid=nil)
          @Topics = topics
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Topics'].nil?
            @Topics = []
            params['Topics'].each do |i|
              topicitem_tmp = TopicItem.new
              topicitem_tmp.deserialize(i)
              @Topics << topicitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # LoRa自定义频点信息
      class LoRaFrequencyEntry < TencentCloud::Common::AbstractModel
        # @param FreqId: 频点唯一ID
        # @type FreqId: String
        # @param FreqName: 频点名称
        # @type FreqName: String
        # @param Description: 频点描述
        # @type Description: String
        # @param ChannelsDataUp: 数据上行信道
        # @type ChannelsDataUp: Array
        # @param ChannelsDataRX1: 数据下行信道RX1
        # @type ChannelsDataRX1: Array
        # @param ChannelsDataRX2: 数据下行信道RX2
        # @type ChannelsDataRX2: Array
        # @param ChannelsJoinUp: 入网上行信道
        # @type ChannelsJoinUp: Array
        # @param ChannelsJoinRX1: 入网下行RX1信道
        # @type ChannelsJoinRX1: Array
        # @param ChannelsJoinRX2: 入网下行RX2信道
        # @type ChannelsJoinRX2: Array
        # @param CreateTime: 创建时间
        # @type CreateTime: Integer

        attr_accessor :FreqId, :FreqName, :Description, :ChannelsDataUp, :ChannelsDataRX1, :ChannelsDataRX2, :ChannelsJoinUp, :ChannelsJoinRX1, :ChannelsJoinRX2, :CreateTime
        
        def initialize(freqid=nil, freqname=nil, description=nil, channelsdataup=nil, channelsdatarx1=nil, channelsdatarx2=nil, channelsjoinup=nil, channelsjoinrx1=nil, channelsjoinrx2=nil, createtime=nil)
          @FreqId = freqid
          @FreqName = freqname
          @Description = description
          @ChannelsDataUp = channelsdataup
          @ChannelsDataRX1 = channelsdatarx1
          @ChannelsDataRX2 = channelsdatarx2
          @ChannelsJoinUp = channelsjoinup
          @ChannelsJoinRX1 = channelsjoinrx1
          @ChannelsJoinRX2 = channelsjoinrx2
          @CreateTime = createtime
        end

        def deserialize(params)
          @FreqId = params['FreqId']
          @FreqName = params['FreqName']
          @Description = params['Description']
          @ChannelsDataUp = params['ChannelsDataUp']
          @ChannelsDataRX1 = params['ChannelsDataRX1']
          @ChannelsDataRX2 = params['ChannelsDataRX2']
          @ChannelsJoinUp = params['ChannelsJoinUp']
          @ChannelsJoinRX1 = params['ChannelsJoinRX1']
          @ChannelsJoinRX2 = params['ChannelsJoinRX2']
          @CreateTime = params['CreateTime']
        end
      end

      # LoRa 网关信息
      class LoRaGatewayItem < TencentCloud::Common::AbstractModel
        # @param GatewayId: LoRa 网关Id
        # @type GatewayId: String
        # @param IsPublic: 是否是公开网关
        # @type IsPublic: Boolean
        # @param Description: 网关描述
        # @type Description: String
        # @param Name: 网关名称
        # @type Name: String
        # @param Position: 网关位置信息
        # @type Position: String
        # @param PositionDetails: 网关位置详情
        # @type PositionDetails: String
        # @param Location: LoRa 网关位置坐标
        # @type Location: :class:`Tencentcloud::Iotexplorer.v20190423.models.LoRaGatewayLocation`
        # @param UpdatedAt: 最后更新时间
        # @type UpdatedAt: String
        # @param CreatedAt: 创建时间
        # @type CreatedAt: String
        # @param LastSeenAt: 最后上报时间
        # @type LastSeenAt: String
        # @param FrequencyId: 频点ID
        # @type FrequencyId: String

        attr_accessor :GatewayId, :IsPublic, :Description, :Name, :Position, :PositionDetails, :Location, :UpdatedAt, :CreatedAt, :LastSeenAt, :FrequencyId
        
        def initialize(gatewayid=nil, ispublic=nil, description=nil, name=nil, position=nil, positiondetails=nil, location=nil, updatedat=nil, createdat=nil, lastseenat=nil, frequencyid=nil)
          @GatewayId = gatewayid
          @IsPublic = ispublic
          @Description = description
          @Name = name
          @Position = position
          @PositionDetails = positiondetails
          @Location = location
          @UpdatedAt = updatedat
          @CreatedAt = createdat
          @LastSeenAt = lastseenat
          @FrequencyId = frequencyid
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @IsPublic = params['IsPublic']
          @Description = params['Description']
          @Name = params['Name']
          @Position = params['Position']
          @PositionDetails = params['PositionDetails']
          unless params['Location'].nil?
            @Location = LoRaGatewayLocation.new
            @Location.deserialize(params['Location'])
          end
          @UpdatedAt = params['UpdatedAt']
          @CreatedAt = params['CreatedAt']
          @LastSeenAt = params['LastSeenAt']
          @FrequencyId = params['FrequencyId']
        end
      end

      # 网关坐标
      class LoRaGatewayLocation < TencentCloud::Common::AbstractModel
        # @param Accuracy: 准确度
        # @type Accuracy: Float
        # @param Altitude: 海拔
        # @type Altitude: Float
        # @param Latitude: 纬度
        # @type Latitude: Float
        # @param Longitude: 精度
        # @type Longitude: Float

        attr_accessor :Accuracy, :Altitude, :Latitude, :Longitude
        
        def initialize(accuracy=nil, altitude=nil, latitude=nil, longitude=nil)
          @Accuracy = accuracy
          @Altitude = altitude
          @Latitude = latitude
          @Longitude = longitude
        end

        def deserialize(params)
          @Accuracy = params['Accuracy']
          @Altitude = params['Altitude']
          @Latitude = params['Latitude']
          @Longitude = params['Longitude']
        end
      end

      # ModifyFenceBind请求参数结构体
      class ModifyFenceBindRequest < TencentCloud::Common::AbstractModel
        # @param FenceId: 围栏Id
        # @type FenceId: Integer
        # @param Items: 围栏绑定的产品列表
        # @type Items: Array

        attr_accessor :FenceId, :Items
        
        def initialize(fenceid=nil, items=nil)
          @FenceId = fenceid
          @Items = items
        end

        def deserialize(params)
          @FenceId = params['FenceId']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              fencebindproductitem_tmp = FenceBindProductItem.new
              fencebindproductitem_tmp.deserialize(i)
              @Items << fencebindproductitem_tmp
            end
          end
        end
      end

      # ModifyFenceBind返回参数结构体
      class ModifyFenceBindResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # ModifyLoRaFrequency请求参数结构体
      class ModifyLoRaFrequencyRequest < TencentCloud::Common::AbstractModel
        # @param FreqId: 频点唯一ID
        # @type FreqId: String
        # @param FreqName: 频点名称
        # @type FreqName: String
        # @param Description: 频点描述
        # @type Description: String
        # @param ChannelsDataUp: 数据上行信道
        # @type ChannelsDataUp: Array
        # @param ChannelsDataRX1: 数据下行信道RX1
        # @type ChannelsDataRX1: Array
        # @param ChannelsDataRX2: 数据下行信道RX2
        # @type ChannelsDataRX2: Array
        # @param ChannelsJoinUp: 入网上行信道
        # @type ChannelsJoinUp: Array
        # @param ChannelsJoinRX1: 入网下行信道RX1
        # @type ChannelsJoinRX1: Array
        # @param ChannelsJoinRX2: 入网下行信道RX2
        # @type ChannelsJoinRX2: Array

        attr_accessor :FreqId, :FreqName, :Description, :ChannelsDataUp, :ChannelsDataRX1, :ChannelsDataRX2, :ChannelsJoinUp, :ChannelsJoinRX1, :ChannelsJoinRX2
        
        def initialize(freqid=nil, freqname=nil, description=nil, channelsdataup=nil, channelsdatarx1=nil, channelsdatarx2=nil, channelsjoinup=nil, channelsjoinrx1=nil, channelsjoinrx2=nil)
          @FreqId = freqid
          @FreqName = freqname
          @Description = description
          @ChannelsDataUp = channelsdataup
          @ChannelsDataRX1 = channelsdatarx1
          @ChannelsDataRX2 = channelsdatarx2
          @ChannelsJoinUp = channelsjoinup
          @ChannelsJoinRX1 = channelsjoinrx1
          @ChannelsJoinRX2 = channelsjoinrx2
        end

        def deserialize(params)
          @FreqId = params['FreqId']
          @FreqName = params['FreqName']
          @Description = params['Description']
          @ChannelsDataUp = params['ChannelsDataUp']
          @ChannelsDataRX1 = params['ChannelsDataRX1']
          @ChannelsDataRX2 = params['ChannelsDataRX2']
          @ChannelsJoinUp = params['ChannelsJoinUp']
          @ChannelsJoinRX1 = params['ChannelsJoinRX1']
          @ChannelsJoinRX2 = params['ChannelsJoinRX2']
        end
      end

      # ModifyLoRaFrequency返回参数结构体
      class ModifyLoRaFrequencyResponse < TencentCloud::Common::AbstractModel
        # @param Data: 频点信息
        # @type Data: :class:`Tencentcloud::Iotexplorer.v20190423.models.LoRaFrequencyEntry`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = LoRaFrequencyEntry.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ModifyLoRaGateway请求参数结构体
      class ModifyLoRaGatewayRequest < TencentCloud::Common::AbstractModel
        # @param Description: 描述信息
        # @type Description: String
        # @param GatewayId: LoRa网关Id
        # @type GatewayId: String
        # @param Location: LoRa网关位置坐标
        # @type Location: :class:`Tencentcloud::Iotexplorer.v20190423.models.LoRaGatewayLocation`
        # @param Name: LoRa网关名称
        # @type Name: String
        # @param IsPublic: 是否公开可见
        # @type IsPublic: Boolean
        # @param Position: 位置信息
        # @type Position: String
        # @param PositionDetails: 位置详情
        # @type PositionDetails: String
        # @param FrequencyId: 频点ID
        # @type FrequencyId: String

        attr_accessor :Description, :GatewayId, :Location, :Name, :IsPublic, :Position, :PositionDetails, :FrequencyId
        
        def initialize(description=nil, gatewayid=nil, location=nil, name=nil, ispublic=nil, position=nil, positiondetails=nil, frequencyid=nil)
          @Description = description
          @GatewayId = gatewayid
          @Location = location
          @Name = name
          @IsPublic = ispublic
          @Position = position
          @PositionDetails = positiondetails
          @FrequencyId = frequencyid
        end

        def deserialize(params)
          @Description = params['Description']
          @GatewayId = params['GatewayId']
          unless params['Location'].nil?
            @Location = LoRaGatewayLocation.new
            @Location.deserialize(params['Location'])
          end
          @Name = params['Name']
          @IsPublic = params['IsPublic']
          @Position = params['Position']
          @PositionDetails = params['PositionDetails']
          @FrequencyId = params['FrequencyId']
        end
      end

      # ModifyLoRaGateway返回参数结构体
      class ModifyLoRaGatewayResponse < TencentCloud::Common::AbstractModel
        # @param Gateway: 返回网关数据
        # @type Gateway: :class:`Tencentcloud::Iotexplorer.v20190423.models.LoRaGatewayItem`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Gateway, :RequestId
        
        def initialize(gateway=nil, requestid=nil)
          @Gateway = gateway
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Gateway'].nil?
            @Gateway = LoRaGatewayItem.new
            @Gateway.deserialize(params['Gateway'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ModifyModelDefinition请求参数结构体
      class ModifyModelDefinitionRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param ModelSchema: 数据模板定义
        # @type ModelSchema: String

        attr_accessor :ProductId, :ModelSchema
        
        def initialize(productid=nil, modelschema=nil)
          @ProductId = productid
          @ModelSchema = modelschema
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @ModelSchema = params['ModelSchema']
        end
      end

      # ModifyModelDefinition返回参数结构体
      class ModifyModelDefinitionResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # ModifyPositionFence请求参数结构体
      class ModifyPositionFenceRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # ModifyPositionFence返回参数结构体
      class ModifyPositionFenceResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # ModifyPositionSpace请求参数结构体
      class ModifyPositionSpaceRequest < TencentCloud::Common::AbstractModel
        # @param SpaceId: 位置空间Id
        # @type SpaceId: String
        # @param SpaceName: 位置空间名称
        # @type SpaceName: String
        # @param AuthorizeType: 授权类型
        # @type AuthorizeType: Integer
        # @param ProductIdList: 产品列表
        # @type ProductIdList: Array
        # @param Description: 位置空间描述
        # @type Description: String
        # @param Icon: 缩略图
        # @type Icon: String

        attr_accessor :SpaceId, :SpaceName, :AuthorizeType, :ProductIdList, :Description, :Icon
        
        def initialize(spaceid=nil, spacename=nil, authorizetype=nil, productidlist=nil, description=nil, icon=nil)
          @SpaceId = spaceid
          @SpaceName = spacename
          @AuthorizeType = authorizetype
          @ProductIdList = productidlist
          @Description = description
          @Icon = icon
        end

        def deserialize(params)
          @SpaceId = params['SpaceId']
          @SpaceName = params['SpaceName']
          @AuthorizeType = params['AuthorizeType']
          @ProductIdList = params['ProductIdList']
          @Description = params['Description']
          @Icon = params['Icon']
        end
      end

      # ModifyPositionSpace返回参数结构体
      class ModifyPositionSpaceResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # ModifyProject请求参数结构体
      class ModifyProjectRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param ProjectName: 项目名称
        # @type ProjectName: String
        # @param ProjectDesc: 项目描述
        # @type ProjectDesc: String

        attr_accessor :ProjectId, :ProjectName, :ProjectDesc
        
        def initialize(projectid=nil, projectname=nil, projectdesc=nil)
          @ProjectId = projectid
          @ProjectName = projectname
          @ProjectDesc = projectdesc
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @ProjectName = params['ProjectName']
          @ProjectDesc = params['ProjectDesc']
        end
      end

      # ModifyProject返回参数结构体
      class ModifyProjectResponse < TencentCloud::Common::AbstractModel
        # @param Project: 项目详情
        # @type Project: :class:`Tencentcloud::Iotexplorer.v20190423.models.ProjectEntry`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Project, :RequestId
        
        def initialize(project=nil, requestid=nil)
          @Project = project
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Project'].nil?
            @Project = ProjectEntry.new
            @Project.deserialize(params['Project'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ModifySpaceProperty请求参数结构体
      class ModifySpacePropertyRequest < TencentCloud::Common::AbstractModel
        # @param SpaceId: 位置空间Id
        # @type SpaceId: String
        # @param ProductId: 产品Id
        # @type ProductId: String
        # @param Data: 产品属性
        # @type Data: String

        attr_accessor :SpaceId, :ProductId, :Data
        
        def initialize(spaceid=nil, productid=nil, data=nil)
          @SpaceId = spaceid
          @ProductId = productid
          @Data = data
        end

        def deserialize(params)
          @SpaceId = params['SpaceId']
          @ProductId = params['ProductId']
          @Data = params['Data']
        end
      end

      # ModifySpaceProperty返回参数结构体
      class ModifySpacePropertyResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # ModifyStudioProduct请求参数结构体
      class ModifyStudioProductRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param ProductName: 产品名称
        # @type ProductName: String
        # @param ProductDesc: 产品描述
        # @type ProductDesc: String
        # @param ModuleId: 模型ID
        # @type ModuleId: Integer
        # @param EnableProductScript: 是否打开二进制转Json功能, 取值为字符串 true/false
        # @type EnableProductScript: String

        attr_accessor :ProductId, :ProductName, :ProductDesc, :ModuleId, :EnableProductScript
        
        def initialize(productid=nil, productname=nil, productdesc=nil, moduleid=nil, enableproductscript=nil)
          @ProductId = productid
          @ProductName = productname
          @ProductDesc = productdesc
          @ModuleId = moduleid
          @EnableProductScript = enableproductscript
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @ProductName = params['ProductName']
          @ProductDesc = params['ProductDesc']
          @ModuleId = params['ModuleId']
          @EnableProductScript = params['EnableProductScript']
        end
      end

      # ModifyStudioProduct返回参数结构体
      class ModifyStudioProductResponse < TencentCloud::Common::AbstractModel
        # @param Product: 产品描述
        # @type Product: :class:`Tencentcloud::Iotexplorer.v20190423.models.ProductEntry`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Product, :RequestId
        
        def initialize(product=nil, requestid=nil)
          @Product = product
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Product'].nil?
            @Product = ProductEntry.new
            @Product.deserialize(params['Product'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ModifyTopicPolicy请求参数结构体
      class ModifyTopicPolicyRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param TopicName: 更新前Topic名
        # @type TopicName: String
        # @param NewTopicName: 更新后Topic名
        # @type NewTopicName: String
        # @param Privilege: Topic权限
        # @type Privilege: Integer

        attr_accessor :ProductId, :TopicName, :NewTopicName, :Privilege
        
        def initialize(productid=nil, topicname=nil, newtopicname=nil, privilege=nil)
          @ProductId = productid
          @TopicName = topicname
          @NewTopicName = newtopicname
          @Privilege = privilege
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @TopicName = params['TopicName']
          @NewTopicName = params['NewTopicName']
          @Privilege = params['Privilege']
        end
      end

      # ModifyTopicPolicy返回参数结构体
      class ModifyTopicPolicyResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # ModifyTopicRule请求参数结构体
      class ModifyTopicRuleRequest < TencentCloud::Common::AbstractModel
        # @param RuleName: 规则名称
        # @type RuleName: String
        # @param TopicRulePayload: 替换的规则包体
        # @type TopicRulePayload: :class:`Tencentcloud::Iotexplorer.v20190423.models.TopicRulePayload`

        attr_accessor :RuleName, :TopicRulePayload
        
        def initialize(rulename=nil, topicrulepayload=nil)
          @RuleName = rulename
          @TopicRulePayload = topicrulepayload
        end

        def deserialize(params)
          @RuleName = params['RuleName']
          unless params['TopicRulePayload'].nil?
            @TopicRulePayload = TopicRulePayload.new
            @TopicRulePayload.deserialize(params['TopicRulePayload'])
          end
        end
      end

      # ModifyTopicRule返回参数结构体
      class ModifyTopicRuleResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # 围栏详细信息(包含创建时间及更新时间)
      class PositionFenceInfo < TencentCloud::Common::AbstractModel
        # @param GeoFence: 围栏信息
        # @type GeoFence: :class:`Tencentcloud::Iotexplorer.v20190423.models.PositionFenceItem`
        # @param CreateTime: 围栏创建时间
        # @type CreateTime: Integer
        # @param UpdateTime: 围栏更新时间
        # @type UpdateTime: Integer

        attr_accessor :GeoFence, :CreateTime, :UpdateTime
        
        def initialize(geofence=nil, createtime=nil, updatetime=nil)
          @GeoFence = geofence
          @CreateTime = createtime
          @UpdateTime = updatetime
        end

        def deserialize(params)
          unless params['GeoFence'].nil?
            @GeoFence = PositionFenceItem.new
            @GeoFence.deserialize(params['GeoFence'])
          end
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
        end
      end

      # 围栏信息
      class PositionFenceItem < TencentCloud::Common::AbstractModel
        # @param FenceId: 围栏Id
        # @type FenceId: Integer
        # @param SpaceId: 位置空间Id
        # @type SpaceId: String
        # @param FenceName: 围栏名称
        # @type FenceName: String
        # @param FenceDesc: 围栏描述
        # @type FenceDesc: String
        # @param FenceArea: 围栏区域信息，采用 GeoJSON 格式
        # @type FenceArea: String

        attr_accessor :FenceId, :SpaceId, :FenceName, :FenceDesc, :FenceArea
        
        def initialize(fenceid=nil, spaceid=nil, fencename=nil, fencedesc=nil, fencearea=nil)
          @FenceId = fenceid
          @SpaceId = spaceid
          @FenceName = fencename
          @FenceDesc = fencedesc
          @FenceArea = fencearea
        end

        def deserialize(params)
          @FenceId = params['FenceId']
          @SpaceId = params['SpaceId']
          @FenceName = params['FenceName']
          @FenceDesc = params['FenceDesc']
          @FenceArea = params['FenceArea']
        end
      end

      # 位置点
      class PositionItem < TencentCloud::Common::AbstractModel
        # @param CreateTime: 位置点的时间
        # @type CreateTime: Integer
        # @param Longitude: 位置点的经度
        # @type Longitude: Float
        # @param Latitude: 位置点的纬度
        # @type Latitude: Float

        attr_accessor :CreateTime, :Longitude, :Latitude
        
        def initialize(createtime=nil, longitude=nil, latitude=nil)
          @CreateTime = createtime
          @Longitude = longitude
          @Latitude = latitude
        end

        def deserialize(params)
          @CreateTime = params['CreateTime']
          @Longitude = params['Longitude']
          @Latitude = params['Latitude']
        end
      end

      # 位置空间详情
      class PositionSpaceInfo < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目Id
        # @type ProjectId: String
        # @param SpaceId: 位置空间Id
        # @type SpaceId: String
        # @param SpaceName: 位置空间名称
        # @type SpaceName: String
        # @param AuthorizeType: 授权类型
        # @type AuthorizeType: Integer
        # @param Description: 描述备注
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param ProductIdList: 产品列表
        # @type ProductIdList: Array
        # @param Icon: 缩略图
        # @type Icon: String
        # @param CreateTime: 创建时间
        # @type CreateTime: Integer
        # @param UpdateTime: 更新时间
        # @type UpdateTime: Integer
        # @param Zoom: 用户自定义地图缩放
        # @type Zoom: Integer

        attr_accessor :ProjectId, :SpaceId, :SpaceName, :AuthorizeType, :Description, :ProductIdList, :Icon, :CreateTime, :UpdateTime, :Zoom
        
        def initialize(projectid=nil, spaceid=nil, spacename=nil, authorizetype=nil, description=nil, productidlist=nil, icon=nil, createtime=nil, updatetime=nil, zoom=nil)
          @ProjectId = projectid
          @SpaceId = spaceid
          @SpaceName = spacename
          @AuthorizeType = authorizetype
          @Description = description
          @ProductIdList = productidlist
          @Icon = icon
          @CreateTime = createtime
          @UpdateTime = updatetime
          @Zoom = zoom
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @SpaceId = params['SpaceId']
          @SpaceName = params['SpaceName']
          @AuthorizeType = params['AuthorizeType']
          @Description = params['Description']
          @ProductIdList = params['ProductIdList']
          @Icon = params['Icon']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @Zoom = params['Zoom']
        end
      end

      # 产品设备位置信息
      class ProductDevicesPositionItem < TencentCloud::Common::AbstractModel
        # @param Items: 设备位置列表
        # @type Items: Array
        # @param ProductId: 产品标识
        # @type ProductId: String
        # @param Total: 设备位置数量
        # @type Total: Integer

        attr_accessor :Items, :ProductId, :Total
        
        def initialize(items=nil, productid=nil, total=nil)
          @Items = items
          @ProductId = productid
          @Total = total
        end

        def deserialize(params)
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              devicepositionitem_tmp = DevicePositionItem.new
              devicepositionitem_tmp.deserialize(i)
              @Items << devicepositionitem_tmp
            end
          end
          @ProductId = params['ProductId']
          @Total = params['Total']
        end
      end

      # 产品详情
      class ProductEntry < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param ProductName: 产品名称
        # @type ProductName: String
        # @param CategoryId: 产品分组模板ID
        # @type CategoryId: Integer
        # @param EncryptionType: 加密类型
        # @type EncryptionType: String
        # @param NetType: 连接类型
        # @type NetType: String
        # @param DataProtocol: 数据协议
        # @type DataProtocol: Integer
        # @param ProductDesc: 产品描述
        # @type ProductDesc: String
        # @param DevStatus: 状态
        # @type DevStatus: String
        # @param CreateTime: 创建时间
        # @type CreateTime: Integer
        # @param UpdateTime: 更新时间
        # @type UpdateTime: Integer
        # @param Region: 区域
        # @type Region: String
        # @param ProductType: 产品类型
        # @type ProductType: Integer
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param ModuleId: 产品ModuleId
        # @type ModuleId: Integer
        # @param EnableProductScript: 是否使用脚本进行二进制转json功能 可以取值 true / false
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnableProductScript: String
        # @param CreateUserId: 创建人 UinId
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateUserId: Integer
        # @param CreatorNickName: 创建者昵称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatorNickName: String

        attr_accessor :ProductId, :ProductName, :CategoryId, :EncryptionType, :NetType, :DataProtocol, :ProductDesc, :DevStatus, :CreateTime, :UpdateTime, :Region, :ProductType, :ProjectId, :ModuleId, :EnableProductScript, :CreateUserId, :CreatorNickName
        
        def initialize(productid=nil, productname=nil, categoryid=nil, encryptiontype=nil, nettype=nil, dataprotocol=nil, productdesc=nil, devstatus=nil, createtime=nil, updatetime=nil, region=nil, producttype=nil, projectid=nil, moduleid=nil, enableproductscript=nil, createuserid=nil, creatornickname=nil)
          @ProductId = productid
          @ProductName = productname
          @CategoryId = categoryid
          @EncryptionType = encryptiontype
          @NetType = nettype
          @DataProtocol = dataprotocol
          @ProductDesc = productdesc
          @DevStatus = devstatus
          @CreateTime = createtime
          @UpdateTime = updatetime
          @Region = region
          @ProductType = producttype
          @ProjectId = projectid
          @ModuleId = moduleid
          @EnableProductScript = enableproductscript
          @CreateUserId = createuserid
          @CreatorNickName = creatornickname
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @ProductName = params['ProductName']
          @CategoryId = params['CategoryId']
          @EncryptionType = params['EncryptionType']
          @NetType = params['NetType']
          @DataProtocol = params['DataProtocol']
          @ProductDesc = params['ProductDesc']
          @DevStatus = params['DevStatus']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @Region = params['Region']
          @ProductType = params['ProductType']
          @ProjectId = params['ProjectId']
          @ModuleId = params['ModuleId']
          @EnableProductScript = params['EnableProductScript']
          @CreateUserId = params['CreateUserId']
          @CreatorNickName = params['CreatorNickName']
        end
      end

      # 产品模型定义
      class ProductModelDefinition < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param ModelDefine: 模型定义
        # @type ModelDefine: String
        # @param UpdateTime: 更新时间，秒级时间戳
        # @type UpdateTime: Integer
        # @param CreateTime: 创建时间，秒级时间戳
        # @type CreateTime: Integer
        # @param CategoryModel: 产品所属分类的模型快照（产品创建时刻的）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CategoryModel: String
        # @param NetTypeModel: 产品的连接类型的模型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NetTypeModel: String

        attr_accessor :ProductId, :ModelDefine, :UpdateTime, :CreateTime, :CategoryModel, :NetTypeModel
        
        def initialize(productid=nil, modeldefine=nil, updatetime=nil, createtime=nil, categorymodel=nil, nettypemodel=nil)
          @ProductId = productid
          @ModelDefine = modeldefine
          @UpdateTime = updatetime
          @CreateTime = createtime
          @CategoryModel = categorymodel
          @NetTypeModel = nettypemodel
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @ModelDefine = params['ModelDefine']
          @UpdateTime = params['UpdateTime']
          @CreateTime = params['CreateTime']
          @CategoryModel = params['CategoryModel']
          @NetTypeModel = params['NetTypeModel']
        end
      end

      # 项目详情
      class ProjectEntry < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param ProjectName: 项目名称
        # @type ProjectName: String
        # @param ProjectDesc: 项目描述
        # @type ProjectDesc: String
        # @param CreateTime: 创建时间，unix时间戳
        # @type CreateTime: Integer
        # @param UpdateTime: 更新时间，unix时间戳
        # @type UpdateTime: Integer

        attr_accessor :ProjectId, :ProjectName, :ProjectDesc, :CreateTime, :UpdateTime
        
        def initialize(projectid=nil, projectname=nil, projectdesc=nil, createtime=nil, updatetime=nil)
          @ProjectId = projectid
          @ProjectName = projectname
          @ProjectDesc = projectdesc
          @CreateTime = createtime
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @ProjectName = params['ProjectName']
          @ProjectDesc = params['ProjectDesc']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
        end
      end

      # 项目详情
      class ProjectEntryEx < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param ProjectName: 项目名称
        # @type ProjectName: String
        # @param ProjectDesc: 项目描述
        # @type ProjectDesc: String
        # @param CreateTime: 项目创建时间，unix时间戳
        # @type CreateTime: Integer
        # @param UpdateTime: 项目更新时间，unix时间戳
        # @type UpdateTime: Integer
        # @param ProductCount: 产品数量
        # @type ProductCount: Integer
        # @param NativeAppCount: NativeApp数量
        # @type NativeAppCount: Integer
        # @param WebAppCount: WebApp数量
        # @type WebAppCount: Integer
        # @param InstanceId: 实例ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceId: String
        # @param ApplicationCount: 应用数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApplicationCount: Integer
        # @param DeviceCount: 设备注册总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeviceCount: Integer

        attr_accessor :ProjectId, :ProjectName, :ProjectDesc, :CreateTime, :UpdateTime, :ProductCount, :NativeAppCount, :WebAppCount, :InstanceId, :ApplicationCount, :DeviceCount
        
        def initialize(projectid=nil, projectname=nil, projectdesc=nil, createtime=nil, updatetime=nil, productcount=nil, nativeappcount=nil, webappcount=nil, instanceid=nil, applicationcount=nil, devicecount=nil)
          @ProjectId = projectid
          @ProjectName = projectname
          @ProjectDesc = projectdesc
          @CreateTime = createtime
          @UpdateTime = updatetime
          @ProductCount = productcount
          @NativeAppCount = nativeappcount
          @WebAppCount = webappcount
          @InstanceId = instanceid
          @ApplicationCount = applicationcount
          @DeviceCount = devicecount
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @ProjectName = params['ProjectName']
          @ProjectDesc = params['ProjectDesc']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @ProductCount = params['ProductCount']
          @NativeAppCount = params['NativeAppCount']
          @WebAppCount = params['WebAppCount']
          @InstanceId = params['InstanceId']
          @ApplicationCount = params['ApplicationCount']
          @DeviceCount = params['DeviceCount']
        end
      end

      # PublishMessage请求参数结构体
      class PublishMessageRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param Topic: 消息发往的主题
        # @type Topic: String
        # @param Payload: 云端下发到设备的控制报文
        # @type Payload: String
        # @param Qos: 消息服务质量等级，取值为0或1
        # @type Qos: Integer
        # @param PayloadEncoding: Payload的内容编码格式，取值为base64或空。base64表示云端将接收到的base64编码后的报文再转换成二进制报文下发至设备，为空表示不作转换，透传下发至设备
        # @type PayloadEncoding: String

        attr_accessor :ProductId, :DeviceName, :Topic, :Payload, :Qos, :PayloadEncoding
        
        def initialize(productid=nil, devicename=nil, topic=nil, payload=nil, qos=nil, payloadencoding=nil)
          @ProductId = productid
          @DeviceName = devicename
          @Topic = topic
          @Payload = payload
          @Qos = qos
          @PayloadEncoding = payloadencoding
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @Topic = params['Topic']
          @Payload = params['Payload']
          @Qos = params['Qos']
          @PayloadEncoding = params['PayloadEncoding']
        end
      end

      # PublishMessage返回参数结构体
      class PublishMessageResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # PublishRRPCMessage请求参数结构体
      class PublishRRPCMessageRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param Payload: 消息内容，utf8编码
        # @type Payload: String

        attr_accessor :ProductId, :DeviceName, :Payload
        
        def initialize(productid=nil, devicename=nil, payload=nil)
          @ProductId = productid
          @DeviceName = devicename
          @Payload = payload
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @Payload = params['Payload']
        end
      end

      # PublishRRPCMessage返回参数结构体
      class PublishRRPCMessageResponse < TencentCloud::Common::AbstractModel
        # @param MessageId: RRPC消息ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MessageId: Integer
        # @param PayloadBase64: 设备回复的消息内容，采用base64编码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PayloadBase64: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MessageId, :PayloadBase64, :RequestId
        
        def initialize(messageid=nil, payloadbase64=nil, requestid=nil)
          @MessageId = messageid
          @PayloadBase64 = payloadbase64
          @RequestId = requestid
        end

        def deserialize(params)
          @MessageId = params['MessageId']
          @PayloadBase64 = params['PayloadBase64']
          @RequestId = params['RequestId']
        end
      end

      # ReleaseStudioProduct请求参数结构体
      class ReleaseStudioProductRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param DevStatus: 产品DevStatus
        # @type DevStatus: String

        attr_accessor :ProductId, :DevStatus
        
        def initialize(productid=nil, devstatus=nil)
          @ProductId = productid
          @DevStatus = devstatus
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DevStatus = params['DevStatus']
        end
      end

      # ReleaseStudioProduct返回参数结构体
      class ReleaseStudioProductResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # 搜索关键词
      class SearchKeyword < TencentCloud::Common::AbstractModel
        # @param Key: 搜索条件的Key
        # @type Key: String
        # @param Value: 搜索条件的值
        # @type Value: String

        attr_accessor :Key, :Value
        
        def initialize(key=nil, value=nil)
          @Key = key
          @Value = value
        end

        def deserialize(params)
          @Key = params['Key']
          @Value = params['Value']
        end
      end

      # SearchPositionSpace请求参数结构体
      class SearchPositionSpaceRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目Id
        # @type ProjectId: String
        # @param SpaceName: 位置空间名字
        # @type SpaceName: String
        # @param Offset: 偏移量，从0开始
        # @type Offset: Integer
        # @param Limit: 最大获取数量
        # @type Limit: Integer

        attr_accessor :ProjectId, :SpaceName, :Offset, :Limit
        
        def initialize(projectid=nil, spacename=nil, offset=nil, limit=nil)
          @ProjectId = projectid
          @SpaceName = spacename
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @SpaceName = params['SpaceName']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # SearchPositionSpace返回参数结构体
      class SearchPositionSpaceResponse < TencentCloud::Common::AbstractModel
        # @param List: 位置空间列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type List: Array
        # @param Total: 符合条件的位置空间个数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :List, :Total, :RequestId
        
        def initialize(list=nil, total=nil, requestid=nil)
          @List = list
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              positionspaceinfo_tmp = PositionSpaceInfo.new
              positionspaceinfo_tmp.deserialize(i)
              @List << positionspaceinfo_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # SearchStudioProduct请求参数结构体
      class SearchStudioProductRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: String
        # @param ProductName: 产品名称
        # @type ProductName: String
        # @param Limit: 列表Limit
        # @type Limit: Integer
        # @param Offset: 列表Offset
        # @type Offset: Integer
        # @param DevStatus: 产品Status
        # @type DevStatus: String
        # @param ProductId: 产品ID
        # @type ProductId: String

        attr_accessor :ProjectId, :ProductName, :Limit, :Offset, :DevStatus, :ProductId
        
        def initialize(projectid=nil, productname=nil, limit=nil, offset=nil, devstatus=nil, productid=nil)
          @ProjectId = projectid
          @ProductName = productname
          @Limit = limit
          @Offset = offset
          @DevStatus = devstatus
          @ProductId = productid
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @ProductName = params['ProductName']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @DevStatus = params['DevStatus']
          @ProductId = params['ProductId']
        end
      end

      # SearchStudioProduct返回参数结构体
      class SearchStudioProductResponse < TencentCloud::Common::AbstractModel
        # @param Products: 产品列表
        # @type Products: Array
        # @param Total: 产品数量
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Products, :Total, :RequestId
        
        def initialize(products=nil, total=nil, requestid=nil)
          @Products = products
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Products'].nil?
            @Products = []
            params['Products'].each do |i|
              productentry_tmp = ProductEntry.new
              productentry_tmp.deserialize(i)
              @Products << productentry_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # SearchTopicRule请求参数结构体
      class SearchTopicRuleRequest < TencentCloud::Common::AbstractModel
        # @param RuleName: 规则名
        # @type RuleName: String

        attr_accessor :RuleName
        
        def initialize(rulename=nil)
          @RuleName = rulename
        end

        def deserialize(params)
          @RuleName = params['RuleName']
        end
      end

      # SearchTopicRule返回参数结构体
      class SearchTopicRuleResponse < TencentCloud::Common::AbstractModel
        # @param TotalCnt: 搜索到的规则总数
        # @type TotalCnt: Integer
        # @param Rules: 规则信息列表
        # @type Rules: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCnt, :Rules, :RequestId
        
        def initialize(totalcnt=nil, rules=nil, requestid=nil)
          @TotalCnt = totalcnt
          @Rules = rules
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCnt = params['TotalCnt']
          unless params['Rules'].nil?
            @Rules = []
            params['Rules'].each do |i|
              topicruleinfo_tmp = TopicRuleInfo.new
              topicruleinfo_tmp.deserialize(i)
              @Rules << topicruleinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # Topic信息, 包括Topic名字和权限
      class TopicItem < TencentCloud::Common::AbstractModel
        # @param TopicName: Topic名称
        # @type TopicName: String
        # @param Privilege: Topic权限 , 1上报  2下发
        # @type Privilege: Integer

        attr_accessor :TopicName, :Privilege
        
        def initialize(topicname=nil, privilege=nil)
          @TopicName = topicname
          @Privilege = privilege
        end

        def deserialize(params)
          @TopicName = params['TopicName']
          @Privilege = params['Privilege']
        end
      end

      # TopicRule结构
      class TopicRule < TencentCloud::Common::AbstractModel
        # @param RuleName: 规则名称。
        # @type RuleName: String
        # @param Sql: 规则的SQL语句，如： SELECT * FROM 'pid/dname/event'，然后对其进行base64编码，得：U0VMRUNUICogRlJPTSAncGlkL2RuYW1lL2V2ZW50Jw==
        # @type Sql: String
        # @param Description: 规则描述。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param Actions: 行为的JSON字符串。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Actions: String
        # @param RuleDisabled: 是否禁用规则
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleDisabled: Boolean

        attr_accessor :RuleName, :Sql, :Description, :Actions, :RuleDisabled
        
        def initialize(rulename=nil, sql=nil, description=nil, actions=nil, ruledisabled=nil)
          @RuleName = rulename
          @Sql = sql
          @Description = description
          @Actions = actions
          @RuleDisabled = ruledisabled
        end

        def deserialize(params)
          @RuleName = params['RuleName']
          @Sql = params['Sql']
          @Description = params['Description']
          @Actions = params['Actions']
          @RuleDisabled = params['RuleDisabled']
        end
      end

      # 规则信息
      class TopicRuleInfo < TencentCloud::Common::AbstractModel
        # @param RuleName: 规则名称
        # @type RuleName: String
        # @param Description: 规则描述
        # @type Description: String
        # @param CreatedAt: 创建时间
        # @type CreatedAt: Integer
        # @param RuleDisabled: 规则是否禁用
        # @type RuleDisabled: Boolean

        attr_accessor :RuleName, :Description, :CreatedAt, :RuleDisabled
        
        def initialize(rulename=nil, description=nil, createdat=nil, ruledisabled=nil)
          @RuleName = rulename
          @Description = description
          @CreatedAt = createdat
          @RuleDisabled = ruledisabled
        end

        def deserialize(params)
          @RuleName = params['RuleName']
          @Description = params['Description']
          @CreatedAt = params['CreatedAt']
          @RuleDisabled = params['RuleDisabled']
        end
      end

      # TopicRulePayload结构
      class TopicRulePayload < TencentCloud::Common::AbstractModel
        # @param Sql: 规则的SQL语句，如： SELECT * FROM 'pid/dname/event'，然后对其进行base64编码，得：U0VMRUNUICogRlJPTSAncGlkL2RuYW1lL2V2ZW50Jw==
        # @type Sql: String
        # @param Actions: 行为的JSON字符串，大部分种类举例如下：
        # [
        # {
        # "republish": {
        # "topic": "TEST/test"
        # }
        # },
        # {
        # "forward": {
        # "api": "http://test.com:8080"
        # }
        # },
        # {
        # "ckafka": {
        # "instance": {
        # "id": "ckafka-test",
        # "name": ""
        # },
        # "topic": {
        # "id": "topic-test",
        # "name": "test"
        # },
        # "region": "gz"
        # }
        # },
        # {
        # "cmqqueue": {
        # "queuename": "queue-test-TEST",
        # "region": "gz"
        # }
        # },
        # {
        # "mysql": {
        # "instanceid": "cdb-test",
        # "region": "gz",
        # "username": "test",
        # "userpwd": "*****",
        # "dbname": "d_mqtt",
        # "tablename": "t_test",
        # "fieldpairs": [
        # {
        # "field": "test",
        # "value": "test"
        # }
        # ],
        # "devicetype": "CUSTOM"
        # }
        # }
        # ]
        # @type Actions: String
        # @param Description: 规则描述
        # @type Description: String
        # @param RuleDisabled: 是否禁用规则
        # @type RuleDisabled: Boolean

        attr_accessor :Sql, :Actions, :Description, :RuleDisabled
        
        def initialize(sql=nil, actions=nil, description=nil, ruledisabled=nil)
          @Sql = sql
          @Actions = actions
          @Description = description
          @RuleDisabled = ruledisabled
        end

        def deserialize(params)
          @Sql = params['Sql']
          @Actions = params['Actions']
          @Description = params['Description']
          @RuleDisabled = params['RuleDisabled']
        end
      end

      # UnbindDevices请求参数结构体
      class UnbindDevicesRequest < TencentCloud::Common::AbstractModel
        # @param GatewayProductId: 网关设备的产品ID
        # @type GatewayProductId: String
        # @param GatewayDeviceName: 网关设备的设备名
        # @type GatewayDeviceName: String
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param DeviceNames: 设备名列表
        # @type DeviceNames: Array

        attr_accessor :GatewayProductId, :GatewayDeviceName, :ProductId, :DeviceNames
        
        def initialize(gatewayproductid=nil, gatewaydevicename=nil, productid=nil, devicenames=nil)
          @GatewayProductId = gatewayproductid
          @GatewayDeviceName = gatewaydevicename
          @ProductId = productid
          @DeviceNames = devicenames
        end

        def deserialize(params)
          @GatewayProductId = params['GatewayProductId']
          @GatewayDeviceName = params['GatewayDeviceName']
          @ProductId = params['ProductId']
          @DeviceNames = params['DeviceNames']
        end
      end

      # UnbindDevices返回参数结构体
      class UnbindDevicesResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # UnbindProducts请求参数结构体
      class UnbindProductsRequest < TencentCloud::Common::AbstractModel
        # @param GatewayProductId: 网关产品ID
        # @type GatewayProductId: String
        # @param ProductIds: 待解绑的子产品ID数组
        # @type ProductIds: Array

        attr_accessor :GatewayProductId, :ProductIds
        
        def initialize(gatewayproductid=nil, productids=nil)
          @GatewayProductId = gatewayproductid
          @ProductIds = productids
        end

        def deserialize(params)
          @GatewayProductId = params['GatewayProductId']
          @ProductIds = params['ProductIds']
        end
      end

      # UnbindProducts返回参数结构体
      class UnbindProductsResponse < TencentCloud::Common::AbstractModel
        # @param GatewayDeviceNames: 绑定了待解绑的LoRa产品下的设备的网关设备列表
        # @type GatewayDeviceNames: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :GatewayDeviceNames, :RequestId
        
        def initialize(gatewaydevicenames=nil, requestid=nil)
          @GatewayDeviceNames = gatewaydevicenames
          @RequestId = requestid
        end

        def deserialize(params)
          @GatewayDeviceNames = params['GatewayDeviceNames']
          @RequestId = params['RequestId']
        end
      end

      # UpdateDevicesEnableState请求参数结构体
      class UpdateDevicesEnableStateRequest < TencentCloud::Common::AbstractModel
        # @param DevicesItems: 多个设备标识
        # @type DevicesItems: Array
        # @param Status: 1：启用；0：禁用
        # @type Status: Integer

        attr_accessor :DevicesItems, :Status
        
        def initialize(devicesitems=nil, status=nil)
          @DevicesItems = devicesitems
          @Status = status
        end

        def deserialize(params)
          unless params['DevicesItems'].nil?
            @DevicesItems = []
            params['DevicesItems'].each do |i|
              devicesitem_tmp = DevicesItem.new
              devicesitem_tmp.deserialize(i)
              @DevicesItems << devicesitem_tmp
            end
          end
          @Status = params['Status']
        end
      end

      # UpdateDevicesEnableState返回参数结构体
      class UpdateDevicesEnableStateResponse < TencentCloud::Common::AbstractModel
        # @param ResultCode: 删除的结果代码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResultCode: String
        # @param ResultMessage: 删除的结果信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResultMessage: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ResultCode, :ResultMessage, :RequestId
        
        def initialize(resultcode=nil, resultmessage=nil, requestid=nil)
          @ResultCode = resultcode
          @ResultMessage = resultmessage
          @RequestId = requestid
        end

        def deserialize(params)
          @ResultCode = params['ResultCode']
          @ResultMessage = params['ResultMessage']
          @RequestId = params['RequestId']
        end
      end

      # UpdateFirmware请求参数结构体
      class UpdateFirmwareRequest < TencentCloud::Common::AbstractModel
        # @param ProductID: 产品ID
        # @type ProductID: String
        # @param DeviceName: 设备名
        # @type DeviceName: String
        # @param FirmwareVersion: 固件新的版本号
        # @type FirmwareVersion: String
        # @param FirmwareOriVersion: 固件原版本号
        # @type FirmwareOriVersion: String
        # @param UpgradeMethod: 固件升级方式；0 静默升级 1 用户确认升级   不填默认静默升级
        # @type UpgradeMethod: Integer

        attr_accessor :ProductID, :DeviceName, :FirmwareVersion, :FirmwareOriVersion, :UpgradeMethod
        
        def initialize(productid=nil, devicename=nil, firmwareversion=nil, firmwareoriversion=nil, upgrademethod=nil)
          @ProductID = productid
          @DeviceName = devicename
          @FirmwareVersion = firmwareversion
          @FirmwareOriVersion = firmwareoriversion
          @UpgradeMethod = upgrademethod
        end

        def deserialize(params)
          @ProductID = params['ProductID']
          @DeviceName = params['DeviceName']
          @FirmwareVersion = params['FirmwareVersion']
          @FirmwareOriVersion = params['FirmwareOriVersion']
          @UpgradeMethod = params['UpgradeMethod']
        end
      end

      # UpdateFirmware返回参数结构体
      class UpdateFirmwareResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # UploadFirmware请求参数结构体
      class UploadFirmwareRequest < TencentCloud::Common::AbstractModel
        # @param ProductID: 产品ID
        # @type ProductID: String
        # @param FirmwareVersion: 固件版本号
        # @type FirmwareVersion: String
        # @param Md5sum: 固件的MD5值
        # @type Md5sum: String
        # @param FileSize: 固件的大小
        # @type FileSize: Integer
        # @param FirmwareName: 固件名称
        # @type FirmwareName: String
        # @param FirmwareDescription: 固件描述
        # @type FirmwareDescription: String
        # @param FwType: 固件升级模块；可选值 mcu|moudule
        # @type FwType: String

        attr_accessor :ProductID, :FirmwareVersion, :Md5sum, :FileSize, :FirmwareName, :FirmwareDescription, :FwType
        
        def initialize(productid=nil, firmwareversion=nil, md5sum=nil, filesize=nil, firmwarename=nil, firmwaredescription=nil, fwtype=nil)
          @ProductID = productid
          @FirmwareVersion = firmwareversion
          @Md5sum = md5sum
          @FileSize = filesize
          @FirmwareName = firmwarename
          @FirmwareDescription = firmwaredescription
          @FwType = fwtype
        end

        def deserialize(params)
          @ProductID = params['ProductID']
          @FirmwareVersion = params['FirmwareVersion']
          @Md5sum = params['Md5sum']
          @FileSize = params['FileSize']
          @FirmwareName = params['FirmwareName']
          @FirmwareDescription = params['FirmwareDescription']
          @FwType = params['FwType']
        end
      end

      # UploadFirmware返回参数结构体
      class UploadFirmwareResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

    end
  end
end

