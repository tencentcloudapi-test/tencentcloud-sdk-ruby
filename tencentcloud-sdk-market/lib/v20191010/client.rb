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
  module Market
    module V20191010
      class Client < TencentCloud::Common::AbstractClient
        @@api_version = '2019-10-10'
        @@endpoint = 'market.tencentcloudapi.com'
        @@sdk_version = 'MARKET_' + File.read(File.expand_path('../VERSION', __dir__)).strip


        # 计量商品用量提醒，用于服务商调用云服务，云服务向客户发送提醒信息

        # @param request: Request instance for FlowProductRemind.
        # @type request: :class:`Tencentcloud::market::V20191010::FlowProductRemindRequest`
        # @rtype: :class:`Tencentcloud::market::V20191010::FlowProductRemindResponse`
        def FlowProductRemind(request)
          body = send_request('FlowProductRemind', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = FlowProductRemindResponse.new
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

        # 获取分类名称

        # @param request: Request instance for GetCateTree.
        # @type request: :class:`Tencentcloud::market::V20191010::GetCateTreeRequest`
        # @rtype: :class:`Tencentcloud::market::V20191010::GetCateTreeResponse`
        def GetCateTree(request)
          body = send_request('GetCateTree', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetCateTreeResponse.new
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

        # 该接口可以根据InstanceId查询实例的api的使用情况。

        # @param request: Request instance for GetUsagePlanUsageAmount.
        # @type request: :class:`Tencentcloud::market::V20191010::GetUsagePlanUsageAmountRequest`
        # @rtype: :class:`Tencentcloud::market::V20191010::GetUsagePlanUsageAmountResponse`
        def GetUsagePlanUsageAmount(request)
          body = send_request('GetUsagePlanUsageAmount', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetUsagePlanUsageAmountResponse.new
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