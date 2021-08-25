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
  module Cwp
    module V20180228
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2018-02-28'
            api_endpoint = 'cwp.tencentcloudapi.com'
            sdk_version = 'CWP_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 本接口 (CloseProVersion) 用于关闭专业版。

        # @param request: Request instance for CloseProVersion.
        # @type request: :class:`Tencentcloud::cwp::V20180228::CloseProVersionRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::CloseProVersionResponse`
        def CloseProVersion(request)
          body = send_request('CloseProVersion', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CloseProVersionResponse.new
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

        # 根据策略信息创建基线策略

        # @param request: Request instance for CreateBaselineStrategy.
        # @type request: :class:`Tencentcloud::cwp::V20180228::CreateBaselineStrategyRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::CreateBaselineStrategyResponse`
        def CreateBaselineStrategy(request)
          body = send_request('CreateBaselineStrategy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateBaselineStrategyResponse.new
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

        # 添加房展防护服务器

        # @param request: Request instance for CreateProtectServer.
        # @type request: :class:`Tencentcloud::cwp::V20180228::CreateProtectServerRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::CreateProtectServerResponse`
        def CreateProtectServer(request)
          body = send_request('CreateProtectServer', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateProtectServerResponse.new
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

        # 该接口可以对入侵检测-文件查杀扫描检测

        # @param request: Request instance for CreateScanMalwareSetting.
        # @type request: :class:`Tencentcloud::cwp::V20180228::CreateScanMalwareSettingRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::CreateScanMalwareSettingResponse`
        def CreateScanMalwareSetting(request)
          body = send_request('CreateScanMalwareSetting', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateScanMalwareSettingResponse.new
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

        # 添加历史搜索记录

        # @param request: Request instance for CreateSearchLog.
        # @type request: :class:`Tencentcloud::cwp::V20180228::CreateSearchLogRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::CreateSearchLogResponse`
        def CreateSearchLog(request)
          body = send_request('CreateSearchLog', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateSearchLogResponse.new
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

        # 添加检索模板

        # @param request: Request instance for CreateSearchTemplate.
        # @type request: :class:`Tencentcloud::cwp::V20180228::CreateSearchTemplateRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::CreateSearchTemplateResponse`
        def CreateSearchTemplate(request)
          body = send_request('CreateSearchTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateSearchTemplateResponse.new
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

        # 删除网络攻击日志

        # @param request: Request instance for DeleteAttackLogs.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DeleteAttackLogsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DeleteAttackLogsResponse`
        def DeleteAttackLogs(request)
          body = send_request('DeleteAttackLogs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteAttackLogsResponse.new
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

        # 根据Ids删除高危命令事件

        # @param request: Request instance for DeleteBashEvents.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DeleteBashEventsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DeleteBashEventsResponse`
        def DeleteBashEvents(request)
          body = send_request('DeleteBashEvents', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteBashEventsResponse.new
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

        # 删除高危命令规则

        # @param request: Request instance for DeleteBashRules.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DeleteBashRulesRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DeleteBashRulesResponse`
        def DeleteBashRules(request)
          body = send_request('DeleteBashRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteBashRulesResponse.new
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

        # 本接口 (DeleteBruteAttacks) 用于删除暴力破解记录。

        # @param request: Request instance for DeleteBruteAttacks.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DeleteBruteAttacksRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DeleteBruteAttacksResponse`
        def DeleteBruteAttacks(request)
          body = send_request('DeleteBruteAttacks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteBruteAttacksResponse.new
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

        # 本接口用于删除异地登录白名单规则。

        # @param request: Request instance for DeleteLoginWhiteList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DeleteLoginWhiteListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DeleteLoginWhiteListResponse`
        def DeleteLoginWhiteList(request)
          body = send_request('DeleteLoginWhiteList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteLoginWhiteListResponse.new
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

        # 本接口（DeleteMachine）用于卸载云镜客户端。

        # @param request: Request instance for DeleteMachine.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DeleteMachineRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DeleteMachineResponse`
        def DeleteMachine(request)
          body = send_request('DeleteMachine', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteMachineResponse.new
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

        # 删除服务器关联的标签

        # @param request: Request instance for DeleteMachineTag.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DeleteMachineTagRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DeleteMachineTagResponse`
        def DeleteMachineTag(request)
          body = send_request('DeleteMachineTag', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteMachineTagResponse.new
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

        # 本接口 (DeleteMaliciousRequests) 用于删除恶意请求记录。

        # @param request: Request instance for DeleteMaliciousRequests.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DeleteMaliciousRequestsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DeleteMaliciousRequestsResponse`
        def DeleteMaliciousRequests(request)
          body = send_request('DeleteMaliciousRequests', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteMaliciousRequestsResponse.new
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

        # 本接口 (DeleteMalwares) 用于删除木马记录。

        # @param request: Request instance for DeleteMalwares.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DeleteMalwaresRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DeleteMalwaresResponse`
        def DeleteMalwares(request)
          body = send_request('DeleteMalwares', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteMalwaresResponse.new
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

        # 本接口 (DeleteNonlocalLoginPlaces) 用于删除异地登录记录。

        # @param request: Request instance for DeleteNonlocalLoginPlaces.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DeleteNonlocalLoginPlacesRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DeleteNonlocalLoginPlacesResponse`
        def DeleteNonlocalLoginPlaces(request)
          body = send_request('DeleteNonlocalLoginPlaces', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteNonlocalLoginPlacesResponse.new
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

        # 根据Ids删除本地提权

        # @param request: Request instance for DeletePrivilegeEvents.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DeletePrivilegeEventsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DeletePrivilegeEventsResponse`
        def DeletePrivilegeEvents(request)
          body = send_request('DeletePrivilegeEvents', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeletePrivilegeEventsResponse.new
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

        # 删除本地提权规则

        # @param request: Request instance for DeletePrivilegeRules.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DeletePrivilegeRulesRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DeletePrivilegeRulesResponse`
        def DeletePrivilegeRules(request)
          body = send_request('DeletePrivilegeRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeletePrivilegeRulesResponse.new
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

        # 根据Ids删除反弹Shell事件

        # @param request: Request instance for DeleteReverseShellEvents.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DeleteReverseShellEventsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DeleteReverseShellEventsResponse`
        def DeleteReverseShellEvents(request)
          body = send_request('DeleteReverseShellEvents', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteReverseShellEventsResponse.new
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

        # 删除反弹Shell规则

        # @param request: Request instance for DeleteReverseShellRules.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DeleteReverseShellRulesRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DeleteReverseShellRulesResponse`
        def DeleteReverseShellRules(request)
          body = send_request('DeleteReverseShellRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteReverseShellRulesResponse.new
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

        # 删除检索模板

        # @param request: Request instance for DeleteSearchTemplate.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DeleteSearchTemplateRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DeleteSearchTemplateResponse`
        def DeleteSearchTemplate(request)
          body = send_request('DeleteSearchTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteSearchTemplateResponse.new
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

        # 删除标签

        # @param request: Request instance for DeleteTags.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DeleteTagsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DeleteTagsResponse`
        def DeleteTags(request)
          body = send_request('DeleteTags', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteTagsResponse.new
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

        # 网站防篡改-删除事件记录

        # @param request: Request instance for DeleteWebPageEventLog.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DeleteWebPageEventLogRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DeleteWebPageEventLogResponse`
        def DeleteWebPageEventLog(request)
          body = send_request('DeleteWebPageEventLog', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteWebPageEventLogResponse.new
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

        # 本接口 (DescribeAccountStatistics) 用于获取帐号统计列表数据。

        # @param request: Request instance for DescribeAccountStatistics.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeAccountStatisticsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeAccountStatisticsResponse`
        def DescribeAccountStatistics(request)
          body = send_request('DescribeAccountStatistics', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAccountStatisticsResponse.new
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

        # 该接口已废弃

        # 本接口 (DescribeAccounts) 用于获取帐号列表数据。

        # @param request: Request instance for DescribeAccounts.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeAccountsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeAccountsResponse`
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

        # 获取资产数量： 主机数、账号数、端口数、进程数、软件数、数据库数、Web应用数、Web框架数、Web服务数、Web站点数

        # @param request: Request instance for DescribeAssetInfo.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeAssetInfoRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeAssetInfoResponse`
        def DescribeAssetInfo(request)
          body = send_request('DescribeAssetInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAssetInfoResponse.new
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

        # 获取主机最近趋势情况

        # @param request: Request instance for DescribeAssetRecentMachineInfo.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeAssetRecentMachineInfoRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeAssetRecentMachineInfoResponse`
        def DescribeAssetRecentMachineInfo(request)
          body = send_request('DescribeAssetRecentMachineInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAssetRecentMachineInfoResponse.new
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

        # 网络攻击日志详情

        # @param request: Request instance for DescribeAttackLogInfo.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeAttackLogInfoRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeAttackLogInfoResponse`
        def DescribeAttackLogInfo(request)
          body = send_request('DescribeAttackLogInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAttackLogInfoResponse.new
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

        # 按分页形式展示网络攻击日志列表

        # @param request: Request instance for DescribeAttackLogs.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeAttackLogsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeAttackLogsResponse`
        def DescribeAttackLogs(request)
          body = send_request('DescribeAttackLogs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAttackLogsResponse.new
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

        # 获取网络攻击威胁类型列表

        # @param request: Request instance for DescribeAttackVulTypeList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeAttackVulTypeListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeAttackVulTypeListResponse`
        def DescribeAttackVulTypeList(request)
          body = send_request('DescribeAttackVulTypeList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAttackVulTypeListResponse.new
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

        # 获取高危命令列表

        # @param request: Request instance for DescribeBashEvents.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeBashEventsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeBashEventsResponse`
        def DescribeBashEvents(request)
          body = send_request('DescribeBashEvents', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBashEventsResponse.new
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

        # 获取高危命令规则列表

        # @param request: Request instance for DescribeBashRules.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeBashRulesRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeBashRulesResponse`
        def DescribeBashRules(request)
          body = send_request('DescribeBashRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBashRulesResponse.new
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

        # 获取密码破解列表

        # @param request: Request instance for DescribeBruteAttackList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeBruteAttackListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeBruteAttackListResponse`
        def DescribeBruteAttackList(request)
          body = send_request('DescribeBruteAttackList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBruteAttackListResponse.new
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

        # 本接口 (DescribeComponentStatistics) 用于获取组件统计列表数据。

        # @param request: Request instance for DescribeComponentStatistics.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeComponentStatisticsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeComponentStatisticsResponse`
        def DescribeComponentStatistics(request)
          body = send_request('DescribeComponentStatistics', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeComponentStatisticsResponse.new
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

        # 获取ES字段聚合结果

        # @param request: Request instance for DescribeESAggregations.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeESAggregationsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeESAggregationsResponse`
        def DescribeESAggregations(request)
          body = send_request('DescribeESAggregations', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeESAggregationsResponse.new
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

        # 获取ES查询文档列表

        # @param request: Request instance for DescribeESHits.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeESHitsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeESHitsResponse`
        def DescribeESHits(request)
          body = send_request('DescribeESHits', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeESHitsResponse.new
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

        # 本接口 (DescribeExportMachines) 用于导出区域主机列表。

        # @param request: Request instance for DescribeExportMachines.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeExportMachinesRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeExportMachinesResponse`
        def DescribeExportMachines(request)
          body = send_request('DescribeExportMachines', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeExportMachinesResponse.new
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

        # 获取主机安全相关统计

        # @param request: Request instance for DescribeGeneralStat.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeGeneralStatRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeGeneralStatResponse`
        def DescribeGeneralStat(request)
          body = send_request('DescribeGeneralStat', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeGeneralStatResponse.new
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

        # 本接口 (DescribeHistoryAccounts) 用于获取帐号变更历史列表数据。

        # @param request: Request instance for DescribeHistoryAccounts.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeHistoryAccountsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeHistoryAccountsResponse`
        def DescribeHistoryAccounts(request)
          body = send_request('DescribeHistoryAccounts', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeHistoryAccountsResponse.new
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

        # 查询日志检索服务信息

        # @param request: Request instance for DescribeHistoryService.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeHistoryServiceRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeHistoryServiceResponse`
        def DescribeHistoryService(request)
          body = send_request('DescribeHistoryService', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeHistoryServiceResponse.new
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

        # 查询批量导入机器信息

        # @param request: Request instance for DescribeImportMachineInfo.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeImportMachineInfoRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeImportMachineInfoResponse`
        def DescribeImportMachineInfo(request)
          body = send_request('DescribeImportMachineInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeImportMachineInfoResponse.new
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

        # 获取索引列表

        # @param request: Request instance for DescribeIndexList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeIndexListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeIndexListResponse`
        def DescribeIndexList(request)
          body = send_request('DescribeIndexList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeIndexListResponse.new
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

        # 获取日志检索容量使用统计

        # @param request: Request instance for DescribeLogStorageStatistic.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeLogStorageStatisticRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeLogStorageStatisticResponse`
        def DescribeLogStorageStatistic(request)
          body = send_request('DescribeLogStorageStatistic', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLogStorageStatisticResponse.new
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

        # 获取异地登录白名单列表

        # @param request: Request instance for DescribeLoginWhiteList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeLoginWhiteListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeLoginWhiteListResponse`
        def DescribeLoginWhiteList(request)
          body = send_request('DescribeLoginWhiteList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLoginWhiteListResponse.new
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

        # 本接口（DescribeMachineInfo）用于获取机器详细信息。

        # @param request: Request instance for DescribeMachineInfo.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeMachineInfoRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeMachineInfoResponse`
        def DescribeMachineInfo(request)
          body = send_request('DescribeMachineInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMachineInfoResponse.new
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

        # 本接口 (DescribeMachineList) 用于网页防篡改获取区域主机列表。

        # @param request: Request instance for DescribeMachineList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeMachineListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeMachineListResponse`
        def DescribeMachineList(request)
          body = send_request('DescribeMachineList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMachineListResponse.new
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

        # 查询可筛选操作系统列表.

        # @param request: Request instance for DescribeMachineOsList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeMachineOsListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeMachineOsListResponse`
        def DescribeMachineOsList(request)
          body = send_request('DescribeMachineOsList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMachineOsListResponse.new
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

        # 获取机器地域列表

        # @param request: Request instance for DescribeMachineRegions.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeMachineRegionsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeMachineRegionsResponse`
        def DescribeMachineRegions(request)
          body = send_request('DescribeMachineRegions', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMachineRegionsResponse.new
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

        # 本接口 (DescribeMachines) 用于获取区域主机列表。

        # @param request: Request instance for DescribeMachines.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeMachinesRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeMachinesResponse`
        def DescribeMachines(request)
          body = send_request('DescribeMachines', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMachinesResponse.new
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

        # 查看恶意文件详情

        # @param request: Request instance for DescribeMalwareInfo.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeMalwareInfoRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeMalwareInfoResponse`
        def DescribeMalwareInfo(request)
          body = send_request('DescribeMalwareInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMalwareInfoResponse.new
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

        # 查询定时扫描配置

        # @param request: Request instance for DescribeMalwareTimingScanSetting.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeMalwareTimingScanSettingRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeMalwareTimingScanSettingResponse`
        def DescribeMalwareTimingScanSetting(request)
          body = send_request('DescribeMalwareTimingScanSetting', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMalwareTimingScanSettingResponse.new
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

        # 本接口 (DescribeOpenPortStatistics) 用于获取端口统计列表。

        # @param request: Request instance for DescribeOpenPortStatistics.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeOpenPortStatisticsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeOpenPortStatisticsResponse`
        def DescribeOpenPortStatistics(request)
          body = send_request('DescribeOpenPortStatistics', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeOpenPortStatisticsResponse.new
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

        # 本接口用于（DescribeOverviewStatistics）获取概览统计数据。

        # @param request: Request instance for DescribeOverviewStatistics.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeOverviewStatisticsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeOverviewStatisticsResponse`
        def DescribeOverviewStatistics(request)
          body = send_request('DescribeOverviewStatistics', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeOverviewStatisticsResponse.new
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

        # 获取本地提权事件列表

        # @param request: Request instance for DescribePrivilegeEvents.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribePrivilegeEventsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribePrivilegeEventsResponse`
        def DescribePrivilegeEvents(request)
          body = send_request('DescribePrivilegeEvents', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePrivilegeEventsResponse.new
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

        # 获取本地提权规则列表

        # @param request: Request instance for DescribePrivilegeRules.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribePrivilegeRulesRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribePrivilegeRulesResponse`
        def DescribePrivilegeRules(request)
          body = send_request('DescribePrivilegeRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePrivilegeRulesResponse.new
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

        # 本接口 (DescribeProVersionInfo) 用于获取专业版信息。

        # @param request: Request instance for DescribeProVersionInfo.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeProVersionInfoRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeProVersionInfoResponse`
        def DescribeProVersionInfo(request)
          body = send_request('DescribeProVersionInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeProVersionInfoResponse.new
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

        # 本接口 (DescribeProcessStatistics) 用于获取进程统计列表数据。

        # @param request: Request instance for DescribeProcessStatistics.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeProcessStatisticsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeProcessStatisticsResponse`
        def DescribeProcessStatistics(request)
          body = send_request('DescribeProcessStatistics', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeProcessStatisticsResponse.new
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

        # 获取反弹Shell列表

        # @param request: Request instance for DescribeReverseShellEvents.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeReverseShellEventsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeReverseShellEventsResponse`
        def DescribeReverseShellEvents(request)
          body = send_request('DescribeReverseShellEvents', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeReverseShellEventsResponse.new
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

        # 获取反弹Shell规则列表

        # @param request: Request instance for DescribeReverseShellRules.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeReverseShellRulesRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeReverseShellRulesResponse`
        def DescribeReverseShellRules(request)
          body = send_request('DescribeReverseShellRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeReverseShellRulesResponse.new
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

        # 入侵检测，获取恶意请求列表

        # @param request: Request instance for DescribeRiskDnsList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeRiskDnsListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeRiskDnsListResponse`
        def DescribeRiskDnsList(request)
          body = send_request('DescribeRiskDnsList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRiskDnsListResponse.new
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

        # 查询木马扫描进度

        # @param request: Request instance for DescribeScanMalwareSchedule.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeScanMalwareScheduleRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeScanMalwareScheduleResponse`
        def DescribeScanMalwareSchedule(request)
          body = send_request('DescribeScanMalwareSchedule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeScanMalwareScheduleResponse.new
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

        # DescribeScanTaskDetails 查询扫描任务详情 , 可以查询扫描进度信息/异常;

        # @param request: Request instance for DescribeScanTaskDetails.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeScanTaskDetailsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeScanTaskDetailsResponse`
        def DescribeScanTaskDetails(request)
          body = send_request('DescribeScanTaskDetails', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeScanTaskDetailsResponse.new
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

        # 查询定期检测的配置

        # @param request: Request instance for DescribeScanVulSetting.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeScanVulSettingRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeScanVulSettingResponse`
        def DescribeScanVulSetting(request)
          body = send_request('DescribeScanVulSetting', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeScanVulSettingResponse.new
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

        # 导出ES查询文档列表

        # @param request: Request instance for DescribeSearchExportList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeSearchExportListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeSearchExportListResponse`
        def DescribeSearchExportList(request)
          body = send_request('DescribeSearchExportList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSearchExportListResponse.new
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

        # 获取历史搜索记录

        # @param request: Request instance for DescribeSearchLogs.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeSearchLogsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeSearchLogsResponse`
        def DescribeSearchLogs(request)
          body = send_request('DescribeSearchLogs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSearchLogsResponse.new
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

        # 获取快速检索列表

        # @param request: Request instance for DescribeSearchTemplates.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeSearchTemplatesRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeSearchTemplatesResponse`
        def DescribeSearchTemplates(request)
          body = send_request('DescribeSearchTemplates', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSearchTemplatesResponse.new
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

        # 本接口 (DescribeSecurityDynamics) 用于获取安全事件消息数据。

        # @param request: Request instance for DescribeSecurityDynamics.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeSecurityDynamicsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeSecurityDynamicsResponse`
        def DescribeSecurityDynamics(request)
          body = send_request('DescribeSecurityDynamics', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSecurityDynamicsResponse.new
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

        # 获取安全概览相关事件统计数据接口

        # @param request: Request instance for DescribeSecurityEventsCnt.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeSecurityEventsCntRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeSecurityEventsCntResponse`
        def DescribeSecurityEventsCnt(request)
          body = send_request('DescribeSecurityEventsCnt', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSecurityEventsCntResponse.new
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

        # 本接口 (DescribeSecurityTrends) 用于获取安全事件统计数据。

        # @param request: Request instance for DescribeSecurityTrends.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeSecurityTrendsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeSecurityTrendsResponse`
        def DescribeSecurityTrends(request)
          body = send_request('DescribeSecurityTrends', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSecurityTrendsResponse.new
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

        # 获取指定标签关联的服务器信息

        # @param request: Request instance for DescribeTagMachines.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeTagMachinesRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeTagMachinesResponse`
        def DescribeTagMachines(request)
          body = send_request('DescribeTagMachines', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTagMachinesResponse.new
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

        # 获取所有主机标签

        # @param request: Request instance for DescribeTags.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeTagsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeTagsResponse`
        def DescribeTags(request)
          body = send_request('DescribeTags', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTagsResponse.new
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

        # 此接口（DescribeUsualLoginPlaces）用于查询常用登录地。

        # @param request: Request instance for DescribeUsualLoginPlaces.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeUsualLoginPlacesRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeUsualLoginPlacesResponse`
        def DescribeUsualLoginPlaces(request)
          body = send_request('DescribeUsualLoginPlaces', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUsualLoginPlacesResponse.new
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

        # 查询网站防篡改概览信息

        # @param request: Request instance for DescribeWebPageGeneralize.
        # @type request: :class:`Tencentcloud::cwp::V20180228::DescribeWebPageGeneralizeRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::DescribeWebPageGeneralizeResponse`
        def DescribeWebPageGeneralize(request)
          body = send_request('DescribeWebPageGeneralize', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeWebPageGeneralizeResponse.new
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

        # 新增或修改高危命令规则

        # @param request: Request instance for EditBashRules.
        # @type request: :class:`Tencentcloud::cwp::V20180228::EditBashRulesRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::EditBashRulesResponse`
        def EditBashRules(request)
          body = send_request('EditBashRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = EditBashRulesResponse.new
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

        # 新增或编辑标签

        # @param request: Request instance for EditTags.
        # @type request: :class:`Tencentcloud::cwp::V20180228::EditTagsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::EditTagsResponse`
        def EditTags(request)
          body = send_request('EditTags', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = EditTagsResponse.new
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

        # 导出资产管理内核模块列表

        # @param request: Request instance for ExportAssetCoreModuleList.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ExportAssetCoreModuleListRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ExportAssetCoreModuleListResponse`
        def ExportAssetCoreModuleList(request)
          body = send_request('ExportAssetCoreModuleList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExportAssetCoreModuleListResponse.new
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

        # 导出网络攻击日志

        # @param request: Request instance for ExportAttackLogs.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ExportAttackLogsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ExportAttackLogsResponse`
        def ExportAttackLogs(request)
          body = send_request('ExportAttackLogs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExportAttackLogsResponse.new
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

        # 导出高危命令事件

        # @param request: Request instance for ExportBashEvents.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ExportBashEventsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ExportBashEventsResponse`
        def ExportBashEvents(request)
          body = send_request('ExportBashEvents', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExportBashEventsResponse.new
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

        # 本接口 (ExportBruteAttacks) 用于导出密码破解记录成CSV文件。

        # @param request: Request instance for ExportBruteAttacks.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ExportBruteAttacksRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ExportBruteAttacksResponse`
        def ExportBruteAttacks(request)
          body = send_request('ExportBruteAttacks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExportBruteAttacksResponse.new
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

        # 本接口 (ExportMaliciousRequests) 用于导出下载恶意请求文件。

        # @param request: Request instance for ExportMaliciousRequests.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ExportMaliciousRequestsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ExportMaliciousRequestsResponse`
        def ExportMaliciousRequests(request)
          body = send_request('ExportMaliciousRequests', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExportMaliciousRequestsResponse.new
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

        # 本接口 (ExportMalwares) 用于导出木马记录CSV文件。

        # @param request: Request instance for ExportMalwares.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ExportMalwaresRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ExportMalwaresResponse`
        def ExportMalwares(request)
          body = send_request('ExportMalwares', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExportMalwaresResponse.new
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

        # 本接口 (ExportNonlocalLoginPlaces) 用于导出异地登录事件记录CSV文件。

        # @param request: Request instance for ExportNonlocalLoginPlaces.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ExportNonlocalLoginPlacesRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ExportNonlocalLoginPlacesResponse`
        def ExportNonlocalLoginPlaces(request)
          body = send_request('ExportNonlocalLoginPlaces', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExportNonlocalLoginPlacesResponse.new
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

        # 导出本地提权事件

        # @param request: Request instance for ExportPrivilegeEvents.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ExportPrivilegeEventsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ExportPrivilegeEventsResponse`
        def ExportPrivilegeEvents(request)
          body = send_request('ExportPrivilegeEvents', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExportPrivilegeEventsResponse.new
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

        # 导出反弹Shell事件

        # @param request: Request instance for ExportReverseShellEvents.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ExportReverseShellEventsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ExportReverseShellEventsResponse`
        def ExportReverseShellEvents(request)
          body = send_request('ExportReverseShellEvents', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExportReverseShellEventsResponse.new
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

        # 根据任务id导出指定扫描任务详情

        # @param request: Request instance for ExportScanTaskDetails.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ExportScanTaskDetailsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ExportScanTaskDetailsResponse`
        def ExportScanTaskDetails(request)
          body = send_request('ExportScanTaskDetails', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExportScanTaskDetailsResponse.new
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

        # 用于异步导出数据量大的日志文件

        # @param request: Request instance for ExportTasks.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ExportTasksRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ExportTasksResponse`
        def ExportTasks(request)
          body = send_request('ExportTasks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExportTasksResponse.new
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

        # 导出本次漏洞检测Excel

        # @param request: Request instance for ExportVulDetectionExcel.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ExportVulDetectionExcelRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ExportVulDetectionExcelResponse`
        def ExportVulDetectionExcel(request)
          body = send_request('ExportVulDetectionExcel', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExportVulDetectionExcelResponse.new
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

        # 导出漏洞检测报告。

        # @param request: Request instance for ExportVulDetectionReport.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ExportVulDetectionReportRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ExportVulDetectionReportResponse`
        def ExportVulDetectionReport(request)
          body = send_request('ExportVulDetectionReport', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExportVulDetectionReportResponse.new
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

        # 本接口 (IgnoreImpactedHosts) 用于忽略漏洞。

        # @param request: Request instance for IgnoreImpactedHosts.
        # @type request: :class:`Tencentcloud::cwp::V20180228::IgnoreImpactedHostsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::IgnoreImpactedHostsResponse`
        def IgnoreImpactedHosts(request)
          body = send_request('IgnoreImpactedHosts', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = IgnoreImpactedHostsResponse.new
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

        # 本接口 (InquiryPriceOpenProVersionPrepaid) 用于开通专业版询价(预付费)。

        # @param request: Request instance for InquiryPriceOpenProVersionPrepaid.
        # @type request: :class:`Tencentcloud::cwp::V20180228::InquiryPriceOpenProVersionPrepaidRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::InquiryPriceOpenProVersionPrepaidResponse`
        def InquiryPriceOpenProVersionPrepaid(request)
          body = send_request('InquiryPriceOpenProVersionPrepaid', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = InquiryPriceOpenProVersionPrepaidResponse.new
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

        # 本接口 (ModifyAutoOpenProVersionConfig) 用于设置新增主机自动开通专业版配置。

        # @param request: Request instance for ModifyAutoOpenProVersionConfig.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ModifyAutoOpenProVersionConfigRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ModifyAutoOpenProVersionConfigResponse`
        def ModifyAutoOpenProVersionConfig(request)
          body = send_request('ModifyAutoOpenProVersionConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAutoOpenProVersionConfigResponse.new
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

        # 定时扫描设置

        # @param request: Request instance for ModifyMalwareTimingScanSettings.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ModifyMalwareTimingScanSettingsRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ModifyMalwareTimingScanSettingsResponse`
        def ModifyMalwareTimingScanSettings(request)
          body = send_request('ModifyMalwareTimingScanSettings', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyMalwareTimingScanSettingsResponse.new
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

        # 本接口 (ModifyProVersionRenewFlag) 用于修改专业版包年包月续费标识。

        # @param request: Request instance for ModifyProVersionRenewFlag.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ModifyProVersionRenewFlagRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ModifyProVersionRenewFlagResponse`
        def ModifyProVersionRenewFlag(request)
          body = send_request('ModifyProVersionRenewFlag', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyProVersionRenewFlagResponse.new
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

        # 修改告警设置

        # @param request: Request instance for ModifyWarningSetting.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ModifyWarningSettingRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ModifyWarningSettingResponse`
        def ModifyWarningSetting(request)
          body = send_request('ModifyWarningSetting', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyWarningSettingResponse.new
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

        # 网站防篡改-修改网站防护设置

        # @param request: Request instance for ModifyWebPageProtectSetting.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ModifyWebPageProtectSettingRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ModifyWebPageProtectSettingResponse`
        def ModifyWebPageProtectSetting(request)
          body = send_request('ModifyWebPageProtectSetting', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyWebPageProtectSettingResponse.new
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

        # 本接口 (OpenProVersion) 用于开通专业版。

        # @param request: Request instance for OpenProVersion.
        # @type request: :class:`Tencentcloud::cwp::V20180228::OpenProVersionRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::OpenProVersionResponse`
        def OpenProVersion(request)
          body = send_request('OpenProVersion', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = OpenProVersionResponse.new
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

        # 本接口 (OpenProVersionPrepaid) 用于开通专业版(包年包月)。

        # @param request: Request instance for OpenProVersionPrepaid.
        # @type request: :class:`Tencentcloud::cwp::V20180228::OpenProVersionPrepaidRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::OpenProVersionPrepaidResponse`
        def OpenProVersionPrepaid(request)
          body = send_request('OpenProVersionPrepaid', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = OpenProVersionPrepaidResponse.new
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

        # 本接口（RecoverMalwares）用于批量恢复已经被隔离的木马文件。

        # @param request: Request instance for RecoverMalwares.
        # @type request: :class:`Tencentcloud::cwp::V20180228::RecoverMalwaresRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::RecoverMalwaresResponse`
        def RecoverMalwares(request)
          body = send_request('RecoverMalwares', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RecoverMalwaresResponse.new
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

        # 本接口 (RenewProVersion) 用于续费专业版(包年包月)。

        # @param request: Request instance for RenewProVersion.
        # @type request: :class:`Tencentcloud::cwp::V20180228::RenewProVersionRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::RenewProVersionResponse`
        def RenewProVersion(request)
          body = send_request('RenewProVersion', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RenewProVersionResponse.new
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

        # 该接口已废弃

        # 本接口 (RescanImpactedHost) 用于漏洞重新检测。

        # @param request: Request instance for RescanImpactedHost.
        # @type request: :class:`Tencentcloud::cwp::V20180228::RescanImpactedHostRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::RescanImpactedHostResponse`
        def RescanImpactedHost(request)
          body = send_request('RescanImpactedHost', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RescanImpactedHostResponse.new
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

        # 资产指纹启动扫描

        # @param request: Request instance for ScanAsset.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ScanAssetRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ScanAssetResponse`
        def ScanAsset(request)
          body = send_request('ScanAsset', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ScanAssetResponse.new
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

        #  一键检测

        # @param request: Request instance for ScanVul.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ScanVulRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ScanVulResponse`
        def ScanVul(request)
          body = send_request('ScanVul', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ScanVulResponse.new
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

        # 漏洞管理-重新检测接口

        # @param request: Request instance for ScanVulAgain.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ScanVulAgainRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ScanVulAgainResponse`
        def ScanVulAgain(request)
          body = send_request('ScanVulAgain', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ScanVulAgainResponse.new
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

        # 定期扫描漏洞设置

        # @param request: Request instance for ScanVulSetting.
        # @type request: :class:`Tencentcloud::cwp::V20180228::ScanVulSettingRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::ScanVulSettingResponse`
        def ScanVulSetting(request)
          body = send_request('ScanVulSetting', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ScanVulSettingResponse.new
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

        # 本接口（SeparateMalwares）用于隔离木马。

        # @param request: Request instance for SeparateMalwares.
        # @type request: :class:`Tencentcloud::cwp::V20180228::SeparateMalwaresRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::SeparateMalwaresResponse`
        def SeparateMalwares(request)
          body = send_request('SeparateMalwares', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SeparateMalwaresResponse.new
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

        # 设置高危命令事件状态

        # @param request: Request instance for SetBashEventsStatus.
        # @type request: :class:`Tencentcloud::cwp::V20180228::SetBashEventsStatusRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::SetBashEventsStatusResponse`
        def SetBashEventsStatus(request)
          body = send_request('SetBashEventsStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SetBashEventsStatusResponse.new
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

        # 切换高危命令规则状态

        # @param request: Request instance for SwitchBashRules.
        # @type request: :class:`Tencentcloud::cwp::V20180228::SwitchBashRulesRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::SwitchBashRulesResponse`
        def SwitchBashRules(request)
          body = send_request('SwitchBashRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SwitchBashRulesResponse.new
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

        # 同步资产扫描信息

        # @param request: Request instance for SyncAssetScan.
        # @type request: :class:`Tencentcloud::cwp::V20180228::SyncAssetScanRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::SyncAssetScanResponse`
        def SyncAssetScan(request)
          body = send_request('SyncAssetScan', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SyncAssetScanResponse.new
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

        # 本接口(TrustMalwares)将被识别木马文件设为信任。

        # @param request: Request instance for TrustMalwares.
        # @type request: :class:`Tencentcloud::cwp::V20180228::TrustMalwaresRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::TrustMalwaresResponse`
        def TrustMalwares(request)
          body = send_request('TrustMalwares', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = TrustMalwaresResponse.new
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

        # 本接口（UntrustMalwares）用于取消信任木马文件。

        # @param request: Request instance for UntrustMalwares.
        # @type request: :class:`Tencentcloud::cwp::V20180228::UntrustMalwaresRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::UntrustMalwaresResponse`
        def UntrustMalwares(request)
          body = send_request('UntrustMalwares', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UntrustMalwaresResponse.new
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

        # 根据基线策略id更新策略信息

        # @param request: Request instance for UpdateBaselineStrategy.
        # @type request: :class:`Tencentcloud::cwp::V20180228::UpdateBaselineStrategyRequest`
        # @rtype: :class:`Tencentcloud::cwp::V20180228::UpdateBaselineStrategyResponse`
        def UpdateBaselineStrategy(request)
          body = send_request('UpdateBaselineStrategy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateBaselineStrategyResponse.new
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