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

require 'json'

module TencentCloud
  module Cynosdb
    module V20190107
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2019-01-07'
            api_endpoint = 'cynosdb.tencentcloudapi.com'
            sdk_version = 'CYNOSDB_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 本接口(ActivateInstance)用于恢复已隔离的实例访问。

        # @param request: Request instance for ActivateInstance.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::ActivateInstanceRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::ActivateInstanceResponse`
        def ActivateInstance(request)
          body = send_request('ActivateInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ActivateInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（AddInstances）用于集群添加实例

        # @param request: Request instance for AddInstances.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::AddInstancesRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::AddInstancesResponse`
        def AddInstances(request)
          body = send_request('AddInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 安全组批量绑定云资源

        # @param request: Request instance for AssociateSecurityGroups.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::AssociateSecurityGroupsRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::AssociateSecurityGroupsResponse`
        def AssociateSecurityGroups(request)
          body = send_request('AssociateSecurityGroups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AssociateSecurityGroupsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建账号

        # @param request: Request instance for CreateAccounts.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::CreateAccountsRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::CreateAccountsResponse`
        def CreateAccounts(request)
          body = send_request('CreateAccounts', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAccountsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建集群

        # @param request: Request instance for CreateClusters.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::CreateClustersRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::CreateClustersResponse`
        def CreateClusters(request)
          body = send_request('CreateClusters', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateClustersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 账号所有权限

        # @param request: Request instance for DescribeAccountAllGrantPrivileges.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::DescribeAccountAllGrantPrivilegesRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::DescribeAccountAllGrantPrivilegesResponse`
        def DescribeAccountAllGrantPrivileges(request)
          body = send_request('DescribeAccountAllGrantPrivileges', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAccountAllGrantPrivilegesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(DescribeAccounts)用于查询数据库管理账号。

        # @param request: Request instance for DescribeAccounts.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::DescribeAccountsRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::DescribeAccountsResponse`
        def DescribeAccounts(request)
          body = send_request('DescribeAccounts', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAccountsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取指定集群的备份配置信息，包括全量备份时间段，备份文件保留时间

        # @param request: Request instance for DescribeBackupConfig.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::DescribeBackupConfigRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::DescribeBackupConfigResponse`
        def DescribeBackupConfig(request)
          body = send_request('DescribeBackupConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBackupConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询备份文件列表

        # @param request: Request instance for DescribeBackupList.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::DescribeBackupListRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::DescribeBackupListResponse`
        def DescribeBackupList(request)
          body = send_request('DescribeBackupList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBackupListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 显示集群详情

        # @param request: Request instance for DescribeClusterDetail.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::DescribeClusterDetailRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::DescribeClusterDetailResponse`
        def DescribeClusterDetail(request)
          body = send_request('DescribeClusterDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeClusterDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeClusterInstanceGrps）用于查询实例组

        # @param request: Request instance for DescribeClusterInstanceGrps.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::DescribeClusterInstanceGrpsRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::DescribeClusterInstanceGrpsResponse`
        def DescribeClusterInstanceGrps(request)
          body = send_request('DescribeClusterInstanceGrps', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeClusterInstanceGrpsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeClusterParamLogs）查询参数修改日志

        # @param request: Request instance for DescribeClusterParamLogs.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::DescribeClusterParamLogsRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::DescribeClusterParamLogsResponse`
        def DescribeClusterParamLogs(request)
          body = send_request('DescribeClusterParamLogs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeClusterParamLogsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询集群列表

        # @param request: Request instance for DescribeClusters.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::DescribeClustersRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::DescribeClustersResponse`
        def DescribeClusters(request)
          body = send_request('DescribeClusters', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeClustersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询实例安全组信息

        # @param request: Request instance for DescribeDBSecurityGroups.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::DescribeDBSecurityGroupsRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::DescribeDBSecurityGroupsResponse`
        def DescribeDBSecurityGroups(request)
          body = send_request('DescribeDBSecurityGroups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDBSecurityGroupsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(DescribeInstanceDetail)用于查询实例详情。

        # @param request: Request instance for DescribeInstanceDetail.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::DescribeInstanceDetailRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::DescribeInstanceDetailResponse`
        def DescribeInstanceDetail(request)
          body = send_request('DescribeInstanceDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstanceDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeInstanceSpecs）用于查询实例规格

        # @param request: Request instance for DescribeInstanceSpecs.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::DescribeInstanceSpecsRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::DescribeInstanceSpecsResponse`
        def DescribeInstanceSpecs(request)
          body = send_request('DescribeInstanceSpecs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstanceSpecsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(DescribeInstances)用于查询实例列表。

        # @param request: Request instance for DescribeInstances.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::DescribeInstancesRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::DescribeInstancesResponse`
        def DescribeInstances(request)
          body = send_request('DescribeInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询实例维护时间窗

        # @param request: Request instance for DescribeMaintainPeriod.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::DescribeMaintainPeriodRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::DescribeMaintainPeriodResponse`
        def DescribeMaintainPeriod(request)
          body = send_request('DescribeMaintainPeriod', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMaintainPeriodResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询项目安全组信息

        # @param request: Request instance for DescribeProjectSecurityGroups.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::DescribeProjectSecurityGroupsRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::DescribeProjectSecurityGroupsResponse`
        def DescribeProjectSecurityGroups(request)
          body = send_request('DescribeProjectSecurityGroups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeProjectSecurityGroupsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据计费订单id查询资源列表

        # @param request: Request instance for DescribeResourcesByDealName.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::DescribeResourcesByDealNameRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::DescribeResourcesByDealNameResponse`
        def DescribeResourcesByDealName(request)
          body = send_request('DescribeResourcesByDealName', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeResourcesByDealNameResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询指定集群有效回滚时间范围

        # @param request: Request instance for DescribeRollbackTimeRange.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::DescribeRollbackTimeRangeRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::DescribeRollbackTimeRangeResponse`
        def DescribeRollbackTimeRange(request)
          body = send_request('DescribeRollbackTimeRange', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRollbackTimeRangeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 指定时间和集群查询是否可回滚

        # @param request: Request instance for DescribeRollbackTimeValidity.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::DescribeRollbackTimeValidityRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::DescribeRollbackTimeValidityResponse`
        def DescribeRollbackTimeValidity(request)
          body = send_request('DescribeRollbackTimeValidity', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRollbackTimeValidityResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 安全组批量解绑云资源

        # @param request: Request instance for DisassociateSecurityGroups.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::DisassociateSecurityGroupsRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::DisassociateSecurityGroupsResponse`
        def DisassociateSecurityGroups(request)
          body = send_request('DisassociateSecurityGroups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DisassociateSecurityGroupsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量授权账号权限

        # @param request: Request instance for GrantAccountPrivileges.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::GrantAccountPrivilegesRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::GrantAccountPrivilegesResponse`
        def GrantAccountPrivileges(request)
          body = send_request('GrantAccountPrivileges', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GrantAccountPrivilegesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 隔离集群

        # @param request: Request instance for IsolateCluster.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::IsolateClusterRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::IsolateClusterResponse`
        def IsolateCluster(request)
          body = send_request('IsolateCluster', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = IsolateClusterResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(IsolateInstance)用于隔离实例。

        # @param request: Request instance for IsolateInstance.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::IsolateInstanceRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::IsolateInstanceResponse`
        def IsolateInstance(request)
          body = send_request('IsolateInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = IsolateInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改账号参数

        # @param request: Request instance for ModifyAccountParams.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::ModifyAccountParamsRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::ModifyAccountParamsResponse`
        def ModifyAccountParams(request)
          body = send_request('ModifyAccountParams', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAccountParamsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改指定集群的备份配置

        # @param request: Request instance for ModifyBackupConfig.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::ModifyBackupConfigRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::ModifyBackupConfigResponse`
        def ModifyBackupConfig(request)
          body = send_request('ModifyBackupConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyBackupConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改集群名称

        # @param request: Request instance for ModifyClusterName.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::ModifyClusterNameRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::ModifyClusterNameResponse`
        def ModifyClusterName(request)
          body = send_request('ModifyClusterName', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyClusterNameResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改集群参数

        # @param request: Request instance for ModifyClusterParam.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::ModifyClusterParamRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::ModifyClusterParamResponse`
        def ModifyClusterParam(request)
          body = send_request('ModifyClusterParam', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyClusterParamResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(ModifyDBInstanceSecurityGroups)用于修改实例绑定的安全组。

        # @param request: Request instance for ModifyDBInstanceSecurityGroups.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::ModifyDBInstanceSecurityGroupsRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::ModifyDBInstanceSecurityGroupsResponse`
        def ModifyDBInstanceSecurityGroups(request)
          body = send_request('ModifyDBInstanceSecurityGroups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDBInstanceSecurityGroupsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(ModifyInstanceName)用于修改实例名称。

        # @param request: Request instance for ModifyInstanceName.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::ModifyInstanceNameRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::ModifyInstanceNameResponse`
        def ModifyInstanceName(request)
          body = send_request('ModifyInstanceName', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyInstanceNameResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改维护时间配置

        # @param request: Request instance for ModifyMaintainPeriodConfig.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::ModifyMaintainPeriodConfigRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::ModifyMaintainPeriodConfigResponse`
        def ModifyMaintainPeriodConfig(request)
          body = send_request('ModifyMaintainPeriodConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyMaintainPeriodConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 下线集群

        # @param request: Request instance for OfflineCluster.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::OfflineClusterRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::OfflineClusterResponse`
        def OfflineCluster(request)
          body = send_request('OfflineCluster', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = OfflineClusterResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 下线实例

        # @param request: Request instance for OfflineInstance.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::OfflineInstanceRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::OfflineInstanceResponse`
        def OfflineInstance(request)
          body = send_request('OfflineInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = OfflineInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 暂停serverless集群

        # @param request: Request instance for PauseServerless.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::PauseServerlessRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::PauseServerlessResponse`
        def PauseServerless(request)
          body = send_request('PauseServerless', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = PauseServerlessResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 恢复serverless集群

        # @param request: Request instance for ResumeServerless.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::ResumeServerlessRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::ResumeServerlessResponse`
        def ResumeServerless(request)
          body = send_request('ResumeServerless', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ResumeServerlessResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量回收账号权限

        # @param request: Request instance for RevokeAccountPrivileges.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::RevokeAccountPrivilegesRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::RevokeAccountPrivilegesResponse`
        def RevokeAccountPrivileges(request)
          body = send_request('RevokeAccountPrivileges', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RevokeAccountPrivilegesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（RollBackCluster）用于回档集群

        # @param request: Request instance for RollBackCluster.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::RollBackClusterRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::RollBackClusterResponse`
        def RollBackCluster(request)
          body = send_request('RollBackCluster', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RollBackClusterResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # SetRenewFlag设置实例的自动续费功能

        # @param request: Request instance for SetRenewFlag.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::SetRenewFlagRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::SetRenewFlagResponse`
        def SetRenewFlag(request)
          body = send_request('SetRenewFlag', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SetRenewFlagResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 升级实例

        # @param request: Request instance for UpgradeInstance.
        # @type request: :class:`Tencentcloud::cynosdb::V20190107::UpgradeInstanceRequest`
        # @rtype: :class:`Tencentcloud::cynosdb::V20190107::UpgradeInstanceResponse`
        def UpgradeInstance(request)
          body = send_request('UpgradeInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpgradeInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end


      end
    end
  end
end