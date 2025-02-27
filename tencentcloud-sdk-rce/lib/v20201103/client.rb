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
  module Rce
    module V20201103
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2020-11-03'
            api_endpoint = 'rce.tencentcloudapi.com'
            sdk_version = 'RCE_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 此接口用于查询风险评估结果

        # @param request: Request instance for DescribeRiskAssessment.
        # @type request: :class:`Tencentcloud::rce::V20201103::DescribeRiskAssessmentRequest`
        # @rtype: :class:`Tencentcloud::rce::V20201103::DescribeRiskAssessmentResponse`
        def DescribeRiskAssessment(request)
          body = send_request('DescribeRiskAssessment', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRiskAssessmentResponse.new
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

        # 依托人工智能技术和腾讯丰富的风控实战经验，根据用户提供的数据和业务场景，给客户提供定制化模型服务

        # @param request: Request instance for DescribeRiskModel.
        # @type request: :class:`Tencentcloud::rce::V20201103::DescribeRiskModelRequest`
        # @rtype: :class:`Tencentcloud::rce::V20201103::DescribeRiskModelResponse`
        def DescribeRiskModel(request)
          body = send_request('DescribeRiskModel', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRiskModelResponse.new
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

        # 以图表形式展示三种请求状态的趋势变化

        # @param request: Request instance for DescribeRiskTrends.
        # @type request: :class:`Tencentcloud::rce::V20201103::DescribeRiskTrendsRequest`
        # @rtype: :class:`Tencentcloud::rce::V20201103::DescribeRiskTrendsResponse`
        def DescribeRiskTrends(request)
          body = send_request('DescribeRiskTrends', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRiskTrendsResponse.new
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

        # 全栈式风控引擎（RiskControlEngine，RCE）是基于人工智能技术和腾讯20年风控实战沉淀，依托腾讯海量业务构建的风控引擎，以轻量级的 SaaS 服务方式接入，帮助您快速解决注册、登录、营销活动等关键场景遇到的欺诈问题，实时防御黑灰产作恶。

        # @param request: Request instance for ManageMarketingRisk.
        # @type request: :class:`Tencentcloud::rce::V20201103::ManageMarketingRiskRequest`
        # @rtype: :class:`Tencentcloud::rce::V20201103::ManageMarketingRiskResponse`
        def ManageMarketingRisk(request)
          body = send_request('ManageMarketingRisk', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ManageMarketingRiskResponse.new
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