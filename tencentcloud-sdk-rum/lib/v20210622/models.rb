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
  module Rum
    module V20210622
      # CreateLogExport请求参数结构体
      class CreateLogExportRequest < TencentCloud::Common::AbstractModel
        # @param ID: 项目ID
        # @type ID: Integer
        # @param StartTime: 日志导出起始时间
        # @type StartTime: String
        # @param EndTime: 日志导出结束时间
        # @type EndTime: String
        # @param Query: 日志导出检索语句
        # @type Query: String
        # @param Count: 日志导出数量, 最大值1000万
        # @type Count: Integer
        # @param Order: 日志导出时间排序。desc，asc，默认为desc
        # @type Order: String
        # @param Format: 日志导出数据格式。json，csv，默认为json
        # @type Format: String

        attr_accessor :ID, :StartTime, :EndTime, :Query, :Count, :Order, :Format
        
        def initialize(id=nil, starttime=nil, endtime=nil, query=nil, count=nil, order=nil, format=nil)
          @ID = id
          @StartTime = starttime
          @EndTime = endtime
          @Query = query
          @Count = count
          @Order = order
          @Format = format
        end

        def deserialize(params)
          @ID = params['ID']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Query = params['Query']
          @Count = params['Count']
          @Order = params['Order']
          @Format = params['Format']
        end
      end

      # CreateLogExport返回参数结构体
      class CreateLogExportResponse < TencentCloud::Common::AbstractModel
        # @param ExportID: 日志导出ID
        # @type ExportID: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ExportID, :RequestId
        
        def initialize(exportid=nil, requestid=nil)
          @ExportID = exportid
          @RequestId = requestid
        end

        def deserialize(params)
          @ExportID = params['ExportID']
          @RequestId = params['RequestId']
        end
      end

      # CreateOfflineLogConfig请求参数结构体
      class CreateOfflineLogConfigRequest < TencentCloud::Common::AbstractModel
        # @param ProjectKey: 项目唯一上报 key
        # @type ProjectKey: String
        # @param UniqueID: 需要监听的用户唯一标示(aid 或 uin)
        # @type UniqueID: String

        attr_accessor :ProjectKey, :UniqueID
        
        def initialize(projectkey=nil, uniqueid=nil)
          @ProjectKey = projectkey
          @UniqueID = uniqueid
        end

        def deserialize(params)
          @ProjectKey = params['ProjectKey']
          @UniqueID = params['UniqueID']
        end
      end

      # CreateOfflineLogConfig返回参数结构体
      class CreateOfflineLogConfigResponse < TencentCloud::Common::AbstractModel
        # @param Msg: 接口返回信息
        # @type Msg: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Msg, :RequestId
        
        def initialize(msg=nil, requestid=nil)
          @Msg = msg
          @RequestId = requestid
        end

        def deserialize(params)
          @Msg = params['Msg']
          @RequestId = params['RequestId']
        end
      end

      # CreateProject请求参数结构体
      class CreateProjectRequest < TencentCloud::Common::AbstractModel
        # @param Name: 创建的项目名(不为空且最长为 200)
        # @type Name: String
        # @param InstanceID: 业务系统 ID
        # @type InstanceID: String
        # @param Rate: 项目抽样率(大于等于 0)
        # @type Rate: String
        # @param EnableURLGroup: 是否开启聚类
        # @type EnableURLGroup: Integer
        # @param Type: 项目类型("web", "mp", "android", "ios", "node", "hippy", "weex", "viola", "rn")
        # @type Type: String
        # @param Repo: 项目对应仓库地址(可选，最长为 256)
        # @type Repo: String
        # @param URL: 项目对应网页地址(可选，最长为 256)
        # @type URL: String
        # @param Desc: 创建的项目描述(可选，最长为 1000)
        # @type Desc: String

        attr_accessor :Name, :InstanceID, :Rate, :EnableURLGroup, :Type, :Repo, :URL, :Desc
        
        def initialize(name=nil, instanceid=nil, rate=nil, enableurlgroup=nil, type=nil, repo=nil, url=nil, desc=nil)
          @Name = name
          @InstanceID = instanceid
          @Rate = rate
          @EnableURLGroup = enableurlgroup
          @Type = type
          @Repo = repo
          @URL = url
          @Desc = desc
        end

        def deserialize(params)
          @Name = params['Name']
          @InstanceID = params['InstanceID']
          @Rate = params['Rate']
          @EnableURLGroup = params['EnableURLGroup']
          @Type = params['Type']
          @Repo = params['Repo']
          @URL = params['URL']
          @Desc = params['Desc']
        end
      end

      # CreateProject返回参数结构体
      class CreateProjectResponse < TencentCloud::Common::AbstractModel
        # @param ID: 项目 id
        # @type ID: Integer
        # @param Key: 项目唯一key
        # @type Key: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ID, :Key, :RequestId
        
        def initialize(id=nil, key=nil, requestid=nil)
          @ID = id
          @Key = key
          @RequestId = requestid
        end

        def deserialize(params)
          @ID = params['ID']
          @Key = params['Key']
          @RequestId = params['RequestId']
        end
      end

      # CreateReleaseFile请求参数结构体
      class CreateReleaseFileRequest < TencentCloud::Common::AbstractModel
        # @param ProjectID: 项目 id
        # @type ProjectID: Integer
        # @param Files: 文件信息列表
        # @type Files: Array

        attr_accessor :ProjectID, :Files
        
        def initialize(projectid=nil, files=nil)
          @ProjectID = projectid
          @Files = files
        end

        def deserialize(params)
          @ProjectID = params['ProjectID']
          unless params['Files'].nil?
            @Files = []
            params['Files'].each do |i|
              releasefile_tmp = ReleaseFile.new
              releasefile_tmp.deserialize(i)
              @Files << releasefile_tmp
            end
          end
        end
      end

      # CreateReleaseFile返回参数结构体
      class CreateReleaseFileResponse < TencentCloud::Common::AbstractModel
        # @param Msg: 调用结果
        # @type Msg: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Msg, :RequestId
        
        def initialize(msg=nil, requestid=nil)
          @Msg = msg
          @RequestId = requestid
        end

        def deserialize(params)
          @Msg = params['Msg']
          @RequestId = params['RequestId']
        end
      end

      # CreateStarProject请求参数结构体
      class CreateStarProjectRequest < TencentCloud::Common::AbstractModel
        # @param InstanceID: 实例ID：taw-123
        # @type InstanceID: String
        # @param ID: 项目ID
        # @type ID: Integer

        attr_accessor :InstanceID, :ID
        
        def initialize(instanceid=nil, id=nil)
          @InstanceID = instanceid
          @ID = id
        end

        def deserialize(params)
          @InstanceID = params['InstanceID']
          @ID = params['ID']
        end
      end

      # CreateStarProject返回参数结构体
      class CreateStarProjectResponse < TencentCloud::Common::AbstractModel
        # @param Msg: 接口返回信息
        # @type Msg: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Msg, :RequestId
        
        def initialize(msg=nil, requestid=nil)
          @Msg = msg
          @RequestId = requestid
        end

        def deserialize(params)
          @Msg = params['Msg']
          @RequestId = params['RequestId']
        end
      end

      # CreateTawInstance请求参数结构体
      class CreateTawInstanceRequest < TencentCloud::Common::AbstractModel
        # @param AreaId: 片区Id，(至少大于0)
        # @type AreaId: Integer
        # @param ChargeType: 计费类型, (1=体验，2=预付费，3=后付费)
        # @type ChargeType: Integer
        # @param DataRetentionDays: 数据保存时间，(至少大于0)
        # @type DataRetentionDays: Integer
        # @param InstanceName: 实例名称，(最大长度不超过255字节)
        # @type InstanceName: String
        # @param Tags: 标签列表
        # @type Tags: Array
        # @param InstanceDesc: 实例描述，(最大长度不超过1024字节)
        # @type InstanceDesc: String
        # @param CountNum: 每天数据上报量
        # @type CountNum: String
        # @param PeriodRetain: 数据存储时长计费
        # @type PeriodRetain: String
        # @param BuyingChannel: 实例购买渠道("cdn" 等)
        # @type BuyingChannel: String

        attr_accessor :AreaId, :ChargeType, :DataRetentionDays, :InstanceName, :Tags, :InstanceDesc, :CountNum, :PeriodRetain, :BuyingChannel
        
        def initialize(areaid=nil, chargetype=nil, dataretentiondays=nil, instancename=nil, tags=nil, instancedesc=nil, countnum=nil, periodretain=nil, buyingchannel=nil)
          @AreaId = areaid
          @ChargeType = chargetype
          @DataRetentionDays = dataretentiondays
          @InstanceName = instancename
          @Tags = tags
          @InstanceDesc = instancedesc
          @CountNum = countnum
          @PeriodRetain = periodretain
          @BuyingChannel = buyingchannel
        end

        def deserialize(params)
          @AreaId = params['AreaId']
          @ChargeType = params['ChargeType']
          @DataRetentionDays = params['DataRetentionDays']
          @InstanceName = params['InstanceName']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @InstanceDesc = params['InstanceDesc']
          @CountNum = params['CountNum']
          @PeriodRetain = params['PeriodRetain']
          @BuyingChannel = params['BuyingChannel']
        end
      end

      # CreateTawInstance返回参数结构体
      class CreateTawInstanceResponse < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例Id
        # @type InstanceId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceId, :RequestId
        
        def initialize(instanceid=nil, requestid=nil)
          @InstanceId = instanceid
          @RequestId = requestid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @RequestId = params['RequestId']
        end
      end

      # CreateWhitelist请求参数结构体
      class CreateWhitelistRequest < TencentCloud::Common::AbstractModel
        # @param InstanceID: 实例ID：taw-123
        # @type InstanceID: String
        # @param Remark: 备注
        # @type Remark: String
        # @param WhitelistUin: uin：业务方标识
        # @type WhitelistUin: String
        # @param Aid: 业务方标识
        # @type Aid: String

        attr_accessor :InstanceID, :Remark, :WhitelistUin, :Aid
        
        def initialize(instanceid=nil, remark=nil, whitelistuin=nil, aid=nil)
          @InstanceID = instanceid
          @Remark = remark
          @WhitelistUin = whitelistuin
          @Aid = aid
        end

        def deserialize(params)
          @InstanceID = params['InstanceID']
          @Remark = params['Remark']
          @WhitelistUin = params['WhitelistUin']
          @Aid = params['Aid']
        end
      end

      # CreateWhitelist返回参数结构体
      class CreateWhitelistResponse < TencentCloud::Common::AbstractModel
        # @param Msg: 消息
        # @type Msg: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Msg, :RequestId
        
        def initialize(msg=nil, requestid=nil)
          @Msg = msg
          @RequestId = requestid
        end

        def deserialize(params)
          @Msg = params['Msg']
          @RequestId = params['RequestId']
        end
      end

      # DeleteInstance请求参数结构体
      class DeleteInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 需要删除的实例id
        # @type InstanceId: String

        attr_accessor :InstanceId
        
        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DeleteInstance返回参数结构体
      class DeleteInstanceResponse < TencentCloud::Common::AbstractModel
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

      # DeleteLogExport请求参数结构体
      class DeleteLogExportRequest < TencentCloud::Common::AbstractModel
        # @param ID: 项目ID
        # @type ID: Integer
        # @param ExportID: 日志导出ID
        # @type ExportID: String

        attr_accessor :ID, :ExportID
        
        def initialize(id=nil, exportid=nil)
          @ID = id
          @ExportID = exportid
        end

        def deserialize(params)
          @ID = params['ID']
          @ExportID = params['ExportID']
        end
      end

      # DeleteLogExport返回参数结构体
      class DeleteLogExportResponse < TencentCloud::Common::AbstractModel
        # @param Msg: 是否成功，成功则为success；失败则直接返回Error，不返回该参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Msg: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Msg, :RequestId
        
        def initialize(msg=nil, requestid=nil)
          @Msg = msg
          @RequestId = requestid
        end

        def deserialize(params)
          @Msg = params['Msg']
          @RequestId = params['RequestId']
        end
      end

      # DeleteOfflineLogConfig请求参数结构体
      class DeleteOfflineLogConfigRequest < TencentCloud::Common::AbstractModel
        # @param ProjectKey: 项目唯一上报 key
        # @type ProjectKey: String
        # @param UniqueID: 用户唯一标示(uin or aid)
        # @type UniqueID: String

        attr_accessor :ProjectKey, :UniqueID
        
        def initialize(projectkey=nil, uniqueid=nil)
          @ProjectKey = projectkey
          @UniqueID = uniqueid
        end

        def deserialize(params)
          @ProjectKey = params['ProjectKey']
          @UniqueID = params['UniqueID']
        end
      end

      # DeleteOfflineLogConfig返回参数结构体
      class DeleteOfflineLogConfigResponse < TencentCloud::Common::AbstractModel
        # @param Msg: 接口调用信息
        # @type Msg: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Msg, :RequestId
        
        def initialize(msg=nil, requestid=nil)
          @Msg = msg
          @RequestId = requestid
        end

        def deserialize(params)
          @Msg = params['Msg']
          @RequestId = params['RequestId']
        end
      end

      # DeleteOfflineLogRecord请求参数结构体
      class DeleteOfflineLogRecordRequest < TencentCloud::Common::AbstractModel
        # @param ProjectKey: 项目唯一上报 key
        # @type ProjectKey: String
        # @param FileID: 离线日志文件 id
        # @type FileID: String

        attr_accessor :ProjectKey, :FileID
        
        def initialize(projectkey=nil, fileid=nil)
          @ProjectKey = projectkey
          @FileID = fileid
        end

        def deserialize(params)
          @ProjectKey = params['ProjectKey']
          @FileID = params['FileID']
        end
      end

      # DeleteOfflineLogRecord返回参数结构体
      class DeleteOfflineLogRecordResponse < TencentCloud::Common::AbstractModel
        # @param Msg: 接口调用信息
        # @type Msg: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Msg, :RequestId
        
        def initialize(msg=nil, requestid=nil)
          @Msg = msg
          @RequestId = requestid
        end

        def deserialize(params)
          @Msg = params['Msg']
          @RequestId = params['RequestId']
        end
      end

      # DeleteProject请求参数结构体
      class DeleteProjectRequest < TencentCloud::Common::AbstractModel
        # @param ID: 需要删除的项目 ID
        # @type ID: Integer

        attr_accessor :ID
        
        def initialize(id=nil)
          @ID = id
        end

        def deserialize(params)
          @ID = params['ID']
        end
      end

      # DeleteProject返回参数结构体
      class DeleteProjectResponse < TencentCloud::Common::AbstractModel
        # @param Msg: 操作信息
        # @type Msg: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Msg, :RequestId
        
        def initialize(msg=nil, requestid=nil)
          @Msg = msg
          @RequestId = requestid
        end

        def deserialize(params)
          @Msg = params['Msg']
          @RequestId = params['RequestId']
        end
      end

      # DeleteReleaseFile请求参数结构体
      class DeleteReleaseFileRequest < TencentCloud::Common::AbstractModel
        # @param ID: 文件 id
        # @type ID: Integer

        attr_accessor :ID
        
        def initialize(id=nil)
          @ID = id
        end

        def deserialize(params)
          @ID = params['ID']
        end
      end

      # DeleteReleaseFile返回参数结构体
      class DeleteReleaseFileResponse < TencentCloud::Common::AbstractModel
        # @param Msg: 接口请求返回字符串
        # @type Msg: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Msg, :RequestId
        
        def initialize(msg=nil, requestid=nil)
          @Msg = msg
          @RequestId = requestid
        end

        def deserialize(params)
          @Msg = params['Msg']
          @RequestId = params['RequestId']
        end
      end

      # DeleteStarProject请求参数结构体
      class DeleteStarProjectRequest < TencentCloud::Common::AbstractModel
        # @param InstanceID: 实例ID：taw-123
        # @type InstanceID: String
        # @param ID: 项目ID
        # @type ID: Integer

        attr_accessor :InstanceID, :ID
        
        def initialize(instanceid=nil, id=nil)
          @InstanceID = instanceid
          @ID = id
        end

        def deserialize(params)
          @InstanceID = params['InstanceID']
          @ID = params['ID']
        end
      end

      # DeleteStarProject返回参数结构体
      class DeleteStarProjectResponse < TencentCloud::Common::AbstractModel
        # @param Msg: 返回消息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Msg: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Msg, :RequestId
        
        def initialize(msg=nil, requestid=nil)
          @Msg = msg
          @RequestId = requestid
        end

        def deserialize(params)
          @Msg = params['Msg']
          @RequestId = params['RequestId']
        end
      end

      # DeleteWhitelist请求参数结构体
      class DeleteWhitelistRequest < TencentCloud::Common::AbstractModel
        # @param InstanceID: 实例ID
        # @type InstanceID: String
        # @param ID: 名单ID
        # @type ID: String

        attr_accessor :InstanceID, :ID
        
        def initialize(instanceid=nil, id=nil)
          @InstanceID = instanceid
          @ID = id
        end

        def deserialize(params)
          @InstanceID = params['InstanceID']
          @ID = params['ID']
        end
      end

      # DeleteWhitelist返回参数结构体
      class DeleteWhitelistResponse < TencentCloud::Common::AbstractModel
        # @param Msg: 消息success
        # @type Msg: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Msg, :RequestId
        
        def initialize(msg=nil, requestid=nil)
          @Msg = msg
          @RequestId = requestid
        end

        def deserialize(params)
          @Msg = params['Msg']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDataCustomUrl请求参数结构体
      class DescribeDataCustomUrlRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间
        # @type StartTime: Integer
        # @param Type: top：资源top视图，allcount：性能视图，day：14天数据，condition：条件列表，pagepv：性能视图，area：请求速度分布，nettype/version/platform/isp/region/device/browser/ext1/ext2/ext3/ret/status/from/url/env/：网络平台视图/Version视图/设备视图/ISP视图/地区视图/浏览器视图/ext1视图等等
        # @type Type: String
        # @param EndTime: 结束时间
        # @type EndTime: Integer
        # @param ID: 项目ID
        # @type ID: Integer
        # @param ExtSecond: 自定义2
        # @type ExtSecond: String
        # @param Engine: 浏览器引擎
        # @type Engine: String
        # @param Isp: 运营商
        # @type Isp: String
        # @param From: 来源页面
        # @type From: String
        # @param Level: 日志等级
        # @type Level: String
        # @param Brand: 品牌
        # @type Brand: String
        # @param Area: 地区
        # @type Area: String
        # @param VersionNum: 版本
        # @type VersionNum: String
        # @param Platform: 平台
        # @type Platform: String
        # @param ExtThird: 自定义3
        # @type ExtThird: String
        # @param ExtFirst: 自定义1
        # @type ExtFirst: String
        # @param NetType: 网络类型
        # @type NetType: String
        # @param Device: 机型
        # @type Device: String
        # @param IsAbroad: 是否海外
        # @type IsAbroad: String
        # @param Os: 操作系统
        # @type Os: String
        # @param Browser: 浏览器
        # @type Browser: String
        # @param CostType: 耗时计算方式
        # @type CostType: String
        # @param Url: 自定义测速的key的值
        # @type Url: String
        # @param Env: 环境
        # @type Env: String

        attr_accessor :StartTime, :Type, :EndTime, :ID, :ExtSecond, :Engine, :Isp, :From, :Level, :Brand, :Area, :VersionNum, :Platform, :ExtThird, :ExtFirst, :NetType, :Device, :IsAbroad, :Os, :Browser, :CostType, :Url, :Env
        
        def initialize(starttime=nil, type=nil, endtime=nil, id=nil, extsecond=nil, engine=nil, isp=nil, from=nil, level=nil, brand=nil, area=nil, versionnum=nil, platform=nil, extthird=nil, extfirst=nil, nettype=nil, device=nil, isabroad=nil, os=nil, browser=nil, costtype=nil, url=nil, env=nil)
          @StartTime = starttime
          @Type = type
          @EndTime = endtime
          @ID = id
          @ExtSecond = extsecond
          @Engine = engine
          @Isp = isp
          @From = from
          @Level = level
          @Brand = brand
          @Area = area
          @VersionNum = versionnum
          @Platform = platform
          @ExtThird = extthird
          @ExtFirst = extfirst
          @NetType = nettype
          @Device = device
          @IsAbroad = isabroad
          @Os = os
          @Browser = browser
          @CostType = costtype
          @Url = url
          @Env = env
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @Type = params['Type']
          @EndTime = params['EndTime']
          @ID = params['ID']
          @ExtSecond = params['ExtSecond']
          @Engine = params['Engine']
          @Isp = params['Isp']
          @From = params['From']
          @Level = params['Level']
          @Brand = params['Brand']
          @Area = params['Area']
          @VersionNum = params['VersionNum']
          @Platform = params['Platform']
          @ExtThird = params['ExtThird']
          @ExtFirst = params['ExtFirst']
          @NetType = params['NetType']
          @Device = params['Device']
          @IsAbroad = params['IsAbroad']
          @Os = params['Os']
          @Browser = params['Browser']
          @CostType = params['CostType']
          @Url = params['Url']
          @Env = params['Env']
        end
      end

      # DescribeDataCustomUrl返回参数结构体
      class DescribeDataCustomUrlResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回值
        # @type Result: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDataEventUrl请求参数结构体
      class DescribeDataEventUrlRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间
        # @type StartTime: Integer
        # @param Type: allcount：性能视图，day：14天数据，condition：条件列表，ckuv：获取uv趋势，ckpv：获取pv趋势，nettype/version/platform/isp/region/device/browser/ext1/ext2/ext3/ret/status/from/url/env/：网络平台视图/Version视图/设备视图/ISP视图/地区视图/浏览器视图/ext1视图等等
        # @type Type: String
        # @param EndTime: 结束时间
        # @type EndTime: Integer
        # @param ID: 项目ID
        # @type ID: Integer
        # @param ExtSecond: 自定义2
        # @type ExtSecond: String
        # @param Engine: 浏览器引擎
        # @type Engine: String
        # @param Isp: 运营商
        # @type Isp: String
        # @param From: 来源页面
        # @type From: String
        # @param Level: 日志等级
        # @type Level: String
        # @param Brand: 品牌
        # @type Brand: String
        # @param Area: 地区
        # @type Area: String
        # @param VersionNum: 版本
        # @type VersionNum: String
        # @param Platform: 平台
        # @type Platform: String
        # @param ExtThird: 自定义3
        # @type ExtThird: String
        # @param ExtFirst: 自定义1
        # @type ExtFirst: String
        # @param NetType: 网络类型
        # @type NetType: String
        # @param Device: 机型
        # @type Device: String
        # @param IsAbroad: 是否海外
        # @type IsAbroad: String
        # @param Os: 操作系统
        # @type Os: String
        # @param Browser: 浏览器
        # @type Browser: String
        # @param Name: 筛选条件
        # @type Name: String
        # @param Env: 环境
        # @type Env: String

        attr_accessor :StartTime, :Type, :EndTime, :ID, :ExtSecond, :Engine, :Isp, :From, :Level, :Brand, :Area, :VersionNum, :Platform, :ExtThird, :ExtFirst, :NetType, :Device, :IsAbroad, :Os, :Browser, :Name, :Env
        
        def initialize(starttime=nil, type=nil, endtime=nil, id=nil, extsecond=nil, engine=nil, isp=nil, from=nil, level=nil, brand=nil, area=nil, versionnum=nil, platform=nil, extthird=nil, extfirst=nil, nettype=nil, device=nil, isabroad=nil, os=nil, browser=nil, name=nil, env=nil)
          @StartTime = starttime
          @Type = type
          @EndTime = endtime
          @ID = id
          @ExtSecond = extsecond
          @Engine = engine
          @Isp = isp
          @From = from
          @Level = level
          @Brand = brand
          @Area = area
          @VersionNum = versionnum
          @Platform = platform
          @ExtThird = extthird
          @ExtFirst = extfirst
          @NetType = nettype
          @Device = device
          @IsAbroad = isabroad
          @Os = os
          @Browser = browser
          @Name = name
          @Env = env
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @Type = params['Type']
          @EndTime = params['EndTime']
          @ID = params['ID']
          @ExtSecond = params['ExtSecond']
          @Engine = params['Engine']
          @Isp = params['Isp']
          @From = params['From']
          @Level = params['Level']
          @Brand = params['Brand']
          @Area = params['Area']
          @VersionNum = params['VersionNum']
          @Platform = params['Platform']
          @ExtThird = params['ExtThird']
          @ExtFirst = params['ExtFirst']
          @NetType = params['NetType']
          @Device = params['Device']
          @IsAbroad = params['IsAbroad']
          @Os = params['Os']
          @Browser = params['Browser']
          @Name = params['Name']
          @Env = params['Env']
        end
      end

      # DescribeDataEventUrl返回参数结构体
      class DescribeDataEventUrlResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回值
        # @type Result: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDataFetchProject请求参数结构体
      class DescribeDataFetchProjectRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间
        # @type StartTime: Integer
        # @param Type: allcount：性能视图，day：14天数据，condition：条件列表，area：请求速度分布，nettype/version/platform/isp/region/device/browser/ext1/ext2/ext3/ret/status/from/url/env/：网络平台视图/Version视图/设备视图/ISP视图/地区视图/浏览器视图/ext1视图等等
        # @type Type: String
        # @param EndTime: 结束时间
        # @type EndTime: Integer
        # @param ID: 项目ID
        # @type ID: Integer
        # @param ExtSecond: 自定义2
        # @type ExtSecond: String
        # @param Engine: 浏览器引擎
        # @type Engine: String
        # @param Isp: 运营商
        # @type Isp: String
        # @param From: 来源页面
        # @type From: String
        # @param Level: 日志等级
        # @type Level: String
        # @param Brand: 品牌
        # @type Brand: String
        # @param Area: 地区
        # @type Area: String
        # @param VersionNum: 版本
        # @type VersionNum: String
        # @param Platform: 平台
        # @type Platform: String
        # @param ExtThird: 自定义3
        # @type ExtThird: String
        # @param ExtFirst: 自定义1
        # @type ExtFirst: String
        # @param NetType: 网络类型
        # @type NetType: String
        # @param Device: 机型
        # @type Device: String
        # @param IsAbroad: 是否海外
        # @type IsAbroad: String
        # @param Os: 操作系统
        # @type Os: String
        # @param Browser: 浏览器
        # @type Browser: String
        # @param CostType: 耗时计算方式
        # @type CostType: String
        # @param Url: 来源
        # @type Url: String
        # @param Env: 环境
        # @type Env: String

        attr_accessor :StartTime, :Type, :EndTime, :ID, :ExtSecond, :Engine, :Isp, :From, :Level, :Brand, :Area, :VersionNum, :Platform, :ExtThird, :ExtFirst, :NetType, :Device, :IsAbroad, :Os, :Browser, :CostType, :Url, :Env
        
        def initialize(starttime=nil, type=nil, endtime=nil, id=nil, extsecond=nil, engine=nil, isp=nil, from=nil, level=nil, brand=nil, area=nil, versionnum=nil, platform=nil, extthird=nil, extfirst=nil, nettype=nil, device=nil, isabroad=nil, os=nil, browser=nil, costtype=nil, url=nil, env=nil)
          @StartTime = starttime
          @Type = type
          @EndTime = endtime
          @ID = id
          @ExtSecond = extsecond
          @Engine = engine
          @Isp = isp
          @From = from
          @Level = level
          @Brand = brand
          @Area = area
          @VersionNum = versionnum
          @Platform = platform
          @ExtThird = extthird
          @ExtFirst = extfirst
          @NetType = nettype
          @Device = device
          @IsAbroad = isabroad
          @Os = os
          @Browser = browser
          @CostType = costtype
          @Url = url
          @Env = env
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @Type = params['Type']
          @EndTime = params['EndTime']
          @ID = params['ID']
          @ExtSecond = params['ExtSecond']
          @Engine = params['Engine']
          @Isp = params['Isp']
          @From = params['From']
          @Level = params['Level']
          @Brand = params['Brand']
          @Area = params['Area']
          @VersionNum = params['VersionNum']
          @Platform = params['Platform']
          @ExtThird = params['ExtThird']
          @ExtFirst = params['ExtFirst']
          @NetType = params['NetType']
          @Device = params['Device']
          @IsAbroad = params['IsAbroad']
          @Os = params['Os']
          @Browser = params['Browser']
          @CostType = params['CostType']
          @Url = params['Url']
          @Env = params['Env']
        end
      end

      # DescribeDataFetchProject返回参数结构体
      class DescribeDataFetchProjectResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回值
        # @type Result: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDataFetchUrlInfo请求参数结构体
      class DescribeDataFetchUrlInfoRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间
        # @type StartTime: Integer
        # @param Type: 类型
        # @type Type: String
        # @param EndTime: 结束时间
        # @type EndTime: Integer
        # @param ID: 项目ID
        # @type ID: Integer
        # @param ExtSecond: 自定义2
        # @type ExtSecond: String
        # @param Engine: 浏览器引擎
        # @type Engine: String
        # @param Isp: 运营商
        # @type Isp: String
        # @param From: 来源页面
        # @type From: String
        # @param Level: 日志等级
        # @type Level: String
        # @param Brand: 品牌
        # @type Brand: String
        # @param Area: 地区
        # @type Area: String
        # @param VersionNum: 版本
        # @type VersionNum: String
        # @param Platform: 平台
        # @type Platform: String
        # @param ExtThird: 自定义3
        # @type ExtThird: String
        # @param ExtFirst: 自定义1
        # @type ExtFirst: String
        # @param NetType: 网络类型
        # @type NetType: String
        # @param Device: 机型
        # @type Device: String
        # @param IsAbroad: 是否海外
        # @type IsAbroad: String
        # @param Os: 操作系统
        # @type Os: String
        # @param Browser: 浏览器
        # @type Browser: String
        # @param CostType: 耗时计算方式
        # @type CostType: String
        # @param Url: 来源
        # @type Url: String
        # @param Env: 环境
        # @type Env: String

        attr_accessor :StartTime, :Type, :EndTime, :ID, :ExtSecond, :Engine, :Isp, :From, :Level, :Brand, :Area, :VersionNum, :Platform, :ExtThird, :ExtFirst, :NetType, :Device, :IsAbroad, :Os, :Browser, :CostType, :Url, :Env
        
        def initialize(starttime=nil, type=nil, endtime=nil, id=nil, extsecond=nil, engine=nil, isp=nil, from=nil, level=nil, brand=nil, area=nil, versionnum=nil, platform=nil, extthird=nil, extfirst=nil, nettype=nil, device=nil, isabroad=nil, os=nil, browser=nil, costtype=nil, url=nil, env=nil)
          @StartTime = starttime
          @Type = type
          @EndTime = endtime
          @ID = id
          @ExtSecond = extsecond
          @Engine = engine
          @Isp = isp
          @From = from
          @Level = level
          @Brand = brand
          @Area = area
          @VersionNum = versionnum
          @Platform = platform
          @ExtThird = extthird
          @ExtFirst = extfirst
          @NetType = nettype
          @Device = device
          @IsAbroad = isabroad
          @Os = os
          @Browser = browser
          @CostType = costtype
          @Url = url
          @Env = env
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @Type = params['Type']
          @EndTime = params['EndTime']
          @ID = params['ID']
          @ExtSecond = params['ExtSecond']
          @Engine = params['Engine']
          @Isp = params['Isp']
          @From = params['From']
          @Level = params['Level']
          @Brand = params['Brand']
          @Area = params['Area']
          @VersionNum = params['VersionNum']
          @Platform = params['Platform']
          @ExtThird = params['ExtThird']
          @ExtFirst = params['ExtFirst']
          @NetType = params['NetType']
          @Device = params['Device']
          @IsAbroad = params['IsAbroad']
          @Os = params['Os']
          @Browser = params['Browser']
          @CostType = params['CostType']
          @Url = params['Url']
          @Env = params['Env']
        end
      end

      # DescribeDataFetchUrlInfo返回参数结构体
      class DescribeDataFetchUrlInfoResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回值
        # @type Result: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDataFetchUrl请求参数结构体
      class DescribeDataFetchUrlRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间
        # @type StartTime: Integer
        # @param Type: allcount：性能视图，day：14天数据，count40x：40X视图，count50x：50X视图，count5xand4x：40∑50视图，top：资源top视图，nettype/version/platform/isp/region/device/browser/ext1/ext2/ext3/ret/status/from/url/env/：网络平台视图/Version视图/设备视图/ISP视图/地区视图/浏览器视图/ext1视图等等
        # @type Type: String
        # @param EndTime: 结束时间
        # @type EndTime: Integer
        # @param ID: 项目ID
        # @type ID: Integer
        # @param ExtSecond: 自定义2
        # @type ExtSecond: String
        # @param Engine: 浏览器引擎
        # @type Engine: String
        # @param Isp: 运营商
        # @type Isp: String
        # @param From: 来源页面
        # @type From: String
        # @param Level: 日志等级
        # @type Level: String
        # @param Brand: 品牌
        # @type Brand: String
        # @param Area: 地区
        # @type Area: String
        # @param VersionNum: 版本
        # @type VersionNum: String
        # @param Platform: 平台
        # @type Platform: String
        # @param ExtThird: 自定义3
        # @type ExtThird: String
        # @param ExtFirst: 自定义1
        # @type ExtFirst: String
        # @param NetType: 网络类型
        # @type NetType: String
        # @param Device: 机型
        # @type Device: String
        # @param IsAbroad: 是否海外
        # @type IsAbroad: String
        # @param Os: 操作系统
        # @type Os: String
        # @param Browser: 浏览器
        # @type Browser: String
        # @param CostType: 耗时计算方式
        # @type CostType: String
        # @param Url: 来源
        # @type Url: String
        # @param Env: 环境
        # @type Env: String

        attr_accessor :StartTime, :Type, :EndTime, :ID, :ExtSecond, :Engine, :Isp, :From, :Level, :Brand, :Area, :VersionNum, :Platform, :ExtThird, :ExtFirst, :NetType, :Device, :IsAbroad, :Os, :Browser, :CostType, :Url, :Env
        
        def initialize(starttime=nil, type=nil, endtime=nil, id=nil, extsecond=nil, engine=nil, isp=nil, from=nil, level=nil, brand=nil, area=nil, versionnum=nil, platform=nil, extthird=nil, extfirst=nil, nettype=nil, device=nil, isabroad=nil, os=nil, browser=nil, costtype=nil, url=nil, env=nil)
          @StartTime = starttime
          @Type = type
          @EndTime = endtime
          @ID = id
          @ExtSecond = extsecond
          @Engine = engine
          @Isp = isp
          @From = from
          @Level = level
          @Brand = brand
          @Area = area
          @VersionNum = versionnum
          @Platform = platform
          @ExtThird = extthird
          @ExtFirst = extfirst
          @NetType = nettype
          @Device = device
          @IsAbroad = isabroad
          @Os = os
          @Browser = browser
          @CostType = costtype
          @Url = url
          @Env = env
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @Type = params['Type']
          @EndTime = params['EndTime']
          @ID = params['ID']
          @ExtSecond = params['ExtSecond']
          @Engine = params['Engine']
          @Isp = params['Isp']
          @From = params['From']
          @Level = params['Level']
          @Brand = params['Brand']
          @Area = params['Area']
          @VersionNum = params['VersionNum']
          @Platform = params['Platform']
          @ExtThird = params['ExtThird']
          @ExtFirst = params['ExtFirst']
          @NetType = params['NetType']
          @Device = params['Device']
          @IsAbroad = params['IsAbroad']
          @Os = params['Os']
          @Browser = params['Browser']
          @CostType = params['CostType']
          @Url = params['Url']
          @Env = params['Env']
        end
      end

      # DescribeDataFetchUrl返回参数结构体
      class DescribeDataFetchUrlResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回值
        # @type Result: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDataLogUrlInfo请求参数结构体
      class DescribeDataLogUrlInfoRequest < TencentCloud::Common::AbstractModel
        # @param ID: 项目ID
        # @type ID: Integer
        # @param StartTime: 时间戳
        # @type StartTime: Integer
        # @param EndTime: 时间戳
        # @type EndTime: Integer

        attr_accessor :ID, :StartTime, :EndTime
        
        def initialize(id=nil, starttime=nil, endtime=nil)
          @ID = id
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @ID = params['ID']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # DescribeDataLogUrlInfo返回参数结构体
      class DescribeDataLogUrlInfoResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回字符串
        # @type Result: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDataLogUrlStatistics请求参数结构体
      class DescribeDataLogUrlStatisticsRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间
        # @type StartTime: Integer
        # @param Type: analysis：异常分析，compare：异常列表对比，allcount：性能视图，condition：条件列表，nettype/version/platform/isp/region/device/browser/ext1/ext2/ext3/ret/status/from/url/env/：网络平台视图/Version视图/设备视图/ISP视图/地区视图/浏览器视图/ext1视图等等
        # @type Type: String
        # @param EndTime: 结束时间
        # @type EndTime: Integer
        # @param ID: 项目ID
        # @type ID: Integer
        # @param ExtSecond: 自定义2
        # @type ExtSecond: String
        # @param Engine: 浏览器引擎
        # @type Engine: String
        # @param Isp: 运营商
        # @type Isp: String
        # @param From: 来源页面
        # @type From: String
        # @param Level: 日志等级
        # @type Level: String
        # @param Brand: 品牌
        # @type Brand: String
        # @param Area: 地区
        # @type Area: String
        # @param VersionNum: 版本
        # @type VersionNum: String
        # @param Platform: 平台
        # @type Platform: String
        # @param ExtThird: 自定义3
        # @type ExtThird: String
        # @param ExtFirst: 自定义1
        # @type ExtFirst: String
        # @param NetType: 网络类型
        # @type NetType: String
        # @param Device: 机型
        # @type Device: String
        # @param IsAbroad: 是否海外
        # @type IsAbroad: String
        # @param Os: 操作系统
        # @type Os: String
        # @param Browser: 浏览器
        # @type Browser: String
        # @param Env: 环境区分
        # @type Env: String

        attr_accessor :StartTime, :Type, :EndTime, :ID, :ExtSecond, :Engine, :Isp, :From, :Level, :Brand, :Area, :VersionNum, :Platform, :ExtThird, :ExtFirst, :NetType, :Device, :IsAbroad, :Os, :Browser, :Env
        
        def initialize(starttime=nil, type=nil, endtime=nil, id=nil, extsecond=nil, engine=nil, isp=nil, from=nil, level=nil, brand=nil, area=nil, versionnum=nil, platform=nil, extthird=nil, extfirst=nil, nettype=nil, device=nil, isabroad=nil, os=nil, browser=nil, env=nil)
          @StartTime = starttime
          @Type = type
          @EndTime = endtime
          @ID = id
          @ExtSecond = extsecond
          @Engine = engine
          @Isp = isp
          @From = from
          @Level = level
          @Brand = brand
          @Area = area
          @VersionNum = versionnum
          @Platform = platform
          @ExtThird = extthird
          @ExtFirst = extfirst
          @NetType = nettype
          @Device = device
          @IsAbroad = isabroad
          @Os = os
          @Browser = browser
          @Env = env
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @Type = params['Type']
          @EndTime = params['EndTime']
          @ID = params['ID']
          @ExtSecond = params['ExtSecond']
          @Engine = params['Engine']
          @Isp = params['Isp']
          @From = params['From']
          @Level = params['Level']
          @Brand = params['Brand']
          @Area = params['Area']
          @VersionNum = params['VersionNum']
          @Platform = params['Platform']
          @ExtThird = params['ExtThird']
          @ExtFirst = params['ExtFirst']
          @NetType = params['NetType']
          @Device = params['Device']
          @IsAbroad = params['IsAbroad']
          @Os = params['Os']
          @Browser = params['Browser']
          @Env = params['Env']
        end
      end

      # DescribeDataLogUrlStatistics返回参数结构体
      class DescribeDataLogUrlStatisticsResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回值
        # @type Result: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDataPerformancePage请求参数结构体
      class DescribeDataPerformancePageRequest < TencentCloud::Common::AbstractModel
        # @param ID: 项目ID
        # @type ID: Integer
        # @param StartTime: 开始时间
        # @type StartTime: Integer
        # @param EndTime: 结束时间
        # @type EndTime: Integer
        # @param Type: pagepv：性能视图，allcount：性能视图，falls：页面加载瀑布图，samp：首屏时间，day：14天数据，nettype：网络/平台视图，performance：页面性能TOP视图，version/platform/isp/region/device/browser/ext1/ext2/ext3/ret/status/from/url/env/：ISP视图/地区视图/浏览器视图等
        # @type Type: String
        # @param Level: 日志等级
        # @type Level: String
        # @param Isp: 运营商
        # @type Isp: String
        # @param Area: 地区
        # @type Area: String
        # @param NetType: 网络类型
        # @type NetType: String
        # @param Platform: 平台
        # @type Platform: String
        # @param Device: 机型
        # @type Device: String
        # @param VersionNum: 版本
        # @type VersionNum: String
        # @param ExtFirst: 自定义1
        # @type ExtFirst: String
        # @param ExtSecond: 自定义2
        # @type ExtSecond: String
        # @param ExtThird: 自定义3
        # @type ExtThird: String
        # @param IsAbroad: 是否海外
        # @type IsAbroad: String
        # @param Browser: 浏览器
        # @type Browser: String
        # @param Os: 操作系统
        # @type Os: String
        # @param Engine: 浏览器引擎
        # @type Engine: String
        # @param Brand: 品牌
        # @type Brand: String
        # @param From: 来源页面
        # @type From: String
        # @param CostType: 耗时计算方式
        # @type CostType: String
        # @param Env: 环境变量
        # @type Env: String

        attr_accessor :ID, :StartTime, :EndTime, :Type, :Level, :Isp, :Area, :NetType, :Platform, :Device, :VersionNum, :ExtFirst, :ExtSecond, :ExtThird, :IsAbroad, :Browser, :Os, :Engine, :Brand, :From, :CostType, :Env
        
        def initialize(id=nil, starttime=nil, endtime=nil, type=nil, level=nil, isp=nil, area=nil, nettype=nil, platform=nil, device=nil, versionnum=nil, extfirst=nil, extsecond=nil, extthird=nil, isabroad=nil, browser=nil, os=nil, engine=nil, brand=nil, from=nil, costtype=nil, env=nil)
          @ID = id
          @StartTime = starttime
          @EndTime = endtime
          @Type = type
          @Level = level
          @Isp = isp
          @Area = area
          @NetType = nettype
          @Platform = platform
          @Device = device
          @VersionNum = versionnum
          @ExtFirst = extfirst
          @ExtSecond = extsecond
          @ExtThird = extthird
          @IsAbroad = isabroad
          @Browser = browser
          @Os = os
          @Engine = engine
          @Brand = brand
          @From = from
          @CostType = costtype
          @Env = env
        end

        def deserialize(params)
          @ID = params['ID']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Type = params['Type']
          @Level = params['Level']
          @Isp = params['Isp']
          @Area = params['Area']
          @NetType = params['NetType']
          @Platform = params['Platform']
          @Device = params['Device']
          @VersionNum = params['VersionNum']
          @ExtFirst = params['ExtFirst']
          @ExtSecond = params['ExtSecond']
          @ExtThird = params['ExtThird']
          @IsAbroad = params['IsAbroad']
          @Browser = params['Browser']
          @Os = params['Os']
          @Engine = params['Engine']
          @Brand = params['Brand']
          @From = params['From']
          @CostType = params['CostType']
          @Env = params['Env']
        end
      end

      # DescribeDataPerformancePage返回参数结构体
      class DescribeDataPerformancePageResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回值
        # @type Result: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDataPerformanceProject请求参数结构体
      class DescribeDataPerformanceProjectRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间
        # @type StartTime: Integer
        # @param Type: allcount：性能视图，falls：页面加载瀑布图，samp：首屏时间，day：14天数据，nettype：网络/平台视图，performance：页面性能TOP视图，condition：条件列表，area：请求速度分布，version/platform/isp/region/device/browser/ext1/ext2/ext3/ret/status/from/url/env/：ISP视图/地区视图/浏览器视图等
        # @type Type: String
        # @param EndTime: 结束时间
        # @type EndTime: Integer
        # @param ID: 项目ID
        # @type ID: Integer
        # @param ExtSecond: 自定义2
        # @type ExtSecond: String
        # @param Engine: 浏览器引擎
        # @type Engine: String
        # @param Isp: 运营商
        # @type Isp: String
        # @param From: 来源页面
        # @type From: String
        # @param Level: 日志等级
        # @type Level: String
        # @param Brand: 品牌
        # @type Brand: String
        # @param Area: 地区
        # @type Area: String
        # @param VersionNum: 版本
        # @type VersionNum: String
        # @param Platform: 平台
        # @type Platform: String
        # @param ExtThird: 自定义3
        # @type ExtThird: String
        # @param ExtFirst: 自定义1
        # @type ExtFirst: String
        # @param NetType: 网络类型
        # @type NetType: String
        # @param Device: 机型
        # @type Device: String
        # @param IsAbroad: 是否海外
        # @type IsAbroad: String
        # @param Os: 操作系统
        # @type Os: String
        # @param Browser: 浏览器
        # @type Browser: String
        # @param CostType: 耗时计算
        # @type CostType: String
        # @param Env: 环境
        # @type Env: String

        attr_accessor :StartTime, :Type, :EndTime, :ID, :ExtSecond, :Engine, :Isp, :From, :Level, :Brand, :Area, :VersionNum, :Platform, :ExtThird, :ExtFirst, :NetType, :Device, :IsAbroad, :Os, :Browser, :CostType, :Env
        
        def initialize(starttime=nil, type=nil, endtime=nil, id=nil, extsecond=nil, engine=nil, isp=nil, from=nil, level=nil, brand=nil, area=nil, versionnum=nil, platform=nil, extthird=nil, extfirst=nil, nettype=nil, device=nil, isabroad=nil, os=nil, browser=nil, costtype=nil, env=nil)
          @StartTime = starttime
          @Type = type
          @EndTime = endtime
          @ID = id
          @ExtSecond = extsecond
          @Engine = engine
          @Isp = isp
          @From = from
          @Level = level
          @Brand = brand
          @Area = area
          @VersionNum = versionnum
          @Platform = platform
          @ExtThird = extthird
          @ExtFirst = extfirst
          @NetType = nettype
          @Device = device
          @IsAbroad = isabroad
          @Os = os
          @Browser = browser
          @CostType = costtype
          @Env = env
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @Type = params['Type']
          @EndTime = params['EndTime']
          @ID = params['ID']
          @ExtSecond = params['ExtSecond']
          @Engine = params['Engine']
          @Isp = params['Isp']
          @From = params['From']
          @Level = params['Level']
          @Brand = params['Brand']
          @Area = params['Area']
          @VersionNum = params['VersionNum']
          @Platform = params['Platform']
          @ExtThird = params['ExtThird']
          @ExtFirst = params['ExtFirst']
          @NetType = params['NetType']
          @Device = params['Device']
          @IsAbroad = params['IsAbroad']
          @Os = params['Os']
          @Browser = params['Browser']
          @CostType = params['CostType']
          @Env = params['Env']
        end
      end

      # DescribeDataPerformanceProject返回参数结构体
      class DescribeDataPerformanceProjectResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回值
        # @type Result: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDataPvUrlInfo请求参数结构体
      class DescribeDataPvUrlInfoRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间
        # @type StartTime: Integer
        # @param Type: 类型
        # @type Type: String
        # @param EndTime: 结束时间
        # @type EndTime: Integer
        # @param ID: 项目ID
        # @type ID: Integer
        # @param ExtSecond: 自定义2
        # @type ExtSecond: String
        # @param Engine: 浏览器引擎
        # @type Engine: String
        # @param Isp: 运营商
        # @type Isp: String
        # @param From: 来源页面
        # @type From: String
        # @param Level: 日志等级
        # @type Level: String
        # @param Brand: 品牌
        # @type Brand: String
        # @param Area: 地区
        # @type Area: String
        # @param VersionNum: 版本
        # @type VersionNum: String
        # @param Platform: 平台
        # @type Platform: String
        # @param ExtThird: 自定义3
        # @type ExtThird: String
        # @param ExtFirst: 自定义1
        # @type ExtFirst: String
        # @param NetType: 网络类型
        # @type NetType: String
        # @param Device: 机型
        # @type Device: String
        # @param IsAbroad: 是否海外
        # @type IsAbroad: String
        # @param Os: 操作系统
        # @type Os: String
        # @param Browser: 浏览器
        # @type Browser: String
        # @param Env: 环境
        # @type Env: String

        attr_accessor :StartTime, :Type, :EndTime, :ID, :ExtSecond, :Engine, :Isp, :From, :Level, :Brand, :Area, :VersionNum, :Platform, :ExtThird, :ExtFirst, :NetType, :Device, :IsAbroad, :Os, :Browser, :Env
        
        def initialize(starttime=nil, type=nil, endtime=nil, id=nil, extsecond=nil, engine=nil, isp=nil, from=nil, level=nil, brand=nil, area=nil, versionnum=nil, platform=nil, extthird=nil, extfirst=nil, nettype=nil, device=nil, isabroad=nil, os=nil, browser=nil, env=nil)
          @StartTime = starttime
          @Type = type
          @EndTime = endtime
          @ID = id
          @ExtSecond = extsecond
          @Engine = engine
          @Isp = isp
          @From = from
          @Level = level
          @Brand = brand
          @Area = area
          @VersionNum = versionnum
          @Platform = platform
          @ExtThird = extthird
          @ExtFirst = extfirst
          @NetType = nettype
          @Device = device
          @IsAbroad = isabroad
          @Os = os
          @Browser = browser
          @Env = env
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @Type = params['Type']
          @EndTime = params['EndTime']
          @ID = params['ID']
          @ExtSecond = params['ExtSecond']
          @Engine = params['Engine']
          @Isp = params['Isp']
          @From = params['From']
          @Level = params['Level']
          @Brand = params['Brand']
          @Area = params['Area']
          @VersionNum = params['VersionNum']
          @Platform = params['Platform']
          @ExtThird = params['ExtThird']
          @ExtFirst = params['ExtFirst']
          @NetType = params['NetType']
          @Device = params['Device']
          @IsAbroad = params['IsAbroad']
          @Os = params['Os']
          @Browser = params['Browser']
          @Env = params['Env']
        end
      end

      # DescribeDataPvUrlInfo返回参数结构体
      class DescribeDataPvUrlInfoResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回值
        # @type Result: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDataPvUrlStatistics请求参数结构体
      class DescribeDataPvUrlStatisticsRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间
        # @type StartTime: Integer
        # @param Type: allcount：性能视图，day：14天数据，vp：性能，ckuv：uv，ckpv：pv，condition：条件列表，nettype/version/platform/isp/region/device/browser/ext1/ext2/ext3/ret/status/from/url/env/：网络平台视图/Version视图/设备视图/ISP视图/地区视图/浏览器视图/ext1视图等等
        # @type Type: String
        # @param EndTime: 结束时间
        # @type EndTime: Integer
        # @param ID: 项目ID
        # @type ID: Integer
        # @param ExtSecond: 自定义2
        # @type ExtSecond: String
        # @param Engine: 浏览器引擎
        # @type Engine: String
        # @param Isp: 运营商
        # @type Isp: String
        # @param From: 来源页面
        # @type From: String
        # @param Level: 日志等级
        # @type Level: String
        # @param Brand: 品牌
        # @type Brand: String
        # @param Area: 地区
        # @type Area: String
        # @param VersionNum: 版本
        # @type VersionNum: String
        # @param Platform: 平台
        # @type Platform: String
        # @param ExtThird: 自定义3
        # @type ExtThird: String
        # @param ExtFirst: 自定义1
        # @type ExtFirst: String
        # @param NetType: 网络类型
        # @type NetType: String
        # @param Device: 机型
        # @type Device: String
        # @param IsAbroad: 是否海外
        # @type IsAbroad: String
        # @param Os: 操作系统
        # @type Os: String
        # @param Browser: 浏览器
        # @type Browser: String
        # @param Env: 环境
        # @type Env: String

        attr_accessor :StartTime, :Type, :EndTime, :ID, :ExtSecond, :Engine, :Isp, :From, :Level, :Brand, :Area, :VersionNum, :Platform, :ExtThird, :ExtFirst, :NetType, :Device, :IsAbroad, :Os, :Browser, :Env
        
        def initialize(starttime=nil, type=nil, endtime=nil, id=nil, extsecond=nil, engine=nil, isp=nil, from=nil, level=nil, brand=nil, area=nil, versionnum=nil, platform=nil, extthird=nil, extfirst=nil, nettype=nil, device=nil, isabroad=nil, os=nil, browser=nil, env=nil)
          @StartTime = starttime
          @Type = type
          @EndTime = endtime
          @ID = id
          @ExtSecond = extsecond
          @Engine = engine
          @Isp = isp
          @From = from
          @Level = level
          @Brand = brand
          @Area = area
          @VersionNum = versionnum
          @Platform = platform
          @ExtThird = extthird
          @ExtFirst = extfirst
          @NetType = nettype
          @Device = device
          @IsAbroad = isabroad
          @Os = os
          @Browser = browser
          @Env = env
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @Type = params['Type']
          @EndTime = params['EndTime']
          @ID = params['ID']
          @ExtSecond = params['ExtSecond']
          @Engine = params['Engine']
          @Isp = params['Isp']
          @From = params['From']
          @Level = params['Level']
          @Brand = params['Brand']
          @Area = params['Area']
          @VersionNum = params['VersionNum']
          @Platform = params['Platform']
          @ExtThird = params['ExtThird']
          @ExtFirst = params['ExtFirst']
          @NetType = params['NetType']
          @Device = params['Device']
          @IsAbroad = params['IsAbroad']
          @Os = params['Os']
          @Browser = params['Browser']
          @Env = params['Env']
        end
      end

      # DescribeDataPvUrlStatistics返回参数结构体
      class DescribeDataPvUrlStatisticsResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回值
        # @type Result: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDataReportCount请求参数结构体
      class DescribeDataReportCountRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间
        # @type StartTime: Integer
        # @param EndTime: 结束时间
        # @type EndTime: Integer
        # @param ID: 项目ID
        # @type ID: Integer
        # @param ReportType: 上报类型
        # @type ReportType: String
        # @param InstanceID: 实例ID
        # @type InstanceID: String

        attr_accessor :StartTime, :EndTime, :ID, :ReportType, :InstanceID
        
        def initialize(starttime=nil, endtime=nil, id=nil, reporttype=nil, instanceid=nil)
          @StartTime = starttime
          @EndTime = endtime
          @ID = id
          @ReportType = reporttype
          @InstanceID = instanceid
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @ID = params['ID']
          @ReportType = params['ReportType']
          @InstanceID = params['InstanceID']
        end
      end

      # DescribeDataReportCount返回参数结构体
      class DescribeDataReportCountResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回值
        # @type Result: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # DescribeData请求参数结构体
      class DescribeDataRequest < TencentCloud::Common::AbstractModel
        # @param Query: 查询字符串
        # @type Query: String
        # @param ID: 项目ID
        # @type ID: Integer

        attr_accessor :Query, :ID
        
        def initialize(query=nil, id=nil)
          @Query = query
          @ID = id
        end

        def deserialize(params)
          @Query = params['Query']
          @ID = params['ID']
        end
      end

      # DescribeData返回参数结构体
      class DescribeDataResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回字符串
        # @type Result: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDataSetUrlStatistics请求参数结构体
      class DescribeDataSetUrlStatisticsRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间
        # @type StartTime: Integer
        # @param Type: allcount：性能视图，data：小程序，component：小程序相关，day：14天数据，nettype：网络/平台视图，performance：页面性能TOP视图，version/platform/isp/region/device/browser/ext1/ext2/ext3/ret/status/from/url/env/：ISP视图/地区视图/浏览器视图等
        # @type Type: String
        # @param EndTime: 结束时间
        # @type EndTime: Integer
        # @param ID: 项目ID
        # @type ID: Integer
        # @param ExtSecond: 自定义2
        # @type ExtSecond: String
        # @param Engine: 浏览器引擎
        # @type Engine: String
        # @param Isp: 运营商
        # @type Isp: String
        # @param From: 来源页面
        # @type From: String
        # @param Level: 日志等级
        # @type Level: String
        # @param Brand: 品牌
        # @type Brand: String
        # @param Area: 地区
        # @type Area: String
        # @param VersionNum: 版本
        # @type VersionNum: String
        # @param Platform: 平台
        # @type Platform: String
        # @param ExtThird: 自定义3
        # @type ExtThird: String
        # @param ExtFirst: 自定义1
        # @type ExtFirst: String
        # @param NetType: 网络类型
        # @type NetType: String
        # @param Device: 机型
        # @type Device: String
        # @param IsAbroad: 是否海外
        # @type IsAbroad: String
        # @param Os: 操作系统
        # @type Os: String
        # @param Browser: 浏览器
        # @type Browser: String
        # @param CostType: 耗时计算
        # @type CostType: String
        # @param Env: 环境
        # @type Env: String

        attr_accessor :StartTime, :Type, :EndTime, :ID, :ExtSecond, :Engine, :Isp, :From, :Level, :Brand, :Area, :VersionNum, :Platform, :ExtThird, :ExtFirst, :NetType, :Device, :IsAbroad, :Os, :Browser, :CostType, :Env
        
        def initialize(starttime=nil, type=nil, endtime=nil, id=nil, extsecond=nil, engine=nil, isp=nil, from=nil, level=nil, brand=nil, area=nil, versionnum=nil, platform=nil, extthird=nil, extfirst=nil, nettype=nil, device=nil, isabroad=nil, os=nil, browser=nil, costtype=nil, env=nil)
          @StartTime = starttime
          @Type = type
          @EndTime = endtime
          @ID = id
          @ExtSecond = extsecond
          @Engine = engine
          @Isp = isp
          @From = from
          @Level = level
          @Brand = brand
          @Area = area
          @VersionNum = versionnum
          @Platform = platform
          @ExtThird = extthird
          @ExtFirst = extfirst
          @NetType = nettype
          @Device = device
          @IsAbroad = isabroad
          @Os = os
          @Browser = browser
          @CostType = costtype
          @Env = env
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @Type = params['Type']
          @EndTime = params['EndTime']
          @ID = params['ID']
          @ExtSecond = params['ExtSecond']
          @Engine = params['Engine']
          @Isp = params['Isp']
          @From = params['From']
          @Level = params['Level']
          @Brand = params['Brand']
          @Area = params['Area']
          @VersionNum = params['VersionNum']
          @Platform = params['Platform']
          @ExtThird = params['ExtThird']
          @ExtFirst = params['ExtFirst']
          @NetType = params['NetType']
          @Device = params['Device']
          @IsAbroad = params['IsAbroad']
          @Os = params['Os']
          @Browser = params['Browser']
          @CostType = params['CostType']
          @Env = params['Env']
        end
      end

      # DescribeDataSetUrlStatistics返回参数结构体
      class DescribeDataSetUrlStatisticsResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回值
        # @type Result: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDataStaticProject请求参数结构体
      class DescribeDataStaticProjectRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间
        # @type StartTime: Integer
        # @param Type: allcount：性能视图，day：14天数据，condition：条件列表，area：请求速度分布，nettype/version/platform/isp/region/device/browser/ext1/ext2/ext3/ret/status/from/url/env/：网络平台视图/Version视图/设备视图/ISP视图/地区视图/浏览器视图/ext1视图等等
        # @type Type: String
        # @param EndTime: 结束时间
        # @type EndTime: Integer
        # @param ID: 项目ID
        # @type ID: Integer
        # @param ExtSecond: 自定义2
        # @type ExtSecond: String
        # @param Engine: 浏览器引擎
        # @type Engine: String
        # @param Isp: 运营商
        # @type Isp: String
        # @param From: 来源页面
        # @type From: String
        # @param Level: 日志等级
        # @type Level: String
        # @param Brand: 品牌
        # @type Brand: String
        # @param Area: 地区
        # @type Area: String
        # @param VersionNum: 版本
        # @type VersionNum: String
        # @param Platform: 平台
        # @type Platform: String
        # @param ExtThird: 自定义3
        # @type ExtThird: String
        # @param ExtFirst: 自定义1
        # @type ExtFirst: String
        # @param NetType: 网络类型
        # @type NetType: String
        # @param Device: 机型
        # @type Device: String
        # @param IsAbroad: 是否海外
        # @type IsAbroad: String
        # @param Os: 操作系统
        # @type Os: String
        # @param Browser: 浏览器
        # @type Browser: String
        # @param CostType: 耗时计算
        # @type CostType: String
        # @param Url: 来源
        # @type Url: Array
        # @param Env: 环境
        # @type Env: String

        attr_accessor :StartTime, :Type, :EndTime, :ID, :ExtSecond, :Engine, :Isp, :From, :Level, :Brand, :Area, :VersionNum, :Platform, :ExtThird, :ExtFirst, :NetType, :Device, :IsAbroad, :Os, :Browser, :CostType, :Url, :Env
        
        def initialize(starttime=nil, type=nil, endtime=nil, id=nil, extsecond=nil, engine=nil, isp=nil, from=nil, level=nil, brand=nil, area=nil, versionnum=nil, platform=nil, extthird=nil, extfirst=nil, nettype=nil, device=nil, isabroad=nil, os=nil, browser=nil, costtype=nil, url=nil, env=nil)
          @StartTime = starttime
          @Type = type
          @EndTime = endtime
          @ID = id
          @ExtSecond = extsecond
          @Engine = engine
          @Isp = isp
          @From = from
          @Level = level
          @Brand = brand
          @Area = area
          @VersionNum = versionnum
          @Platform = platform
          @ExtThird = extthird
          @ExtFirst = extfirst
          @NetType = nettype
          @Device = device
          @IsAbroad = isabroad
          @Os = os
          @Browser = browser
          @CostType = costtype
          @Url = url
          @Env = env
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @Type = params['Type']
          @EndTime = params['EndTime']
          @ID = params['ID']
          @ExtSecond = params['ExtSecond']
          @Engine = params['Engine']
          @Isp = params['Isp']
          @From = params['From']
          @Level = params['Level']
          @Brand = params['Brand']
          @Area = params['Area']
          @VersionNum = params['VersionNum']
          @Platform = params['Platform']
          @ExtThird = params['ExtThird']
          @ExtFirst = params['ExtFirst']
          @NetType = params['NetType']
          @Device = params['Device']
          @IsAbroad = params['IsAbroad']
          @Os = params['Os']
          @Browser = params['Browser']
          @CostType = params['CostType']
          @Url = params['Url']
          @Env = params['Env']
        end
      end

      # DescribeDataStaticProject返回参数结构体
      class DescribeDataStaticProjectResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回值
        # @type Result: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDataStaticResource请求参数结构体
      class DescribeDataStaticResourceRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间
        # @type StartTime: Integer
        # @param Type: top：资源top视图，count40x：40X视图，nettype/version/platform/isp/region/device/browser/ext1/ext2/ext3/ret/status/from/url/env/：网络平台视图/Version视图/设备视图/ISP视图/地区视图/浏览器视图//ext1视图等等
        # @type Type: String
        # @param EndTime: 结束时间
        # @type EndTime: Integer
        # @param ID: 项目ID
        # @type ID: Integer
        # @param ExtSecond: 自定义2
        # @type ExtSecond: String
        # @param Engine: 浏览器引擎
        # @type Engine: String
        # @param Isp: 运营商
        # @type Isp: String
        # @param From: 来源页面
        # @type From: String
        # @param Level: 日志等级
        # @type Level: String
        # @param Brand: 品牌
        # @type Brand: String
        # @param Area: 地区
        # @type Area: String
        # @param VersionNum: 版本
        # @type VersionNum: String
        # @param Platform: 平台
        # @type Platform: String
        # @param ExtThird: 自定义3
        # @type ExtThird: String
        # @param ExtFirst: 自定义1
        # @type ExtFirst: String
        # @param NetType: 网络类型
        # @type NetType: String
        # @param Device: 机型
        # @type Device: String
        # @param IsAbroad: 是否海外
        # @type IsAbroad: String
        # @param Os: 操作系统
        # @type Os: String
        # @param Browser: 浏览器
        # @type Browser: String
        # @param CostType: 耗时计算方式
        # @type CostType: String
        # @param Url: 来源
        # @type Url: String
        # @param Env: 环境
        # @type Env: String

        attr_accessor :StartTime, :Type, :EndTime, :ID, :ExtSecond, :Engine, :Isp, :From, :Level, :Brand, :Area, :VersionNum, :Platform, :ExtThird, :ExtFirst, :NetType, :Device, :IsAbroad, :Os, :Browser, :CostType, :Url, :Env
        
        def initialize(starttime=nil, type=nil, endtime=nil, id=nil, extsecond=nil, engine=nil, isp=nil, from=nil, level=nil, brand=nil, area=nil, versionnum=nil, platform=nil, extthird=nil, extfirst=nil, nettype=nil, device=nil, isabroad=nil, os=nil, browser=nil, costtype=nil, url=nil, env=nil)
          @StartTime = starttime
          @Type = type
          @EndTime = endtime
          @ID = id
          @ExtSecond = extsecond
          @Engine = engine
          @Isp = isp
          @From = from
          @Level = level
          @Brand = brand
          @Area = area
          @VersionNum = versionnum
          @Platform = platform
          @ExtThird = extthird
          @ExtFirst = extfirst
          @NetType = nettype
          @Device = device
          @IsAbroad = isabroad
          @Os = os
          @Browser = browser
          @CostType = costtype
          @Url = url
          @Env = env
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @Type = params['Type']
          @EndTime = params['EndTime']
          @ID = params['ID']
          @ExtSecond = params['ExtSecond']
          @Engine = params['Engine']
          @Isp = params['Isp']
          @From = params['From']
          @Level = params['Level']
          @Brand = params['Brand']
          @Area = params['Area']
          @VersionNum = params['VersionNum']
          @Platform = params['Platform']
          @ExtThird = params['ExtThird']
          @ExtFirst = params['ExtFirst']
          @NetType = params['NetType']
          @Device = params['Device']
          @IsAbroad = params['IsAbroad']
          @Os = params['Os']
          @Browser = params['Browser']
          @CostType = params['CostType']
          @Url = params['Url']
          @Env = params['Env']
        end
      end

      # DescribeDataStaticResource返回参数结构体
      class DescribeDataStaticResourceResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回值
        # @type Result: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDataStaticUrl请求参数结构体
      class DescribeDataStaticUrlRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间
        # @type StartTime: Integer
        # @param Type: pagepv：性能视图，nettype/version/platform/isp/region/device/browser/ext1/ext2/ext3/ret/status/from/url/env/：网络平台视图/Version视图/设备视图/ISP视图/地区视图/浏览器视图//ext1视图等等
        # @type Type: String
        # @param EndTime: 结束时间
        # @type EndTime: Integer
        # @param ID: 项目ID
        # @type ID: Integer
        # @param ExtSecond: 自定义2
        # @type ExtSecond: String
        # @param Engine: 浏览器引擎
        # @type Engine: String
        # @param Isp: 运营商
        # @type Isp: String
        # @param From: 来源页面
        # @type From: String
        # @param Level: 日志等级
        # @type Level: String
        # @param Brand: 品牌
        # @type Brand: String
        # @param Area: 地区
        # @type Area: String
        # @param VersionNum: 版本
        # @type VersionNum: String
        # @param Platform: 平台
        # @type Platform: String
        # @param ExtThird: 自定义3
        # @type ExtThird: String
        # @param ExtFirst: 自定义1
        # @type ExtFirst: String
        # @param NetType: 网络类型
        # @type NetType: String
        # @param Device: 机型
        # @type Device: String
        # @param IsAbroad: 是否海外
        # @type IsAbroad: String
        # @param Os: 操作系统
        # @type Os: String
        # @param Browser: 浏览器
        # @type Browser: String
        # @param CostType: 耗时计算方式
        # @type CostType: String
        # @param Url: 来源
        # @type Url: String
        # @param Env: 环境
        # @type Env: String

        attr_accessor :StartTime, :Type, :EndTime, :ID, :ExtSecond, :Engine, :Isp, :From, :Level, :Brand, :Area, :VersionNum, :Platform, :ExtThird, :ExtFirst, :NetType, :Device, :IsAbroad, :Os, :Browser, :CostType, :Url, :Env
        
        def initialize(starttime=nil, type=nil, endtime=nil, id=nil, extsecond=nil, engine=nil, isp=nil, from=nil, level=nil, brand=nil, area=nil, versionnum=nil, platform=nil, extthird=nil, extfirst=nil, nettype=nil, device=nil, isabroad=nil, os=nil, browser=nil, costtype=nil, url=nil, env=nil)
          @StartTime = starttime
          @Type = type
          @EndTime = endtime
          @ID = id
          @ExtSecond = extsecond
          @Engine = engine
          @Isp = isp
          @From = from
          @Level = level
          @Brand = brand
          @Area = area
          @VersionNum = versionnum
          @Platform = platform
          @ExtThird = extthird
          @ExtFirst = extfirst
          @NetType = nettype
          @Device = device
          @IsAbroad = isabroad
          @Os = os
          @Browser = browser
          @CostType = costtype
          @Url = url
          @Env = env
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @Type = params['Type']
          @EndTime = params['EndTime']
          @ID = params['ID']
          @ExtSecond = params['ExtSecond']
          @Engine = params['Engine']
          @Isp = params['Isp']
          @From = params['From']
          @Level = params['Level']
          @Brand = params['Brand']
          @Area = params['Area']
          @VersionNum = params['VersionNum']
          @Platform = params['Platform']
          @ExtThird = params['ExtThird']
          @ExtFirst = params['ExtFirst']
          @NetType = params['NetType']
          @Device = params['Device']
          @IsAbroad = params['IsAbroad']
          @Os = params['Os']
          @Browser = params['Browser']
          @CostType = params['CostType']
          @Url = params['Url']
          @Env = params['Env']
        end
      end

      # DescribeDataStaticUrl返回参数结构体
      class DescribeDataStaticUrlResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回值
        # @type Result: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDataWebVitalsPage请求参数结构体
      class DescribeDataWebVitalsPageRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间
        # @type StartTime: Integer
        # @param EndTime: 结束时间
        # @type EndTime: Integer
        # @param ID: 项目ID
        # @type ID: Integer
        # @param ExtSecond: 自定义2
        # @type ExtSecond: String
        # @param Engine: 浏览器引擎
        # @type Engine: String
        # @param Isp: 运营商
        # @type Isp: String
        # @param From: 来源页面
        # @type From: String
        # @param Level: 日志等级
        # @type Level: String
        # @param Type: 类型暂无
        # @type Type: String
        # @param Brand: 品牌
        # @type Brand: String
        # @param Area: 地区
        # @type Area: String
        # @param VersionNum: 版本
        # @type VersionNum: String
        # @param Platform: 平台
        # @type Platform: String
        # @param ExtThird: 自定义3
        # @type ExtThird: String
        # @param ExtFirst: 自定义1
        # @type ExtFirst: String
        # @param NetType: 网络类型
        # @type NetType: String
        # @param Device: 机型
        # @type Device: String
        # @param IsAbroad: 是否海外
        # @type IsAbroad: String
        # @param Os: 操作系统
        # @type Os: String
        # @param Browser: 浏览器
        # @type Browser: String
        # @param CostType: 耗时计算
        # @type CostType: String
        # @param Env: 环境
        # @type Env: String

        attr_accessor :StartTime, :EndTime, :ID, :ExtSecond, :Engine, :Isp, :From, :Level, :Type, :Brand, :Area, :VersionNum, :Platform, :ExtThird, :ExtFirst, :NetType, :Device, :IsAbroad, :Os, :Browser, :CostType, :Env
        
        def initialize(starttime=nil, endtime=nil, id=nil, extsecond=nil, engine=nil, isp=nil, from=nil, level=nil, type=nil, brand=nil, area=nil, versionnum=nil, platform=nil, extthird=nil, extfirst=nil, nettype=nil, device=nil, isabroad=nil, os=nil, browser=nil, costtype=nil, env=nil)
          @StartTime = starttime
          @EndTime = endtime
          @ID = id
          @ExtSecond = extsecond
          @Engine = engine
          @Isp = isp
          @From = from
          @Level = level
          @Type = type
          @Brand = brand
          @Area = area
          @VersionNum = versionnum
          @Platform = platform
          @ExtThird = extthird
          @ExtFirst = extfirst
          @NetType = nettype
          @Device = device
          @IsAbroad = isabroad
          @Os = os
          @Browser = browser
          @CostType = costtype
          @Env = env
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @ID = params['ID']
          @ExtSecond = params['ExtSecond']
          @Engine = params['Engine']
          @Isp = params['Isp']
          @From = params['From']
          @Level = params['Level']
          @Type = params['Type']
          @Brand = params['Brand']
          @Area = params['Area']
          @VersionNum = params['VersionNum']
          @Platform = params['Platform']
          @ExtThird = params['ExtThird']
          @ExtFirst = params['ExtFirst']
          @NetType = params['NetType']
          @Device = params['Device']
          @IsAbroad = params['IsAbroad']
          @Os = params['Os']
          @Browser = params['Browser']
          @CostType = params['CostType']
          @Env = params['Env']
        end
      end

      # DescribeDataWebVitalsPage返回参数结构体
      class DescribeDataWebVitalsPageResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回值
        # @type Result: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # DescribeError请求参数结构体
      class DescribeErrorRequest < TencentCloud::Common::AbstractModel
        # @param Date: 日期
        # @type Date: String
        # @param ID: 项目ID
        # @type ID: Integer

        attr_accessor :Date, :ID
        
        def initialize(date=nil, id=nil)
          @Date = date
          @ID = id
        end

        def deserialize(params)
          @Date = params['Date']
          @ID = params['ID']
        end
      end

      # DescribeError返回参数结构体
      class DescribeErrorResponse < TencentCloud::Common::AbstractModel
        # @param Content: 内容
        # @type Content: String
        # @param ID: 项目ID
        # @type ID: Integer
        # @param CreateTime: 时间
        # @type CreateTime: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Content, :ID, :CreateTime, :RequestId
        
        def initialize(content=nil, id=nil, createtime=nil, requestid=nil)
          @Content = content
          @ID = id
          @CreateTime = createtime
          @RequestId = requestid
        end

        def deserialize(params)
          @Content = params['Content']
          @ID = params['ID']
          @CreateTime = params['CreateTime']
          @RequestId = params['RequestId']
        end
      end

      # DescribeLogExports请求参数结构体
      class DescribeLogExportsRequest < TencentCloud::Common::AbstractModel
        # @param ID: 项目ID
        # @type ID: Integer

        attr_accessor :ID
        
        def initialize(id=nil)
          @ID = id
        end

        def deserialize(params)
          @ID = params['ID']
        end
      end

      # DescribeLogExports返回参数结构体
      class DescribeLogExportsResponse < TencentCloud::Common::AbstractModel
        # @param LogExportSet: 日志导出记录列表
        # @type LogExportSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :LogExportSet, :RequestId
        
        def initialize(logexportset=nil, requestid=nil)
          @LogExportSet = logexportset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['LogExportSet'].nil?
            @LogExportSet = []
            params['LogExportSet'].each do |i|
              logexport_tmp = LogExport.new
              logexport_tmp.deserialize(i)
              @LogExportSet << logexport_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeLogList请求参数结构体
      class DescribeLogListRequest < TencentCloud::Common::AbstractModel
        # @param Sort: 排序方式  desc  asc
        # @type Sort: String
        # @param ActionType: searchlog  histogram
        # @type ActionType: String
        # @param ID: 项目ID
        # @type ID: Integer
        # @param StartTime: 开始时间
        # @type StartTime: String
        # @param Limit: 单次查询返回的原始日志条数，最大值为100
        # @type Limit: Integer
        # @param Context: 上下文，加载更多日志时使用，透传上次返回的 Context 值，获取后续的日志内容，总计最多可获取1万条原始日志。过期时间1小时
        # @type Context: String
        # @param Query: 查询语句，参考控制台请求参数，语句长度最大为4096
        # @type Query: String
        # @param EndTime: 结束时间
        # @type EndTime: String

        attr_accessor :Sort, :ActionType, :ID, :StartTime, :Limit, :Context, :Query, :EndTime
        
        def initialize(sort=nil, actiontype=nil, id=nil, starttime=nil, limit=nil, context=nil, query=nil, endtime=nil)
          @Sort = sort
          @ActionType = actiontype
          @ID = id
          @StartTime = starttime
          @Limit = limit
          @Context = context
          @Query = query
          @EndTime = endtime
        end

        def deserialize(params)
          @Sort = params['Sort']
          @ActionType = params['ActionType']
          @ID = params['ID']
          @StartTime = params['StartTime']
          @Limit = params['Limit']
          @Context = params['Context']
          @Query = params['Query']
          @EndTime = params['EndTime']
        end
      end

      # DescribeLogList返回参数结构体
      class DescribeLogListResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回字符串
        # @type Result: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # DescribeOfflineLogConfigs请求参数结构体
      class DescribeOfflineLogConfigsRequest < TencentCloud::Common::AbstractModel
        # @param ProjectKey: 项目唯一上报 key
        # @type ProjectKey: String

        attr_accessor :ProjectKey
        
        def initialize(projectkey=nil)
          @ProjectKey = projectkey
        end

        def deserialize(params)
          @ProjectKey = params['ProjectKey']
        end
      end

      # DescribeOfflineLogConfigs返回参数结构体
      class DescribeOfflineLogConfigsResponse < TencentCloud::Common::AbstractModel
        # @param Msg: 接口调用信息
        # @type Msg: String
        # @param UniqueIDSet: 用户唯一标示数组
        # @type UniqueIDSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Msg, :UniqueIDSet, :RequestId
        
        def initialize(msg=nil, uniqueidset=nil, requestid=nil)
          @Msg = msg
          @UniqueIDSet = uniqueidset
          @RequestId = requestid
        end

        def deserialize(params)
          @Msg = params['Msg']
          @UniqueIDSet = params['UniqueIDSet']
          @RequestId = params['RequestId']
        end
      end

      # DescribeOfflineLogRecords请求参数结构体
      class DescribeOfflineLogRecordsRequest < TencentCloud::Common::AbstractModel
        # @param ProjectKey: 项目唯一上报 key
        # @type ProjectKey: String

        attr_accessor :ProjectKey
        
        def initialize(projectkey=nil)
          @ProjectKey = projectkey
        end

        def deserialize(params)
          @ProjectKey = params['ProjectKey']
        end
      end

      # DescribeOfflineLogRecords返回参数结构体
      class DescribeOfflineLogRecordsResponse < TencentCloud::Common::AbstractModel
        # @param Msg: 接口调用信息
        # @type Msg: String
        # @param RecordSet: 记录 ID 数组
        # @type RecordSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Msg, :RecordSet, :RequestId
        
        def initialize(msg=nil, recordset=nil, requestid=nil)
          @Msg = msg
          @RecordSet = recordset
          @RequestId = requestid
        end

        def deserialize(params)
          @Msg = params['Msg']
          @RecordSet = params['RecordSet']
          @RequestId = params['RequestId']
        end
      end

      # DescribeOfflineLogs请求参数结构体
      class DescribeOfflineLogsRequest < TencentCloud::Common::AbstractModel
        # @param ProjectKey: 项目唯一上报 key
        # @type ProjectKey: String
        # @param FileIDs: 离线日志文件 id 列表
        # @type FileIDs: Array

        attr_accessor :ProjectKey, :FileIDs
        
        def initialize(projectkey=nil, fileids=nil)
          @ProjectKey = projectkey
          @FileIDs = fileids
        end

        def deserialize(params)
          @ProjectKey = params['ProjectKey']
          @FileIDs = params['FileIDs']
        end
      end

      # DescribeOfflineLogs返回参数结构体
      class DescribeOfflineLogsResponse < TencentCloud::Common::AbstractModel
        # @param Msg: 接口调用返回信息
        # @type Msg: String
        # @param LogSet: 日志列表
        # @type LogSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Msg, :LogSet, :RequestId
        
        def initialize(msg=nil, logset=nil, requestid=nil)
          @Msg = msg
          @LogSet = logset
          @RequestId = requestid
        end

        def deserialize(params)
          @Msg = params['Msg']
          @LogSet = params['LogSet']
          @RequestId = params['RequestId']
        end
      end

      # DescribeProjectLimits请求参数结构体
      class DescribeProjectLimitsRequest < TencentCloud::Common::AbstractModel
        # @param ProjectID: 项目ID
        # @type ProjectID: Integer

        attr_accessor :ProjectID
        
        def initialize(projectid=nil)
          @ProjectID = projectid
        end

        def deserialize(params)
          @ProjectID = params['ProjectID']
        end
      end

      # DescribeProjectLimits返回参数结构体
      class DescribeProjectLimitsResponse < TencentCloud::Common::AbstractModel
        # @param ProjectLimitSet: 上报率数组列表
        # @type ProjectLimitSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ProjectLimitSet, :RequestId
        
        def initialize(projectlimitset=nil, requestid=nil)
          @ProjectLimitSet = projectlimitset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ProjectLimitSet'].nil?
            @ProjectLimitSet = []
            params['ProjectLimitSet'].each do |i|
              projectlimit_tmp = ProjectLimit.new
              projectlimit_tmp.deserialize(i)
              @ProjectLimitSet << projectlimit_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeProjects请求参数结构体
      class DescribeProjectsRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 分页每页数目，整型
        # @type Limit: Integer
        # @param Offset: 分页页码，整型
        # @type Offset: Integer
        # @param Filters: 过滤参数；demo模式传{"Name": "IsDemo", "Values":["1"]}
        # @type Filters: Array
        # @param IsDemo: 该参数已废弃，demo模式请在Filters内注明
        # @type IsDemo: Integer

        attr_accessor :Limit, :Offset, :Filters, :IsDemo
        
        def initialize(limit=nil, offset=nil, filters=nil, isdemo=nil)
          @Limit = limit
          @Offset = offset
          @Filters = filters
          @IsDemo = isdemo
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @IsDemo = params['IsDemo']
        end
      end

      # DescribeProjects返回参数结构体
      class DescribeProjectsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 列表总数
        # @type TotalCount: Integer
        # @param ProjectSet: 项目列表
        # @type ProjectSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :ProjectSet, :RequestId
        
        def initialize(totalcount=nil, projectset=nil, requestid=nil)
          @TotalCount = totalcount
          @ProjectSet = projectset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['ProjectSet'].nil?
            @ProjectSet = []
            params['ProjectSet'].each do |i|
              rumproject_tmp = RumProject.new
              rumproject_tmp.deserialize(i)
              @ProjectSet << rumproject_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribePvList请求参数结构体
      class DescribePvListRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: ID
        # @type ProjectId: Integer
        # @param EndTime: 结束时间
        # @type EndTime: String
        # @param StartTime: 开始时间
        # @type StartTime: String
        # @param Dimension: 获取day：d，   获取min则不填
        # @type Dimension: String

        attr_accessor :ProjectId, :EndTime, :StartTime, :Dimension
        
        def initialize(projectid=nil, endtime=nil, starttime=nil, dimension=nil)
          @ProjectId = projectid
          @EndTime = endtime
          @StartTime = starttime
          @Dimension = dimension
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @EndTime = params['EndTime']
          @StartTime = params['StartTime']
          @Dimension = params['Dimension']
        end
      end

      # DescribePvList返回参数结构体
      class DescribePvListResponse < TencentCloud::Common::AbstractModel
        # @param ProjectPvSet: pv列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectPvSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ProjectPvSet, :RequestId
        
        def initialize(projectpvset=nil, requestid=nil)
          @ProjectPvSet = projectpvset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ProjectPvSet'].nil?
            @ProjectPvSet = []
            params['ProjectPvSet'].each do |i|
              rumpvinfo_tmp = RumPvInfo.new
              rumpvinfo_tmp.deserialize(i)
              @ProjectPvSet << rumpvinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeReleaseFileSign请求参数结构体
      class DescribeReleaseFileSignRequest < TencentCloud::Common::AbstractModel
        # @param Timeout: 超时时间，不填默认是 5 分钟
        # @type Timeout: Integer

        attr_accessor :Timeout
        
        def initialize(timeout=nil)
          @Timeout = timeout
        end

        def deserialize(params)
          @Timeout = params['Timeout']
        end
      end

      # DescribeReleaseFileSign返回参数结构体
      class DescribeReleaseFileSignResponse < TencentCloud::Common::AbstractModel
        # @param SecretKey: 临时密钥key
        # @type SecretKey: String
        # @param SecretID: 临时密钥 id
        # @type SecretID: String
        # @param SessionToken: 临时密钥临时 token
        # @type SessionToken: String
        # @param StartTime: 开始时间戳
        # @type StartTime: Integer
        # @param ExpiredTime: 过期时间戳
        # @type ExpiredTime: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SecretKey, :SecretID, :SessionToken, :StartTime, :ExpiredTime, :RequestId
        
        def initialize(secretkey=nil, secretid=nil, sessiontoken=nil, starttime=nil, expiredtime=nil, requestid=nil)
          @SecretKey = secretkey
          @SecretID = secretid
          @SessionToken = sessiontoken
          @StartTime = starttime
          @ExpiredTime = expiredtime
          @RequestId = requestid
        end

        def deserialize(params)
          @SecretKey = params['SecretKey']
          @SecretID = params['SecretID']
          @SessionToken = params['SessionToken']
          @StartTime = params['StartTime']
          @ExpiredTime = params['ExpiredTime']
          @RequestId = params['RequestId']
        end
      end

      # DescribeReleaseFiles请求参数结构体
      class DescribeReleaseFilesRequest < TencentCloud::Common::AbstractModel
        # @param ProjectID: 项目 id
        # @type ProjectID: Integer
        # @param FileVersion: 文件版本
        # @type FileVersion: String

        attr_accessor :ProjectID, :FileVersion
        
        def initialize(projectid=nil, fileversion=nil)
          @ProjectID = projectid
          @FileVersion = fileversion
        end

        def deserialize(params)
          @ProjectID = params['ProjectID']
          @FileVersion = params['FileVersion']
        end
      end

      # DescribeReleaseFiles返回参数结构体
      class DescribeReleaseFilesResponse < TencentCloud::Common::AbstractModel
        # @param Files: 文件信息列表
        # @type Files: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Files, :RequestId
        
        def initialize(files=nil, requestid=nil)
          @Files = files
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Files'].nil?
            @Files = []
            params['Files'].each do |i|
              releasefile_tmp = ReleaseFile.new
              releasefile_tmp.deserialize(i)
              @Files << releasefile_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeScores请求参数结构体
      class DescribeScoresRequest < TencentCloud::Common::AbstractModel
        # @param EndTime: 结束时间
        # @type EndTime: String
        # @param StartTime: 开始时间
        # @type StartTime: String
        # @param ID: 项目ID
        # @type ID: Integer
        # @param IsDemo: 该参数已废弃
        # @type IsDemo: Integer

        attr_accessor :EndTime, :StartTime, :ID, :IsDemo
        
        def initialize(endtime=nil, starttime=nil, id=nil, isdemo=nil)
          @EndTime = endtime
          @StartTime = starttime
          @ID = id
          @IsDemo = isdemo
        end

        def deserialize(params)
          @EndTime = params['EndTime']
          @StartTime = params['StartTime']
          @ID = params['ID']
          @IsDemo = params['IsDemo']
        end
      end

      # DescribeScores返回参数结构体
      class DescribeScoresResponse < TencentCloud::Common::AbstractModel
        # @param ScoreSet: 数组
        # @type ScoreSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ScoreSet, :RequestId
        
        def initialize(scoreset=nil, requestid=nil)
          @ScoreSet = scoreset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ScoreSet'].nil?
            @ScoreSet = []
            params['ScoreSet'].each do |i|
              scoreinfo_tmp = ScoreInfo.new
              scoreinfo_tmp.deserialize(i)
              @ScoreSet << scoreinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTawAreas请求参数结构体
      class DescribeTawAreasRequest < TencentCloud::Common::AbstractModel
        # @param AreaIds: 片区Id
        # @type AreaIds: Array
        # @param AreaKeys: 片区Key
        # @type AreaKeys: Array
        # @param Limit: 分页Limit
        # @type Limit: Integer
        # @param AreaStatuses: 片区状态(1=有效，2=无效)
        # @type AreaStatuses: Array
        # @param Offset: 分页Offset
        # @type Offset: Integer

        attr_accessor :AreaIds, :AreaKeys, :Limit, :AreaStatuses, :Offset
        
        def initialize(areaids=nil, areakeys=nil, limit=nil, areastatuses=nil, offset=nil)
          @AreaIds = areaids
          @AreaKeys = areakeys
          @Limit = limit
          @AreaStatuses = areastatuses
          @Offset = offset
        end

        def deserialize(params)
          @AreaIds = params['AreaIds']
          @AreaKeys = params['AreaKeys']
          @Limit = params['Limit']
          @AreaStatuses = params['AreaStatuses']
          @Offset = params['Offset']
        end
      end

      # DescribeTawAreas返回参数结构体
      class DescribeTawAreasResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 片区总数
        # @type TotalCount: Integer
        # @param AreaSet: 片区列表
        # @type AreaSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :AreaSet, :RequestId
        
        def initialize(totalcount=nil, areaset=nil, requestid=nil)
          @TotalCount = totalcount
          @AreaSet = areaset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['AreaSet'].nil?
            @AreaSet = []
            params['AreaSet'].each do |i|
              rumareainfo_tmp = RumAreaInfo.new
              rumareainfo_tmp.deserialize(i)
              @AreaSet << rumareainfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTawInstances请求参数结构体
      class DescribeTawInstancesRequest < TencentCloud::Common::AbstractModel
        # @param ChargeStatuses: 计费状态
        # @type ChargeStatuses: Array
        # @param ChargeTypes: 计费类型
        # @type ChargeTypes: Array
        # @param Limit: 分页Limit
        # @type Limit: Integer
        # @param Offset: 分页Offset
        # @type Offset: Integer
        # @param AreaIds: 片区Id
        # @type AreaIds: Array
        # @param InstanceStatuses: 实例状态(1=创建中，2=运行中，3=异常，4=重启中，5=停止中，6=已停止，7=销毁中，8=已销毁)
        # @type InstanceStatuses: Array
        # @param InstanceIds: 实例Id
        # @type InstanceIds: Array
        # @param Filters: 过滤参数；demo模式传{"Name": "IsDemo", "Values":["1"]}
        # @type Filters: Array
        # @param IsDemo: 该参数已废弃，demo模式请在Filters内注明
        # @type IsDemo: Integer

        attr_accessor :ChargeStatuses, :ChargeTypes, :Limit, :Offset, :AreaIds, :InstanceStatuses, :InstanceIds, :Filters, :IsDemo
        
        def initialize(chargestatuses=nil, chargetypes=nil, limit=nil, offset=nil, areaids=nil, instancestatuses=nil, instanceids=nil, filters=nil, isdemo=nil)
          @ChargeStatuses = chargestatuses
          @ChargeTypes = chargetypes
          @Limit = limit
          @Offset = offset
          @AreaIds = areaids
          @InstanceStatuses = instancestatuses
          @InstanceIds = instanceids
          @Filters = filters
          @IsDemo = isdemo
        end

        def deserialize(params)
          @ChargeStatuses = params['ChargeStatuses']
          @ChargeTypes = params['ChargeTypes']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @AreaIds = params['AreaIds']
          @InstanceStatuses = params['InstanceStatuses']
          @InstanceIds = params['InstanceIds']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @IsDemo = params['IsDemo']
        end
      end

      # DescribeTawInstances返回参数结构体
      class DescribeTawInstancesResponse < TencentCloud::Common::AbstractModel
        # @param InstanceSet: 实例列表
        # @type InstanceSet: Array
        # @param TotalCount: 实例总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceSet, :TotalCount, :RequestId
        
        def initialize(instanceset=nil, totalcount=nil, requestid=nil)
          @InstanceSet = instanceset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['InstanceSet'].nil?
            @InstanceSet = []
            params['InstanceSet'].each do |i|
              ruminstanceinfo_tmp = RumInstanceInfo.new
              ruminstanceinfo_tmp.deserialize(i)
              @InstanceSet << ruminstanceinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeUvList请求参数结构体
      class DescribeUvListRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: ID
        # @type ProjectId: Integer
        # @param EndTime: 结束时间
        # @type EndTime: String
        # @param StartTime: 开始时间
        # @type StartTime: String
        # @param Dimension: 获取day：d，   min:m
        # @type Dimension: String

        attr_accessor :ProjectId, :EndTime, :StartTime, :Dimension
        
        def initialize(projectid=nil, endtime=nil, starttime=nil, dimension=nil)
          @ProjectId = projectid
          @EndTime = endtime
          @StartTime = starttime
          @Dimension = dimension
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @EndTime = params['EndTime']
          @StartTime = params['StartTime']
          @Dimension = params['Dimension']
        end
      end

      # DescribeUvList返回参数结构体
      class DescribeUvListResponse < TencentCloud::Common::AbstractModel
        # @param ProjectUvSet: uv列表
        # @type ProjectUvSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ProjectUvSet, :RequestId
        
        def initialize(projectuvset=nil, requestid=nil)
          @ProjectUvSet = projectuvset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ProjectUvSet'].nil?
            @ProjectUvSet = []
            params['ProjectUvSet'].each do |i|
              rumuvinfo_tmp = RumUvInfo.new
              rumuvinfo_tmp.deserialize(i)
              @ProjectUvSet << rumuvinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeWhitelists请求参数结构体
      class DescribeWhitelistsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceID: 实例instance-ID
        # @type InstanceID: String

        attr_accessor :InstanceID
        
        def initialize(instanceid=nil)
          @InstanceID = instanceid
        end

        def deserialize(params)
          @InstanceID = params['InstanceID']
        end
      end

      # DescribeWhitelists返回参数结构体
      class DescribeWhitelistsResponse < TencentCloud::Common::AbstractModel
        # @param WhitelistSet: 白名单列表
        # @type WhitelistSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :WhitelistSet, :RequestId
        
        def initialize(whitelistset=nil, requestid=nil)
          @WhitelistSet = whitelistset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['WhitelistSet'].nil?
            @WhitelistSet = []
            params['WhitelistSet'].each do |i|
              whitelist_tmp = Whitelist.new
              whitelist_tmp.deserialize(i)
              @WhitelistSet << whitelist_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 描述键值对过滤器，用于条件过滤查询。例如过滤ID、名称、状态等

      # · 若存在多个Filter时，Filter间的关系为逻辑与（AND）关系。
      # · 若同一个Filter存在多个Values，同一Filter下Values间的关系为逻辑或（OR）关系。
      class Filter < TencentCloud::Common::AbstractModel
        # @param Values: 一个或者多个过滤值。
        # @type Values: Array
        # @param Name: 过滤键的名称。
        # @type Name: String

        attr_accessor :Values, :Name
        
        def initialize(values=nil, name=nil)
          @Values = values
          @Name = name
        end

        def deserialize(params)
          @Values = params['Values']
          @Name = params['Name']
        end
      end

      # 日志导出记录
      class LogExport < TencentCloud::Common::AbstractModel
        # @param CosPath: 日志导出路径
        # @type CosPath: String
        # @param Count: 日志导出数量
        # @type Count: Integer
        # @param CreateTime: 日志导出任务创建时间
        # @type CreateTime: String
        # @param ExportID: 日志导出任务ID
        # @type ExportID: String
        # @param FileName: 日志导出文件名
        # @type FileName: String
        # @param FileSize: 日志文件大小
        # @type FileSize: Integer
        # @param Format: 日志导出格式
        # @type Format: String
        # @param Order: 日志导出时间排序
        # @type Order: String
        # @param Query: 日志导出查询语句
        # @type Query: String
        # @param StartTime: 日志导出起始时间
        # @type StartTime: String
        # @param EndTime: 日志导出结束时间
        # @type EndTime: String
        # @param Status: 日志下载状态。Queuing:导出正在排队中，Processing:导出正在进行中，Complete:导出完成，Failed:导出失败，Expired:日志导出已过期（三天有效期）。
        # @type Status: String

        attr_accessor :CosPath, :Count, :CreateTime, :ExportID, :FileName, :FileSize, :Format, :Order, :Query, :StartTime, :EndTime, :Status
        
        def initialize(cospath=nil, count=nil, createtime=nil, exportid=nil, filename=nil, filesize=nil, format=nil, order=nil, query=nil, starttime=nil, endtime=nil, status=nil)
          @CosPath = cospath
          @Count = count
          @CreateTime = createtime
          @ExportID = exportid
          @FileName = filename
          @FileSize = filesize
          @Format = format
          @Order = order
          @Query = query
          @StartTime = starttime
          @EndTime = endtime
          @Status = status
        end

        def deserialize(params)
          @CosPath = params['CosPath']
          @Count = params['Count']
          @CreateTime = params['CreateTime']
          @ExportID = params['ExportID']
          @FileName = params['FileName']
          @FileSize = params['FileSize']
          @Format = params['Format']
          @Order = params['Order']
          @Query = params['Query']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Status = params['Status']
        end
      end

      # ModifyInstance请求参数结构体
      class ModifyInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 要修改的实例id
        # @type InstanceId: String
        # @param InstanceName: 新的实例名称(长度最大不超过255)
        # @type InstanceName: String
        # @param InstanceDesc: 新的实例描述(长度最大不超过1024)
        # @type InstanceDesc: String

        attr_accessor :InstanceId, :InstanceName, :InstanceDesc
        
        def initialize(instanceid=nil, instancename=nil, instancedesc=nil)
          @InstanceId = instanceid
          @InstanceName = instancename
          @InstanceDesc = instancedesc
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @InstanceDesc = params['InstanceDesc']
        end
      end

      # ModifyInstance返回参数结构体
      class ModifyInstanceResponse < TencentCloud::Common::AbstractModel
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

      # ModifyProjectLimit请求参数结构体
      class ModifyProjectLimitRequest < TencentCloud::Common::AbstractModel
        # @param ProjectID: 项目ID
        # @type ProjectID: Integer
        # @param ProjectInterface: 项目接口
        # @type ProjectInterface: String
        # @param ReportRate: 上报比例   10代表10%
        # @type ReportRate: Integer
        # @param ReportType: 上报类型 1：比例  2：上报量
        # @type ReportType: Integer
        # @param ID: 主键ID
        # @type ID: Integer

        attr_accessor :ProjectID, :ProjectInterface, :ReportRate, :ReportType, :ID
        
        def initialize(projectid=nil, projectinterface=nil, reportrate=nil, reporttype=nil, id=nil)
          @ProjectID = projectid
          @ProjectInterface = projectinterface
          @ReportRate = reportrate
          @ReportType = reporttype
          @ID = id
        end

        def deserialize(params)
          @ProjectID = params['ProjectID']
          @ProjectInterface = params['ProjectInterface']
          @ReportRate = params['ReportRate']
          @ReportType = params['ReportType']
          @ID = params['ID']
        end
      end

      # ModifyProjectLimit返回参数结构体
      class ModifyProjectLimitResponse < TencentCloud::Common::AbstractModel
        # @param Msg: 返回信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Msg: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Msg, :RequestId
        
        def initialize(msg=nil, requestid=nil)
          @Msg = msg
          @RequestId = requestid
        end

        def deserialize(params)
          @Msg = params['Msg']
          @RequestId = params['RequestId']
        end
      end

      # ModifyProject请求参数结构体
      class ModifyProjectRequest < TencentCloud::Common::AbstractModel
        # @param ID: 项目 id
        # @type ID: Integer
        # @param Name: 项目名(可选，不为空且最长为 200)
        # @type Name: String
        # @param URL: 项目网页地址(可选，最长为 256)
        # @type URL: String
        # @param Repo: 项目仓库地址(可选，最长为 256)
        # @type Repo: String
        # @param InstanceID: 项目需要转移到的实例 id(可选)
        # @type InstanceID: String
        # @param Rate: 项目采样率(可选)
        # @type Rate: String
        # @param EnableURLGroup: 是否开启聚类(可选)
        # @type EnableURLGroup: Integer
        # @param Type: 项目类型(可接受值为 "web", "mp", "android", "ios", "node", "hippy", "weex", "viola", "rn")
        # @type Type: String
        # @param Desc: 项目描述(可选，最长为 1000)
        # @type Desc: String

        attr_accessor :ID, :Name, :URL, :Repo, :InstanceID, :Rate, :EnableURLGroup, :Type, :Desc
        
        def initialize(id=nil, name=nil, url=nil, repo=nil, instanceid=nil, rate=nil, enableurlgroup=nil, type=nil, desc=nil)
          @ID = id
          @Name = name
          @URL = url
          @Repo = repo
          @InstanceID = instanceid
          @Rate = rate
          @EnableURLGroup = enableurlgroup
          @Type = type
          @Desc = desc
        end

        def deserialize(params)
          @ID = params['ID']
          @Name = params['Name']
          @URL = params['URL']
          @Repo = params['Repo']
          @InstanceID = params['InstanceID']
          @Rate = params['Rate']
          @EnableURLGroup = params['EnableURLGroup']
          @Type = params['Type']
          @Desc = params['Desc']
        end
      end

      # ModifyProject返回参数结构体
      class ModifyProjectResponse < TencentCloud::Common::AbstractModel
        # @param Msg: 操作信息
        # @type Msg: String
        # @param ID: 项目id
        # @type ID: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Msg, :ID, :RequestId
        
        def initialize(msg=nil, id=nil, requestid=nil)
          @Msg = msg
          @ID = id
          @RequestId = requestid
        end

        def deserialize(params)
          @Msg = params['Msg']
          @ID = params['ID']
          @RequestId = params['RequestId']
        end
      end

      # 项目接口限制类型
      class ProjectLimit < TencentCloud::Common::AbstractModel
        # @param ProjectInterface: 接口
        # @type ProjectInterface: String
        # @param ReportRate: 上报率
        # @type ReportRate: Integer
        # @param ReportType: 上报类型 1：上报率  2：上报量限制
        # @type ReportType: Integer
        # @param ID: 主键ID
        # @type ID: Integer
        # @param ProjectID: 项目ID
        # @type ProjectID: Integer

        attr_accessor :ProjectInterface, :ReportRate, :ReportType, :ID, :ProjectID
        
        def initialize(projectinterface=nil, reportrate=nil, reporttype=nil, id=nil, projectid=nil)
          @ProjectInterface = projectinterface
          @ReportRate = reportrate
          @ReportType = reporttype
          @ID = id
          @ProjectID = projectid
        end

        def deserialize(params)
          @ProjectInterface = params['ProjectInterface']
          @ReportRate = params['ReportRate']
          @ReportType = params['ReportType']
          @ID = params['ID']
          @ProjectID = params['ProjectID']
        end
      end

      # 发布文件列表(SOURCEMAP)
      class ReleaseFile < TencentCloud::Common::AbstractModel
        # @param Version: 文件版本
        # @type Version: String
        # @param FileKey: 文件唯一 key
        # @type FileKey: String
        # @param FileName: 文件名
        # @type FileName: String
        # @param FileHash: 文件哈希值
        # @type FileHash: String
        # @param ID: 文件 id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ID: Integer

        attr_accessor :Version, :FileKey, :FileName, :FileHash, :ID
        
        def initialize(version=nil, filekey=nil, filename=nil, filehash=nil, id=nil)
          @Version = version
          @FileKey = filekey
          @FileName = filename
          @FileHash = filehash
          @ID = id
        end

        def deserialize(params)
          @Version = params['Version']
          @FileKey = params['FileKey']
          @FileName = params['FileName']
          @FileHash = params['FileHash']
          @ID = params['ID']
        end
      end

      # ResumeInstance请求参数结构体
      class ResumeInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 需要恢复的实例id
        # @type InstanceId: String

        attr_accessor :InstanceId
        
        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # ResumeInstance返回参数结构体
      class ResumeInstanceResponse < TencentCloud::Common::AbstractModel
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

      # Rum片区信息
      class RumAreaInfo < TencentCloud::Common::AbstractModel
        # @param AreaId: 片区Id
        # @type AreaId: Integer
        # @param AreaStatus: 片区状态(1=有效，2=无效)
        # @type AreaStatus: Integer
        # @param AreaName: 片区名称
        # @type AreaName: String
        # @param AreaKey: 片区Key
        # @type AreaKey: String

        attr_accessor :AreaId, :AreaStatus, :AreaName, :AreaKey
        
        def initialize(areaid=nil, areastatus=nil, areaname=nil, areakey=nil)
          @AreaId = areaid
          @AreaStatus = areastatus
          @AreaName = areaname
          @AreaKey = areakey
        end

        def deserialize(params)
          @AreaId = params['AreaId']
          @AreaStatus = params['AreaStatus']
          @AreaName = params['AreaName']
          @AreaKey = params['AreaKey']
        end
      end

      # Rum实例信息
      class RumInstanceInfo < TencentCloud::Common::AbstractModel
        # @param InstanceStatus: 实例状态(1=创建中，2=运行中，3=异常，4=重启中，5=停止中，6=已停止，7=已删除)
        # @type InstanceStatus: Integer
        # @param AreaId: 片区Id
        # @type AreaId: Integer
        # @param Tags: 标签列表
        # @type Tags: Array
        # @param InstanceId: 实例Id
        # @type InstanceId: String
        # @param ClusterId: 集群Id
        # @type ClusterId: Integer
        # @param InstanceDesc: 实例描述
        # @type InstanceDesc: String
        # @param ChargeStatus: 计费状态(1=使用中，2=已过期，3=已销毁，4=分配中，5=分配失败)
        # @type ChargeStatus: Integer
        # @param ChargeType: 计费类型(1=免费版，2=预付费，3=后付费)
        # @type ChargeType: Integer
        # @param UpdatedAt: 更新时间
        # @type UpdatedAt: String
        # @param DataRetentionDays: 数据保留时间(天)
        # @type DataRetentionDays: Integer
        # @param InstanceName: 实例名称
        # @type InstanceName: String
        # @param CreatedAt: 创建时间
        # @type CreatedAt: String

        attr_accessor :InstanceStatus, :AreaId, :Tags, :InstanceId, :ClusterId, :InstanceDesc, :ChargeStatus, :ChargeType, :UpdatedAt, :DataRetentionDays, :InstanceName, :CreatedAt
        
        def initialize(instancestatus=nil, areaid=nil, tags=nil, instanceid=nil, clusterid=nil, instancedesc=nil, chargestatus=nil, chargetype=nil, updatedat=nil, dataretentiondays=nil, instancename=nil, createdat=nil)
          @InstanceStatus = instancestatus
          @AreaId = areaid
          @Tags = tags
          @InstanceId = instanceid
          @ClusterId = clusterid
          @InstanceDesc = instancedesc
          @ChargeStatus = chargestatus
          @ChargeType = chargetype
          @UpdatedAt = updatedat
          @DataRetentionDays = dataretentiondays
          @InstanceName = instancename
          @CreatedAt = createdat
        end

        def deserialize(params)
          @InstanceStatus = params['InstanceStatus']
          @AreaId = params['AreaId']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @InstanceId = params['InstanceId']
          @ClusterId = params['ClusterId']
          @InstanceDesc = params['InstanceDesc']
          @ChargeStatus = params['ChargeStatus']
          @ChargeType = params['ChargeType']
          @UpdatedAt = params['UpdatedAt']
          @DataRetentionDays = params['DataRetentionDays']
          @InstanceName = params['InstanceName']
          @CreatedAt = params['CreatedAt']
        end
      end

      # Rum 项目信息
      class RumProject < TencentCloud::Common::AbstractModel
        # @param Name: 项目名
        # @type Name: String
        # @param Creator: 创建者 id
        # @type Creator: String
        # @param InstanceID: 实例 id
        # @type InstanceID: String
        # @param Type: 项目类型
        # @type Type: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param Repo: 项目仓库地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Repo: String
        # @param URL: 项目网址地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type URL: String
        # @param Rate: 项目采样频率
        # @type Rate: String
        # @param Key: 项目唯一key（长度 12 位）
        # @type Key: String
        # @param EnableURLGroup: 是否开启url聚类
        # @type EnableURLGroup: Integer
        # @param InstanceName: 实例名
        # @type InstanceName: String
        # @param ID: 项目 ID
        # @type ID: Integer
        # @param InstanceKey: 实例 key
        # @type InstanceKey: String
        # @param Desc: 项目描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Desc: String
        # @param IsStar: 是否星标  1:是 0:否
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsStar: Integer
        # @param ProjectStatus: 项目状态(1 创建中，2 运行中，3 异常，4 重启中，5 停止中，6 已停止， 7 销毁中，8 已销毁)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectStatus: Integer

        attr_accessor :Name, :Creator, :InstanceID, :Type, :CreateTime, :Repo, :URL, :Rate, :Key, :EnableURLGroup, :InstanceName, :ID, :InstanceKey, :Desc, :IsStar, :ProjectStatus
        
        def initialize(name=nil, creator=nil, instanceid=nil, type=nil, createtime=nil, repo=nil, url=nil, rate=nil, key=nil, enableurlgroup=nil, instancename=nil, id=nil, instancekey=nil, desc=nil, isstar=nil, projectstatus=nil)
          @Name = name
          @Creator = creator
          @InstanceID = instanceid
          @Type = type
          @CreateTime = createtime
          @Repo = repo
          @URL = url
          @Rate = rate
          @Key = key
          @EnableURLGroup = enableurlgroup
          @InstanceName = instancename
          @ID = id
          @InstanceKey = instancekey
          @Desc = desc
          @IsStar = isstar
          @ProjectStatus = projectstatus
        end

        def deserialize(params)
          @Name = params['Name']
          @Creator = params['Creator']
          @InstanceID = params['InstanceID']
          @Type = params['Type']
          @CreateTime = params['CreateTime']
          @Repo = params['Repo']
          @URL = params['URL']
          @Rate = params['Rate']
          @Key = params['Key']
          @EnableURLGroup = params['EnableURLGroup']
          @InstanceName = params['InstanceName']
          @ID = params['ID']
          @InstanceKey = params['InstanceKey']
          @Desc = params['Desc']
          @IsStar = params['IsStar']
          @ProjectStatus = params['ProjectStatus']
        end
      end

      # rum 日志对象
      class RumPvInfo < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: Integer
        # @param Pv: pv访问量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Pv: String
        # @param CreateTime: 时间
        # @type CreateTime: String

        attr_accessor :ProjectId, :Pv, :CreateTime
        
        def initialize(projectid=nil, pv=nil, createtime=nil)
          @ProjectId = projectid
          @Pv = pv
          @CreateTime = createtime
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @Pv = params['Pv']
          @CreateTime = params['CreateTime']
        end
      end

      # RumUv 访问量
      class RumUvInfo < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: Integer
        # @param Uv: uv访问量
        # @type Uv: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String

        attr_accessor :ProjectId, :Uv, :CreateTime
        
        def initialize(projectid=nil, uv=nil, createtime=nil)
          @ProjectId = projectid
          @Uv = uv
          @CreateTime = createtime
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @Uv = params['Uv']
          @CreateTime = params['CreateTime']
        end
      end

      # project Score分数实体
      class ScoreInfo < TencentCloud::Common::AbstractModel
        # @param StaticDuration: duration
        # @type StaticDuration: String
        # @param PagePv: pv
        # @type PagePv: String
        # @param ApiFail: 失败
        # @type ApiFail: String
        # @param ApiNum: 请求
        # @type ApiNum: String
        # @param StaticFail: fail
        # @type StaticFail: String
        # @param ProjectID: 项目id
        # @type ProjectID: Integer
        # @param PageUv: uv
        # @type PageUv: String
        # @param ApiDuration: 请求次数
        # @type ApiDuration: String
        # @param Score: 分数
        # @type Score: String
        # @param PageError: error
        # @type PageError: String
        # @param StaticNum: num
        # @type StaticNum: String
        # @param RecordNum: num
        # @type RecordNum: Integer
        # @param PageDuration: Duration
        # @type PageDuration: String

        attr_accessor :StaticDuration, :PagePv, :ApiFail, :ApiNum, :StaticFail, :ProjectID, :PageUv, :ApiDuration, :Score, :PageError, :StaticNum, :RecordNum, :PageDuration
        
        def initialize(staticduration=nil, pagepv=nil, apifail=nil, apinum=nil, staticfail=nil, projectid=nil, pageuv=nil, apiduration=nil, score=nil, pageerror=nil, staticnum=nil, recordnum=nil, pageduration=nil)
          @StaticDuration = staticduration
          @PagePv = pagepv
          @ApiFail = apifail
          @ApiNum = apinum
          @StaticFail = staticfail
          @ProjectID = projectid
          @PageUv = pageuv
          @ApiDuration = apiduration
          @Score = score
          @PageError = pageerror
          @StaticNum = staticnum
          @RecordNum = recordnum
          @PageDuration = pageduration
        end

        def deserialize(params)
          @StaticDuration = params['StaticDuration']
          @PagePv = params['PagePv']
          @ApiFail = params['ApiFail']
          @ApiNum = params['ApiNum']
          @StaticFail = params['StaticFail']
          @ProjectID = params['ProjectID']
          @PageUv = params['PageUv']
          @ApiDuration = params['ApiDuration']
          @Score = params['Score']
          @PageError = params['PageError']
          @StaticNum = params['StaticNum']
          @RecordNum = params['RecordNum']
          @PageDuration = params['PageDuration']
        end
      end

      # StopInstance请求参数结构体
      class StopInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 需要停止的实例id
        # @type InstanceId: String

        attr_accessor :InstanceId
        
        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # StopInstance返回参数结构体
      class StopInstanceResponse < TencentCloud::Common::AbstractModel
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

      # 标签
      class Tag < TencentCloud::Common::AbstractModel
        # @param Key: 标签key
        # @type Key: String
        # @param Value: 标签value
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

      # 白名单
      class Whitelist < TencentCloud::Common::AbstractModel
        # @param Remark: 备注
        # @type Remark: String
        # @param InstanceID: 实例ID
        # @type InstanceID: String
        # @param Ttl: 截止时间
        # @type Ttl: String
        # @param ID: 白名单自增ID
        # @type ID: String
        # @param WhitelistUin: 业务唯一标识
        # @type WhitelistUin: String
        # @param CreateUser: 创建者ID
        # @type CreateUser: String
        # @param Aid: aid标识
        # @type Aid: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String

        attr_accessor :Remark, :InstanceID, :Ttl, :ID, :WhitelistUin, :CreateUser, :Aid, :CreateTime
        
        def initialize(remark=nil, instanceid=nil, ttl=nil, id=nil, whitelistuin=nil, createuser=nil, aid=nil, createtime=nil)
          @Remark = remark
          @InstanceID = instanceid
          @Ttl = ttl
          @ID = id
          @WhitelistUin = whitelistuin
          @CreateUser = createuser
          @Aid = aid
          @CreateTime = createtime
        end

        def deserialize(params)
          @Remark = params['Remark']
          @InstanceID = params['InstanceID']
          @Ttl = params['Ttl']
          @ID = params['ID']
          @WhitelistUin = params['WhitelistUin']
          @CreateUser = params['CreateUser']
          @Aid = params['Aid']
          @CreateTime = params['CreateTime']
        end
      end

    end
  end
end

