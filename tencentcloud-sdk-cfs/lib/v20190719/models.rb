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
  module Cfs
    module V20190719
      # 版本控制-协议详情
      class AvailableProtoStatus < TencentCloud::Common::AbstractModel
        # @param SaleStatus: 售卖状态。可选值有 sale_out 售罄、saling可售、no_saling不可销售
        # @type SaleStatus: String
        # @param Protocol: 协议类型。可选值有 NFS、CIFS
        # @type Protocol: String

        attr_accessor :SaleStatus, :Protocol
        
        def initialize(salestatus=nil, protocol=nil)
          @SaleStatus = salestatus
          @Protocol = protocol
        end

        def deserialize(params)
          @SaleStatus = params['SaleStatus']
          @Protocol = params['Protocol']
        end
      end

      # 版本控制-区域数组
      class AvailableRegion < TencentCloud::Common::AbstractModel
        # @param Region: 区域名称，如“ap-beijing”
        # @type Region: String
        # @param RegionName: 区域名称，如“bj”
        # @type RegionName: String
        # @param RegionStatus: 区域可用情况，当区域内至少有一个可用区处于可售状态时，取值为AVAILABLE，否则为UNAVAILABLE
        # @type RegionStatus: String
        # @param Zones: 可用区数组
        # @type Zones: Array
        # @param RegionCnName: 区域中文名称，如“广州”
        # @type RegionCnName: String

        attr_accessor :Region, :RegionName, :RegionStatus, :Zones, :RegionCnName
        
        def initialize(region=nil, regionname=nil, regionstatus=nil, zones=nil, regioncnname=nil)
          @Region = region
          @RegionName = regionname
          @RegionStatus = regionstatus
          @Zones = zones
          @RegionCnName = regioncnname
        end

        def deserialize(params)
          @Region = params['Region']
          @RegionName = params['RegionName']
          @RegionStatus = params['RegionStatus']
          unless params['Zones'].nil?
            @Zones = []
            params['Zones'].each do |i|
              availablezone_tmp = AvailableZone.new
              availablezone_tmp.deserialize(i)
              @Zones << availablezone_tmp
            end
          end
          @RegionCnName = params['RegionCnName']
        end
      end

      # 版本控制-类型数组
      class AvailableType < TencentCloud::Common::AbstractModel
        # @param Protocols: 协议与售卖详情
        # @type Protocols: Array
        # @param Type: 存储类型。返回值中 SD 为标准型存储、HP 为性能型存储
        # @type Type: String
        # @param Prepayment: 是否支持预付费。返回值中 true 为支持、false 为不支持
        # @type Prepayment: Boolean

        attr_accessor :Protocols, :Type, :Prepayment
        
        def initialize(protocols=nil, type=nil, prepayment=nil)
          @Protocols = protocols
          @Type = type
          @Prepayment = prepayment
        end

        def deserialize(params)
          unless params['Protocols'].nil?
            @Protocols = []
            params['Protocols'].each do |i|
              availableprotostatus_tmp = AvailableProtoStatus.new
              availableprotostatus_tmp.deserialize(i)
              @Protocols << availableprotostatus_tmp
            end
          end
          @Type = params['Type']
          @Prepayment = params['Prepayment']
        end
      end

      # 版本控制-可用区数组
      class AvailableZone < TencentCloud::Common::AbstractModel
        # @param Zone: 可用区名称
        # @type Zone: String
        # @param ZoneId: 可用区ID
        # @type ZoneId: Integer
        # @param ZoneCnName: 可用区中文名称
        # @type ZoneCnName: String
        # @param Types: Type数组
        # @type Types: Array
        # @param ZoneName: 可用区中英文名称
        # @type ZoneName: String

        attr_accessor :Zone, :ZoneId, :ZoneCnName, :Types, :ZoneName
        
        def initialize(zone=nil, zoneid=nil, zonecnname=nil, types=nil, zonename=nil)
          @Zone = zone
          @ZoneId = zoneid
          @ZoneCnName = zonecnname
          @Types = types
          @ZoneName = zonename
        end

        def deserialize(params)
          @Zone = params['Zone']
          @ZoneId = params['ZoneId']
          @ZoneCnName = params['ZoneCnName']
          unless params['Types'].nil?
            @Types = []
            params['Types'].each do |i|
              availabletype_tmp = AvailableType.new
              availabletype_tmp.deserialize(i)
              @Types << availabletype_tmp
            end
          end
          @ZoneName = params['ZoneName']
        end
      end

      # CreateCfsFileSystem请求参数结构体
      class CreateCfsFileSystemRequest < TencentCloud::Common::AbstractModel
        # @param Zone: 可用区名称，例如ap-beijing-1，请参考 [概览](https://cloud.tencent.com/document/product/582/13225) 文档中的地域与可用区列表
        # @type Zone: String
        # @param NetInterface: 网络类型，可选值为 VPC，BASIC，CCN；其中 VPC 为私有网络，BASIC 为基础网络, CCN 为云联网，Turbo系列当前必须选择云联网。目前基础网络已逐渐淘汰，不推荐使用。
        # @type NetInterface: String
        # @param PGroupId: 权限组 ID，通用标准型和性能型必填，turbo系列请填写pgroupbasic
        # @type PGroupId: String
        # @param Protocol: 文件系统协议类型， 值为 NFS、CIFS、TURBO ; 若留空则默认为 NFS协议，turbo系列必须选择turbo，不支持NFS、CIFS
        # @type Protocol: String
        # @param StorageType: 文件系统存储类型，默认值为 SD ；其中 SD 为通用标准型标准型存储， HP为通用性能型存储， TB为turbo标准型， TP 为turbo性能型。
        # @type StorageType: String
        # @param VpcId: 私有网络（VPC） ID，若网络类型选择的是VPC，该字段为必填。
        # @type VpcId: String
        # @param SubnetId: 子网 ID，若网络类型选择的是VPC，该字段为必填。
        # @type SubnetId: String
        # @param MountIP: 指定IP地址，仅VPC网络支持；若不填写、将在该子网下随机分配 IP，Turbo系列当前不支持指定
        # @type MountIP: String
        # @param FsName: 用户自定义文件系统名称
        # @type FsName: String
        # @param ResourceTags: 文件系统标签
        # @type ResourceTags: Array
        # @param ClientToken: 用于保证请求幂等性的字符串。该字符串由客户生成，需保证不同请求之间唯一，最大值不超过64个ASCII字符。若不指定该参数，则无法保证请求的幂等性。用于保证请求幂等性的字符串失效时间为2小时。
        # @type ClientToken: String
        # @param CcnId: 云联网ID， 若网络类型选择的是CCN，该字段为必填
        # @type CcnId: String
        # @param CidrBlock: 云联网中CFS使用的网段， 若网络类型选择的是Ccn，该字段为必填，且不能和Ccn中已经绑定的网段冲突
        # @type CidrBlock: String
        # @param Capacity: 文件系统容量，turbo系列必填，单位为GiB。 turbo标准型单位GB，起售40TiB，即40960 GiB；扩容步长20TiB，即20480 GiB。turbo性能型起售20TiB，即20480 GiB；扩容步长10TiB，10240 GiB。
        # @type Capacity: Integer

        attr_accessor :Zone, :NetInterface, :PGroupId, :Protocol, :StorageType, :VpcId, :SubnetId, :MountIP, :FsName, :ResourceTags, :ClientToken, :CcnId, :CidrBlock, :Capacity
        
        def initialize(zone=nil, netinterface=nil, pgroupid=nil, protocol=nil, storagetype=nil, vpcid=nil, subnetid=nil, mountip=nil, fsname=nil, resourcetags=nil, clienttoken=nil, ccnid=nil, cidrblock=nil, capacity=nil)
          @Zone = zone
          @NetInterface = netinterface
          @PGroupId = pgroupid
          @Protocol = protocol
          @StorageType = storagetype
          @VpcId = vpcid
          @SubnetId = subnetid
          @MountIP = mountip
          @FsName = fsname
          @ResourceTags = resourcetags
          @ClientToken = clienttoken
          @CcnId = ccnid
          @CidrBlock = cidrblock
          @Capacity = capacity
        end

        def deserialize(params)
          @Zone = params['Zone']
          @NetInterface = params['NetInterface']
          @PGroupId = params['PGroupId']
          @Protocol = params['Protocol']
          @StorageType = params['StorageType']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @MountIP = params['MountIP']
          @FsName = params['FsName']
          unless params['ResourceTags'].nil?
            @ResourceTags = []
            params['ResourceTags'].each do |i|
              taginfo_tmp = TagInfo.new
              taginfo_tmp.deserialize(i)
              @ResourceTags << taginfo_tmp
            end
          end
          @ClientToken = params['ClientToken']
          @CcnId = params['CcnId']
          @CidrBlock = params['CidrBlock']
          @Capacity = params['Capacity']
        end
      end

      # CreateCfsFileSystem返回参数结构体
      class CreateCfsFileSystemResponse < TencentCloud::Common::AbstractModel
        # @param CreationTime: 文件系统创建时间
        # @type CreationTime: String
        # @param CreationToken: 用户自定义文件系统名称
        # @type CreationToken: String
        # @param FileSystemId: 文件系统 ID
        # @type FileSystemId: String
        # @param LifeCycleState: 文件系统状态，可能出现状态包括：“creating”  创建中, “create_failed” 创建失败, “available” 可用, “unserviced” 不可用, “upgrading” 升级中， “deleting” 删除中。
        # @type LifeCycleState: String
        # @param SizeByte: 文件系统已使用容量大小，单位为 Byte
        # @type SizeByte: Integer
        # @param ZoneId: 可用区 ID
        # @type ZoneId: Integer
        # @param FsName: 用户自定义文件系统名称
        # @type FsName: String
        # @param Encrypted: 文件系统是否加密
        # @type Encrypted: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CreationTime, :CreationToken, :FileSystemId, :LifeCycleState, :SizeByte, :ZoneId, :FsName, :Encrypted, :RequestId
        
        def initialize(creationtime=nil, creationtoken=nil, filesystemid=nil, lifecyclestate=nil, sizebyte=nil, zoneid=nil, fsname=nil, encrypted=nil, requestid=nil)
          @CreationTime = creationtime
          @CreationToken = creationtoken
          @FileSystemId = filesystemid
          @LifeCycleState = lifecyclestate
          @SizeByte = sizebyte
          @ZoneId = zoneid
          @FsName = fsname
          @Encrypted = encrypted
          @RequestId = requestid
        end

        def deserialize(params)
          @CreationTime = params['CreationTime']
          @CreationToken = params['CreationToken']
          @FileSystemId = params['FileSystemId']
          @LifeCycleState = params['LifeCycleState']
          @SizeByte = params['SizeByte']
          @ZoneId = params['ZoneId']
          @FsName = params['FsName']
          @Encrypted = params['Encrypted']
          @RequestId = params['RequestId']
        end
      end

      # CreateCfsPGroup请求参数结构体
      class CreateCfsPGroupRequest < TencentCloud::Common::AbstractModel
        # @param Name: 权限组名称，1-64个字符且只能为中文，字母，数字，下划线或横线
        # @type Name: String
        # @param DescInfo: 权限组描述信息，1-255个字符
        # @type DescInfo: String

        attr_accessor :Name, :DescInfo
        
        def initialize(name=nil, descinfo=nil)
          @Name = name
          @DescInfo = descinfo
        end

        def deserialize(params)
          @Name = params['Name']
          @DescInfo = params['DescInfo']
        end
      end

      # CreateCfsPGroup返回参数结构体
      class CreateCfsPGroupResponse < TencentCloud::Common::AbstractModel
        # @param PGroupId: 权限组 ID
        # @type PGroupId: String
        # @param Name: 权限组名字
        # @type Name: String
        # @param DescInfo: 权限组描述信息
        # @type DescInfo: String
        # @param BindCfsNum: 已经与该权限组绑定的文件系统个数
        # @type BindCfsNum: Integer
        # @param CDate: 权限组创建时间
        # @type CDate: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PGroupId, :Name, :DescInfo, :BindCfsNum, :CDate, :RequestId
        
        def initialize(pgroupid=nil, name=nil, descinfo=nil, bindcfsnum=nil, cdate=nil, requestid=nil)
          @PGroupId = pgroupid
          @Name = name
          @DescInfo = descinfo
          @BindCfsNum = bindcfsnum
          @CDate = cdate
          @RequestId = requestid
        end

        def deserialize(params)
          @PGroupId = params['PGroupId']
          @Name = params['Name']
          @DescInfo = params['DescInfo']
          @BindCfsNum = params['BindCfsNum']
          @CDate = params['CDate']
          @RequestId = params['RequestId']
        end
      end

      # CreateCfsRule请求参数结构体
      class CreateCfsRuleRequest < TencentCloud::Common::AbstractModel
        # @param PGroupId: 权限组 ID
        # @type PGroupId: String
        # @param AuthClientIp: 可以填写单个 IP 或者单个网段，例如 10.1.10.11 或者 10.10.1.0/24。默认来访地址为*表示允许所有。同时需要注意，此处需填写 CVM 的内网 IP。
        # @type AuthClientIp: String
        # @param Priority: 规则优先级，参数范围1-100。 其中 1 为最高，100为最低
        # @type Priority: Integer
        # @param RWPermission: 读写权限, 值为 RO、RW；其中 RO 为只读，RW 为读写，不填默认为只读
        # @type RWPermission: String
        # @param UserPermission: 用户权限，值为 all_squash、no_all_squash、root_squash、no_root_squash。其中all_squash为所有访问用户都会被映射为匿名用户或用户组；no_all_squash为访问用户会先与本机用户匹配，匹配失败后再映射为匿名用户或用户组；root_squash为将来访的root用户映射为匿名用户或用户组；no_root_squash为来访的root用户保持root帐号权限。不填默认为root_squash。
        # @type UserPermission: String

        attr_accessor :PGroupId, :AuthClientIp, :Priority, :RWPermission, :UserPermission
        
        def initialize(pgroupid=nil, authclientip=nil, priority=nil, rwpermission=nil, userpermission=nil)
          @PGroupId = pgroupid
          @AuthClientIp = authclientip
          @Priority = priority
          @RWPermission = rwpermission
          @UserPermission = userpermission
        end

        def deserialize(params)
          @PGroupId = params['PGroupId']
          @AuthClientIp = params['AuthClientIp']
          @Priority = params['Priority']
          @RWPermission = params['RWPermission']
          @UserPermission = params['UserPermission']
        end
      end

      # CreateCfsRule返回参数结构体
      class CreateCfsRuleResponse < TencentCloud::Common::AbstractModel
        # @param RuleId: 规则 ID
        # @type RuleId: String
        # @param PGroupId: 权限组 ID
        # @type PGroupId: String
        # @param AuthClientIp: 客户端 IP
        # @type AuthClientIp: String
        # @param RWPermission: 读写权限
        # @type RWPermission: String
        # @param UserPermission: 用户权限
        # @type UserPermission: String
        # @param Priority: 优先级
        # @type Priority: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RuleId, :PGroupId, :AuthClientIp, :RWPermission, :UserPermission, :Priority, :RequestId
        
        def initialize(ruleid=nil, pgroupid=nil, authclientip=nil, rwpermission=nil, userpermission=nil, priority=nil, requestid=nil)
          @RuleId = ruleid
          @PGroupId = pgroupid
          @AuthClientIp = authclientip
          @RWPermission = rwpermission
          @UserPermission = userpermission
          @Priority = priority
          @RequestId = requestid
        end

        def deserialize(params)
          @RuleId = params['RuleId']
          @PGroupId = params['PGroupId']
          @AuthClientIp = params['AuthClientIp']
          @RWPermission = params['RWPermission']
          @UserPermission = params['UserPermission']
          @Priority = params['Priority']
          @RequestId = params['RequestId']
        end
      end

      # DeleteCfsFileSystem请求参数结构体
      class DeleteCfsFileSystemRequest < TencentCloud::Common::AbstractModel
        # @param FileSystemId: 文件系统 ID。说明，进行删除文件系统操作前需要先调用 DeleteMountTarget 接口删除该文件系统的挂载点，否则会删除失败。
        # @type FileSystemId: String

        attr_accessor :FileSystemId
        
        def initialize(filesystemid=nil)
          @FileSystemId = filesystemid
        end

        def deserialize(params)
          @FileSystemId = params['FileSystemId']
        end
      end

      # DeleteCfsFileSystem返回参数结构体
      class DeleteCfsFileSystemResponse < TencentCloud::Common::AbstractModel
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

      # DeleteCfsPGroup请求参数结构体
      class DeleteCfsPGroupRequest < TencentCloud::Common::AbstractModel
        # @param PGroupId: 权限组 ID
        # @type PGroupId: String

        attr_accessor :PGroupId
        
        def initialize(pgroupid=nil)
          @PGroupId = pgroupid
        end

        def deserialize(params)
          @PGroupId = params['PGroupId']
        end
      end

      # DeleteCfsPGroup返回参数结构体
      class DeleteCfsPGroupResponse < TencentCloud::Common::AbstractModel
        # @param PGroupId: 权限组 ID
        # @type PGroupId: String
        # @param AppId: 用户 ID
        # @type AppId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PGroupId, :AppId, :RequestId
        
        def initialize(pgroupid=nil, appid=nil, requestid=nil)
          @PGroupId = pgroupid
          @AppId = appid
          @RequestId = requestid
        end

        def deserialize(params)
          @PGroupId = params['PGroupId']
          @AppId = params['AppId']
          @RequestId = params['RequestId']
        end
      end

      # DeleteCfsRule请求参数结构体
      class DeleteCfsRuleRequest < TencentCloud::Common::AbstractModel
        # @param PGroupId: 权限组 ID
        # @type PGroupId: String
        # @param RuleId: 规则 ID
        # @type RuleId: String

        attr_accessor :PGroupId, :RuleId
        
        def initialize(pgroupid=nil, ruleid=nil)
          @PGroupId = pgroupid
          @RuleId = ruleid
        end

        def deserialize(params)
          @PGroupId = params['PGroupId']
          @RuleId = params['RuleId']
        end
      end

      # DeleteCfsRule返回参数结构体
      class DeleteCfsRuleResponse < TencentCloud::Common::AbstractModel
        # @param RuleId: 规则 ID
        # @type RuleId: String
        # @param PGroupId: 权限组 ID
        # @type PGroupId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RuleId, :PGroupId, :RequestId
        
        def initialize(ruleid=nil, pgroupid=nil, requestid=nil)
          @RuleId = ruleid
          @PGroupId = pgroupid
          @RequestId = requestid
        end

        def deserialize(params)
          @RuleId = params['RuleId']
          @PGroupId = params['PGroupId']
          @RequestId = params['RequestId']
        end
      end

      # DeleteMountTarget请求参数结构体
      class DeleteMountTargetRequest < TencentCloud::Common::AbstractModel
        # @param FileSystemId: 文件系统 ID
        # @type FileSystemId: String
        # @param MountTargetId: 挂载点 ID
        # @type MountTargetId: String

        attr_accessor :FileSystemId, :MountTargetId
        
        def initialize(filesystemid=nil, mounttargetid=nil)
          @FileSystemId = filesystemid
          @MountTargetId = mounttargetid
        end

        def deserialize(params)
          @FileSystemId = params['FileSystemId']
          @MountTargetId = params['MountTargetId']
        end
      end

      # DeleteMountTarget返回参数结构体
      class DeleteMountTargetResponse < TencentCloud::Common::AbstractModel
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

      # DescribeAvailableZoneInfo请求参数结构体
      class DescribeAvailableZoneInfoRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeAvailableZoneInfo返回参数结构体
      class DescribeAvailableZoneInfoResponse < TencentCloud::Common::AbstractModel
        # @param RegionZones: 各可用区的资源售卖情况以及支持的存储类型、存储协议等信息
        # @type RegionZones: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RegionZones, :RequestId
        
        def initialize(regionzones=nil, requestid=nil)
          @RegionZones = regionzones
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['RegionZones'].nil?
            @RegionZones = []
            params['RegionZones'].each do |i|
              availableregion_tmp = AvailableRegion.new
              availableregion_tmp.deserialize(i)
              @RegionZones << availableregion_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCfsFileSystemClients请求参数结构体
      class DescribeCfsFileSystemClientsRequest < TencentCloud::Common::AbstractModel
        # @param FileSystemId: 文件系统 ID。
        # @type FileSystemId: String

        attr_accessor :FileSystemId
        
        def initialize(filesystemid=nil)
          @FileSystemId = filesystemid
        end

        def deserialize(params)
          @FileSystemId = params['FileSystemId']
        end
      end

      # DescribeCfsFileSystemClients返回参数结构体
      class DescribeCfsFileSystemClientsResponse < TencentCloud::Common::AbstractModel
        # @param ClientList: 客户端列表
        # @type ClientList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ClientList, :RequestId
        
        def initialize(clientlist=nil, requestid=nil)
          @ClientList = clientlist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ClientList'].nil?
            @ClientList = []
            params['ClientList'].each do |i|
              filesystemclient_tmp = FileSystemClient.new
              filesystemclient_tmp.deserialize(i)
              @ClientList << filesystemclient_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCfsFileSystems请求参数结构体
      class DescribeCfsFileSystemsRequest < TencentCloud::Common::AbstractModel
        # @param FileSystemId: 文件系统 ID
        # @type FileSystemId: String
        # @param VpcId: 私有网络（VPC） ID
        # @type VpcId: String
        # @param SubnetId: 子网 ID
        # @type SubnetId: String

        attr_accessor :FileSystemId, :VpcId, :SubnetId
        
        def initialize(filesystemid=nil, vpcid=nil, subnetid=nil)
          @FileSystemId = filesystemid
          @VpcId = vpcid
          @SubnetId = subnetid
        end

        def deserialize(params)
          @FileSystemId = params['FileSystemId']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
        end
      end

      # DescribeCfsFileSystems返回参数结构体
      class DescribeCfsFileSystemsResponse < TencentCloud::Common::AbstractModel
        # @param FileSystems: 文件系统信息
        # @type FileSystems: Array
        # @param TotalCount: 文件系统总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FileSystems, :TotalCount, :RequestId
        
        def initialize(filesystems=nil, totalcount=nil, requestid=nil)
          @FileSystems = filesystems
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['FileSystems'].nil?
            @FileSystems = []
            params['FileSystems'].each do |i|
              filesysteminfo_tmp = FileSystemInfo.new
              filesysteminfo_tmp.deserialize(i)
              @FileSystems << filesysteminfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeCfsPGroups请求参数结构体
      class DescribeCfsPGroupsRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeCfsPGroups返回参数结构体
      class DescribeCfsPGroupsResponse < TencentCloud::Common::AbstractModel
        # @param PGroupList: 权限组信息列表
        # @type PGroupList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PGroupList, :RequestId
        
        def initialize(pgrouplist=nil, requestid=nil)
          @PGroupList = pgrouplist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['PGroupList'].nil?
            @PGroupList = []
            params['PGroupList'].each do |i|
              pgroupinfo_tmp = PGroupInfo.new
              pgroupinfo_tmp.deserialize(i)
              @PGroupList << pgroupinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCfsRules请求参数结构体
      class DescribeCfsRulesRequest < TencentCloud::Common::AbstractModel
        # @param PGroupId: 权限组 ID
        # @type PGroupId: String

        attr_accessor :PGroupId
        
        def initialize(pgroupid=nil)
          @PGroupId = pgroupid
        end

        def deserialize(params)
          @PGroupId = params['PGroupId']
        end
      end

      # DescribeCfsRules返回参数结构体
      class DescribeCfsRulesResponse < TencentCloud::Common::AbstractModel
        # @param RuleList: 权限组规则列表
        # @type RuleList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RuleList, :RequestId
        
        def initialize(rulelist=nil, requestid=nil)
          @RuleList = rulelist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['RuleList'].nil?
            @RuleList = []
            params['RuleList'].each do |i|
              pgroupruleinfo_tmp = PGroupRuleInfo.new
              pgroupruleinfo_tmp.deserialize(i)
              @RuleList << pgroupruleinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCfsServiceStatus请求参数结构体
      class DescribeCfsServiceStatusRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeCfsServiceStatus返回参数结构体
      class DescribeCfsServiceStatusResponse < TencentCloud::Common::AbstractModel
        # @param CfsServiceStatus: 该用户当前 CFS 服务的状态，none 为未开通，creating 为开通中，created 为已开通
        # @type CfsServiceStatus: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CfsServiceStatus, :RequestId
        
        def initialize(cfsservicestatus=nil, requestid=nil)
          @CfsServiceStatus = cfsservicestatus
          @RequestId = requestid
        end

        def deserialize(params)
          @CfsServiceStatus = params['CfsServiceStatus']
          @RequestId = params['RequestId']
        end
      end

      # DescribeMountTargets请求参数结构体
      class DescribeMountTargetsRequest < TencentCloud::Common::AbstractModel
        # @param FileSystemId: 文件系统 ID
        # @type FileSystemId: String

        attr_accessor :FileSystemId
        
        def initialize(filesystemid=nil)
          @FileSystemId = filesystemid
        end

        def deserialize(params)
          @FileSystemId = params['FileSystemId']
        end
      end

      # DescribeMountTargets返回参数结构体
      class DescribeMountTargetsResponse < TencentCloud::Common::AbstractModel
        # @param MountTargets: 挂载点详情
        # @type MountTargets: Array
        # @param NumberOfMountTargets: 挂载点数量
        # @type NumberOfMountTargets: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MountTargets, :NumberOfMountTargets, :RequestId
        
        def initialize(mounttargets=nil, numberofmounttargets=nil, requestid=nil)
          @MountTargets = mounttargets
          @NumberOfMountTargets = numberofmounttargets
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['MountTargets'].nil?
            @MountTargets = []
            params['MountTargets'].each do |i|
              mountinfo_tmp = MountInfo.new
              mountinfo_tmp.deserialize(i)
              @MountTargets << mountinfo_tmp
            end
          end
          @NumberOfMountTargets = params['NumberOfMountTargets']
          @RequestId = params['RequestId']
        end
      end

      # 文件系统客户端信息
      class FileSystemClient < TencentCloud::Common::AbstractModel
        # @param CfsVip: 文件系统IP地址
        # @type CfsVip: String
        # @param ClientIp: 客户端IP地址
        # @type ClientIp: String
        # @param VpcId: 文件系统所属VPCID
        # @type VpcId: String
        # @param Zone: 可用区名称，例如ap-beijing-1，请参考 概览文档中的地域与可用区列表
        # @type Zone: String
        # @param ZoneName: 可用区中文名称
        # @type ZoneName: String
        # @param MountDirectory: 该文件系统被挂载到客户端上的路径信息
        # @type MountDirectory: String

        attr_accessor :CfsVip, :ClientIp, :VpcId, :Zone, :ZoneName, :MountDirectory
        
        def initialize(cfsvip=nil, clientip=nil, vpcid=nil, zone=nil, zonename=nil, mountdirectory=nil)
          @CfsVip = cfsvip
          @ClientIp = clientip
          @VpcId = vpcid
          @Zone = zone
          @ZoneName = zonename
          @MountDirectory = mountdirectory
        end

        def deserialize(params)
          @CfsVip = params['CfsVip']
          @ClientIp = params['ClientIp']
          @VpcId = params['VpcId']
          @Zone = params['Zone']
          @ZoneName = params['ZoneName']
          @MountDirectory = params['MountDirectory']
        end
      end

      # 文件系统基本信息
      class FileSystemInfo < TencentCloud::Common::AbstractModel
        # @param CreationTime: 创建时间
        # @type CreationTime: String
        # @param CreationToken: 用户自定义名称
        # @type CreationToken: String
        # @param FileSystemId: 文件系统 ID
        # @type FileSystemId: String
        # @param LifeCycleState: 文件系统状态
        # @type LifeCycleState: String
        # @param SizeByte: 文件系统已使用容量
        # @type SizeByte: Integer
        # @param SizeLimit: 文件系统最大空间限制
        # @type SizeLimit: Integer
        # @param ZoneId: 区域 ID
        # @type ZoneId: Integer
        # @param Zone: 区域名称
        # @type Zone: String
        # @param Protocol: 文件系统协议类型
        # @type Protocol: String
        # @param StorageType: 文件系统存储类型
        # @type StorageType: String
        # @param StorageResourcePkg: 文件系统绑定的预付费存储包
        # @type StorageResourcePkg: String
        # @param BandwidthResourcePkg: 文件系统绑定的预付费带宽包（暂未支持）
        # @type BandwidthResourcePkg: String
        # @param PGroup: 文件系统绑定权限组信息
        # @type PGroup: :class:`Tencentcloud::Cfs.v20190719.models.PGroup`
        # @param FsName: 用户自定义名称
        # @type FsName: String
        # @param Encrypted: 文件系统是否加密
        # @type Encrypted: Boolean
        # @param KmsKeyId: 加密所使用的密钥，可以为密钥的 ID 或者 ARN
        # @type KmsKeyId: String
        # @param AppId: 应用ID
        # @type AppId: Integer
        # @param BandwidthLimit: 文件系统吞吐上限，吞吐上限是根据文件系统当前已使用存储量、绑定的存储资源包以及吞吐资源包一同确定
        # @type BandwidthLimit: Float
        # @param Capacity: 文件系统总容量
        # @type Capacity: Integer
        # @param Tags: 文件系统标签列表
        # @type Tags: Array

        attr_accessor :CreationTime, :CreationToken, :FileSystemId, :LifeCycleState, :SizeByte, :SizeLimit, :ZoneId, :Zone, :Protocol, :StorageType, :StorageResourcePkg, :BandwidthResourcePkg, :PGroup, :FsName, :Encrypted, :KmsKeyId, :AppId, :BandwidthLimit, :Capacity, :Tags
        
        def initialize(creationtime=nil, creationtoken=nil, filesystemid=nil, lifecyclestate=nil, sizebyte=nil, sizelimit=nil, zoneid=nil, zone=nil, protocol=nil, storagetype=nil, storageresourcepkg=nil, bandwidthresourcepkg=nil, pgroup=nil, fsname=nil, encrypted=nil, kmskeyid=nil, appid=nil, bandwidthlimit=nil, capacity=nil, tags=nil)
          @CreationTime = creationtime
          @CreationToken = creationtoken
          @FileSystemId = filesystemid
          @LifeCycleState = lifecyclestate
          @SizeByte = sizebyte
          @SizeLimit = sizelimit
          @ZoneId = zoneid
          @Zone = zone
          @Protocol = protocol
          @StorageType = storagetype
          @StorageResourcePkg = storageresourcepkg
          @BandwidthResourcePkg = bandwidthresourcepkg
          @PGroup = pgroup
          @FsName = fsname
          @Encrypted = encrypted
          @KmsKeyId = kmskeyid
          @AppId = appid
          @BandwidthLimit = bandwidthlimit
          @Capacity = capacity
          @Tags = tags
        end

        def deserialize(params)
          @CreationTime = params['CreationTime']
          @CreationToken = params['CreationToken']
          @FileSystemId = params['FileSystemId']
          @LifeCycleState = params['LifeCycleState']
          @SizeByte = params['SizeByte']
          @SizeLimit = params['SizeLimit']
          @ZoneId = params['ZoneId']
          @Zone = params['Zone']
          @Protocol = params['Protocol']
          @StorageType = params['StorageType']
          @StorageResourcePkg = params['StorageResourcePkg']
          @BandwidthResourcePkg = params['BandwidthResourcePkg']
          unless params['PGroup'].nil?
            @PGroup = PGroup.new
            @PGroup.deserialize(params['PGroup'])
          end
          @FsName = params['FsName']
          @Encrypted = params['Encrypted']
          @KmsKeyId = params['KmsKeyId']
          @AppId = params['AppId']
          @BandwidthLimit = params['BandwidthLimit']
          @Capacity = params['Capacity']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              taginfo_tmp = TagInfo.new
              taginfo_tmp.deserialize(i)
              @Tags << taginfo_tmp
            end
          end
        end
      end

      # 挂载点信息
      class MountInfo < TencentCloud::Common::AbstractModel
        # @param FileSystemId: 文件系统 ID
        # @type FileSystemId: String
        # @param MountTargetId: 挂载点 ID
        # @type MountTargetId: String
        # @param IpAddress: 挂载点 IP
        # @type IpAddress: String
        # @param FSID: 挂载根目录
        # @type FSID: String
        # @param LifeCycleState: 挂载点状态
        # @type LifeCycleState: String
        # @param NetworkInterface: 网络类型
        # @type NetworkInterface: String
        # @param VpcId: 私有网络 ID
        # @type VpcId: String
        # @param VpcName: 私有网络名称
        # @type VpcName: String
        # @param SubnetId: 子网 Id
        # @type SubnetId: String
        # @param SubnetName: 子网名称
        # @type SubnetName: String
        # @param CcnID: CFS Turbo使用的云联网ID
        # @type CcnID: String
        # @param CidrBlock: 云联网中CFS Turbo使用的网段
        # @type CidrBlock: String

        attr_accessor :FileSystemId, :MountTargetId, :IpAddress, :FSID, :LifeCycleState, :NetworkInterface, :VpcId, :VpcName, :SubnetId, :SubnetName, :CcnID, :CidrBlock
        
        def initialize(filesystemid=nil, mounttargetid=nil, ipaddress=nil, fsid=nil, lifecyclestate=nil, networkinterface=nil, vpcid=nil, vpcname=nil, subnetid=nil, subnetname=nil, ccnid=nil, cidrblock=nil)
          @FileSystemId = filesystemid
          @MountTargetId = mounttargetid
          @IpAddress = ipaddress
          @FSID = fsid
          @LifeCycleState = lifecyclestate
          @NetworkInterface = networkinterface
          @VpcId = vpcid
          @VpcName = vpcname
          @SubnetId = subnetid
          @SubnetName = subnetname
          @CcnID = ccnid
          @CidrBlock = cidrblock
        end

        def deserialize(params)
          @FileSystemId = params['FileSystemId']
          @MountTargetId = params['MountTargetId']
          @IpAddress = params['IpAddress']
          @FSID = params['FSID']
          @LifeCycleState = params['LifeCycleState']
          @NetworkInterface = params['NetworkInterface']
          @VpcId = params['VpcId']
          @VpcName = params['VpcName']
          @SubnetId = params['SubnetId']
          @SubnetName = params['SubnetName']
          @CcnID = params['CcnID']
          @CidrBlock = params['CidrBlock']
        end
      end

      # 文件系统绑定权限组信息
      class PGroup < TencentCloud::Common::AbstractModel
        # @param PGroupId: 权限组ID
        # @type PGroupId: String
        # @param Name: 权限组名称
        # @type Name: String

        attr_accessor :PGroupId, :Name
        
        def initialize(pgroupid=nil, name=nil)
          @PGroupId = pgroupid
          @Name = name
        end

        def deserialize(params)
          @PGroupId = params['PGroupId']
          @Name = params['Name']
        end
      end

      # 权限组数组
      class PGroupInfo < TencentCloud::Common::AbstractModel
        # @param PGroupId: 权限组ID
        # @type PGroupId: String
        # @param Name: 权限组名称
        # @type Name: String
        # @param DescInfo: 描述信息
        # @type DescInfo: String
        # @param CDate: 创建时间
        # @type CDate: String
        # @param BindCfsNum: 关联文件系统个数
        # @type BindCfsNum: Integer

        attr_accessor :PGroupId, :Name, :DescInfo, :CDate, :BindCfsNum
        
        def initialize(pgroupid=nil, name=nil, descinfo=nil, cdate=nil, bindcfsnum=nil)
          @PGroupId = pgroupid
          @Name = name
          @DescInfo = descinfo
          @CDate = cdate
          @BindCfsNum = bindcfsnum
        end

        def deserialize(params)
          @PGroupId = params['PGroupId']
          @Name = params['Name']
          @DescInfo = params['DescInfo']
          @CDate = params['CDate']
          @BindCfsNum = params['BindCfsNum']
        end
      end

      # 权限组规则列表
      class PGroupRuleInfo < TencentCloud::Common::AbstractModel
        # @param RuleId: 规则ID
        # @type RuleId: String
        # @param AuthClientIp: 允许访问的客户端IP
        # @type AuthClientIp: String
        # @param RWPermission: 读写权限, ro为只读，rw为读写
        # @type RWPermission: String
        # @param UserPermission: 用户权限。其中all_squash为所有访问用户都会被映射为匿名用户或用户组；no_all_squash为访问用户会先与本机用户匹配，匹配失败后再映射为匿名用户或用户组；root_squash为将来访的root用户映射为匿名用户或用户组；no_root_squash为来访的root用户保持root帐号权限。
        # @type UserPermission: String
        # @param Priority: 规则优先级，1-100。 其中 1 为最高，100为最低
        # @type Priority: Integer

        attr_accessor :RuleId, :AuthClientIp, :RWPermission, :UserPermission, :Priority
        
        def initialize(ruleid=nil, authclientip=nil, rwpermission=nil, userpermission=nil, priority=nil)
          @RuleId = ruleid
          @AuthClientIp = authclientip
          @RWPermission = rwpermission
          @UserPermission = userpermission
          @Priority = priority
        end

        def deserialize(params)
          @RuleId = params['RuleId']
          @AuthClientIp = params['AuthClientIp']
          @RWPermission = params['RWPermission']
          @UserPermission = params['UserPermission']
          @Priority = params['Priority']
        end
      end

      # SignUpCfsService请求参数结构体
      class SignUpCfsServiceRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # SignUpCfsService返回参数结构体
      class SignUpCfsServiceResponse < TencentCloud::Common::AbstractModel
        # @param CfsServiceStatus: 该用户当前 CFS 服务的状态，none 是未开通，creating 是开通中，created 是已开通
        # @type CfsServiceStatus: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CfsServiceStatus, :RequestId
        
        def initialize(cfsservicestatus=nil, requestid=nil)
          @CfsServiceStatus = cfsservicestatus
          @RequestId = requestid
        end

        def deserialize(params)
          @CfsServiceStatus = params['CfsServiceStatus']
          @RequestId = params['RequestId']
        end
      end

      # Tag信息单元
      class TagInfo < TencentCloud::Common::AbstractModel
        # @param TagKey: 标签键
        # @type TagKey: String
        # @param TagValue: 标签值
        # @type TagValue: String

        attr_accessor :TagKey, :TagValue
        
        def initialize(tagkey=nil, tagvalue=nil)
          @TagKey = tagkey
          @TagValue = tagvalue
        end

        def deserialize(params)
          @TagKey = params['TagKey']
          @TagValue = params['TagValue']
        end
      end

      # UpdateCfsFileSystemName请求参数结构体
      class UpdateCfsFileSystemNameRequest < TencentCloud::Common::AbstractModel
        # @param FileSystemId: 文件系统 ID
        # @type FileSystemId: String
        # @param FsName: 用户自定义文件系统名称
        # @type FsName: String

        attr_accessor :FileSystemId, :FsName
        
        def initialize(filesystemid=nil, fsname=nil)
          @FileSystemId = filesystemid
          @FsName = fsname
        end

        def deserialize(params)
          @FileSystemId = params['FileSystemId']
          @FsName = params['FsName']
        end
      end

      # UpdateCfsFileSystemName返回参数结构体
      class UpdateCfsFileSystemNameResponse < TencentCloud::Common::AbstractModel
        # @param CreationToken: 用户自定义文件系统名称
        # @type CreationToken: String
        # @param FileSystemId: 文件系统ID
        # @type FileSystemId: String
        # @param FsName: 用户自定义文件系统名称
        # @type FsName: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CreationToken, :FileSystemId, :FsName, :RequestId
        
        def initialize(creationtoken=nil, filesystemid=nil, fsname=nil, requestid=nil)
          @CreationToken = creationtoken
          @FileSystemId = filesystemid
          @FsName = fsname
          @RequestId = requestid
        end

        def deserialize(params)
          @CreationToken = params['CreationToken']
          @FileSystemId = params['FileSystemId']
          @FsName = params['FsName']
          @RequestId = params['RequestId']
        end
      end

      # UpdateCfsFileSystemPGroup请求参数结构体
      class UpdateCfsFileSystemPGroupRequest < TencentCloud::Common::AbstractModel
        # @param PGroupId: 权限组 ID
        # @type PGroupId: String
        # @param FileSystemId: 文件系统 ID
        # @type FileSystemId: String

        attr_accessor :PGroupId, :FileSystemId
        
        def initialize(pgroupid=nil, filesystemid=nil)
          @PGroupId = pgroupid
          @FileSystemId = filesystemid
        end

        def deserialize(params)
          @PGroupId = params['PGroupId']
          @FileSystemId = params['FileSystemId']
        end
      end

      # UpdateCfsFileSystemPGroup返回参数结构体
      class UpdateCfsFileSystemPGroupResponse < TencentCloud::Common::AbstractModel
        # @param PGroupId: 权限组 ID
        # @type PGroupId: String
        # @param FileSystemId: 文件系统 ID
        # @type FileSystemId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PGroupId, :FileSystemId, :RequestId
        
        def initialize(pgroupid=nil, filesystemid=nil, requestid=nil)
          @PGroupId = pgroupid
          @FileSystemId = filesystemid
          @RequestId = requestid
        end

        def deserialize(params)
          @PGroupId = params['PGroupId']
          @FileSystemId = params['FileSystemId']
          @RequestId = params['RequestId']
        end
      end

      # UpdateCfsFileSystemSizeLimit请求参数结构体
      class UpdateCfsFileSystemSizeLimitRequest < TencentCloud::Common::AbstractModel
        # @param FsLimit: 文件系统容量限制大小，输入范围0-1073741824, 单位为GB；其中输入值为0时，表示不限制文件系统容量。
        # @type FsLimit: Integer
        # @param FileSystemId: 文件系统ID，目前仅支持标准型文件系统。
        # @type FileSystemId: String

        attr_accessor :FsLimit, :FileSystemId
        
        def initialize(fslimit=nil, filesystemid=nil)
          @FsLimit = fslimit
          @FileSystemId = filesystemid
        end

        def deserialize(params)
          @FsLimit = params['FsLimit']
          @FileSystemId = params['FileSystemId']
        end
      end

      # UpdateCfsFileSystemSizeLimit返回参数结构体
      class UpdateCfsFileSystemSizeLimitResponse < TencentCloud::Common::AbstractModel
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

      # UpdateCfsPGroup请求参数结构体
      class UpdateCfsPGroupRequest < TencentCloud::Common::AbstractModel
        # @param PGroupId: 权限组 ID
        # @type PGroupId: String
        # @param Name: 权限组名称，1-64个字符且只能为中文，字母，数字，下划线或横线
        # @type Name: String
        # @param DescInfo: 权限组描述信息，1-255个字符
        # @type DescInfo: String

        attr_accessor :PGroupId, :Name, :DescInfo
        
        def initialize(pgroupid=nil, name=nil, descinfo=nil)
          @PGroupId = pgroupid
          @Name = name
          @DescInfo = descinfo
        end

        def deserialize(params)
          @PGroupId = params['PGroupId']
          @Name = params['Name']
          @DescInfo = params['DescInfo']
        end
      end

      # UpdateCfsPGroup返回参数结构体
      class UpdateCfsPGroupResponse < TencentCloud::Common::AbstractModel
        # @param PGroupId: 权限组ID
        # @type PGroupId: String
        # @param Name: 权限组名称
        # @type Name: String
        # @param DescInfo: 描述信息
        # @type DescInfo: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PGroupId, :Name, :DescInfo, :RequestId
        
        def initialize(pgroupid=nil, name=nil, descinfo=nil, requestid=nil)
          @PGroupId = pgroupid
          @Name = name
          @DescInfo = descinfo
          @RequestId = requestid
        end

        def deserialize(params)
          @PGroupId = params['PGroupId']
          @Name = params['Name']
          @DescInfo = params['DescInfo']
          @RequestId = params['RequestId']
        end
      end

      # UpdateCfsRule请求参数结构体
      class UpdateCfsRuleRequest < TencentCloud::Common::AbstractModel
        # @param PGroupId: 权限组 ID
        # @type PGroupId: String
        # @param RuleId: 规则 ID
        # @type RuleId: String
        # @param AuthClientIp: 可以填写单个 IP 或者单个网段，例如 10.1.10.11 或者 10.10.1.0/24。默认来访地址为*表示允许所有。同时需要注意，此处需填写 CVM 的内网 IP。
        # @type AuthClientIp: String
        # @param RWPermission: 读写权限, 值为RO、RW；其中 RO 为只读，RW 为读写，不填默认为只读
        # @type RWPermission: String
        # @param UserPermission: 用户权限，值为all_squash、no_all_squash、root_squash、no_root_squash。其中all_squash为所有访问用户都会被映射为匿名用户或用户组；no_all_squash为访问用户会先与本机用户匹配，匹配失败后再映射为匿名用户或用户组；root_squash为将来访的root用户映射为匿名用户或用户组；no_root_squash为来访的root用户保持root帐号权限。不填默认为root_squash。
        # @type UserPermission: String
        # @param Priority: 规则优先级，参数范围1-100。 其中 1 为最高，100为最低
        # @type Priority: Integer

        attr_accessor :PGroupId, :RuleId, :AuthClientIp, :RWPermission, :UserPermission, :Priority
        
        def initialize(pgroupid=nil, ruleid=nil, authclientip=nil, rwpermission=nil, userpermission=nil, priority=nil)
          @PGroupId = pgroupid
          @RuleId = ruleid
          @AuthClientIp = authclientip
          @RWPermission = rwpermission
          @UserPermission = userpermission
          @Priority = priority
        end

        def deserialize(params)
          @PGroupId = params['PGroupId']
          @RuleId = params['RuleId']
          @AuthClientIp = params['AuthClientIp']
          @RWPermission = params['RWPermission']
          @UserPermission = params['UserPermission']
          @Priority = params['Priority']
        end
      end

      # UpdateCfsRule返回参数结构体
      class UpdateCfsRuleResponse < TencentCloud::Common::AbstractModel
        # @param PGroupId: 权限组 ID
        # @type PGroupId: String
        # @param RuleId: 规则 ID
        # @type RuleId: String
        # @param AuthClientIp: 允许访问的客户端 IP 或者 IP 段
        # @type AuthClientIp: String
        # @param RWPermission: 读写权限
        # @type RWPermission: String
        # @param UserPermission: 用户权限
        # @type UserPermission: String
        # @param Priority: 优先级
        # @type Priority: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PGroupId, :RuleId, :AuthClientIp, :RWPermission, :UserPermission, :Priority, :RequestId
        
        def initialize(pgroupid=nil, ruleid=nil, authclientip=nil, rwpermission=nil, userpermission=nil, priority=nil, requestid=nil)
          @PGroupId = pgroupid
          @RuleId = ruleid
          @AuthClientIp = authclientip
          @RWPermission = rwpermission
          @UserPermission = userpermission
          @Priority = priority
          @RequestId = requestid
        end

        def deserialize(params)
          @PGroupId = params['PGroupId']
          @RuleId = params['RuleId']
          @AuthClientIp = params['AuthClientIp']
          @RWPermission = params['RWPermission']
          @UserPermission = params['UserPermission']
          @Priority = params['Priority']
          @RequestId = params['RequestId']
        end
      end

    end
  end
end

