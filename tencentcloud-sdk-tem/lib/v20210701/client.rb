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
  module Tem
    module V20210701
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2021-07-01'
            api_endpoint = 'tem.tencentcloudapi.com'
            sdk_version = 'TEM_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 创建应用

        # @param request: Request instance for CreateApplication.
        # @type request: :class:`Tencentcloud::tem::V20210701::CreateApplicationRequest`
        # @rtype: :class:`Tencentcloud::tem::V20210701::CreateApplicationResponse`
        def CreateApplication(request)
          body = send_request('CreateApplication', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateApplicationResponse.new
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

        # 生成Cos临时秘钥

        # @param request: Request instance for CreateCosToken.
        # @type request: :class:`Tencentcloud::tem::V20210701::CreateCosTokenRequest`
        # @rtype: :class:`Tencentcloud::tem::V20210701::CreateCosTokenResponse`
        def CreateCosToken(request)
          body = send_request('CreateCosToken', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCosTokenResponse.new
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

        # 创建环境

        # @param request: Request instance for CreateEnvironment.
        # @type request: :class:`Tencentcloud::tem::V20210701::CreateEnvironmentRequest`
        # @rtype: :class:`Tencentcloud::tem::V20210701::CreateEnvironmentResponse`
        def CreateEnvironment(request)
          body = send_request('CreateEnvironment', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateEnvironmentResponse.new
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

        # 绑定云资源

        # @param request: Request instance for CreateResource.
        # @type request: :class:`Tencentcloud::tem::V20210701::CreateResourceRequest`
        # @rtype: :class:`Tencentcloud::tem::V20210701::CreateResourceResponse`
        def CreateResource(request)
          body = send_request('CreateResource', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateResourceResponse.new
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

        # 服务删除
        #   - 停止当前运行服务
        #   - 删除服务相关资源
        #   - 删除服务

        # @param request: Request instance for DeleteApplication.
        # @type request: :class:`Tencentcloud::tem::V20210701::DeleteApplicationRequest`
        # @rtype: :class:`Tencentcloud::tem::V20210701::DeleteApplicationResponse`
        def DeleteApplication(request)
          body = send_request('DeleteApplication', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteApplicationResponse.new
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

        # 删除 Ingress 规则

        # @param request: Request instance for DeleteIngress.
        # @type request: :class:`Tencentcloud::tem::V20210701::DeleteIngressRequest`
        # @rtype: :class:`Tencentcloud::tem::V20210701::DeleteIngressResponse`
        def DeleteIngress(request)
          body = send_request('DeleteIngress', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteIngressResponse.new
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

        # 应用部署

        # @param request: Request instance for DeployApplication.
        # @type request: :class:`Tencentcloud::tem::V20210701::DeployApplicationRequest`
        # @rtype: :class:`Tencentcloud::tem::V20210701::DeployApplicationResponse`
        def DeployApplication(request)
          body = send_request('DeployApplication', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeployApplicationResponse.new
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

        # 获取应用实例列表

        # @param request: Request instance for DescribeApplicationPods.
        # @type request: :class:`Tencentcloud::tem::V20210701::DescribeApplicationPodsRequest`
        # @rtype: :class:`Tencentcloud::tem::V20210701::DescribeApplicationPodsResponse`
        def DescribeApplicationPods(request)
          body = send_request('DescribeApplicationPods', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeApplicationPodsResponse.new
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

        # 获取分批发布详情

        # @param request: Request instance for DescribeDeployApplicationDetail.
        # @type request: :class:`Tencentcloud::tem::V20210701::DescribeDeployApplicationDetailRequest`
        # @rtype: :class:`Tencentcloud::tem::V20210701::DescribeDeployApplicationDetailResponse`
        def DescribeDeployApplicationDetail(request)
          body = send_request('DescribeDeployApplicationDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDeployApplicationDetailResponse.new
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

        # 获取租户环境列表

        # @param request: Request instance for DescribeEnvironments.
        # @type request: :class:`Tencentcloud::tem::V20210701::DescribeEnvironmentsRequest`
        # @rtype: :class:`Tencentcloud::tem::V20210701::DescribeEnvironmentsResponse`
        def DescribeEnvironments(request)
          body = send_request('DescribeEnvironments', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEnvironmentsResponse.new
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

        # 查询 Ingress 规则

        # @param request: Request instance for DescribeIngress.
        # @type request: :class:`Tencentcloud::tem::V20210701::DescribeIngressRequest`
        # @rtype: :class:`Tencentcloud::tem::V20210701::DescribeIngressResponse`
        def DescribeIngress(request)
          body = send_request('DescribeIngress', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeIngressResponse.new
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

        # 查询 Ingress 规则列表

        # @param request: Request instance for DescribeIngresses.
        # @type request: :class:`Tencentcloud::tem::V20210701::DescribeIngressesRequest`
        # @rtype: :class:`Tencentcloud::tem::V20210701::DescribeIngressesResponse`
        def DescribeIngresses(request)
          body = send_request('DescribeIngresses', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeIngressesResponse.new
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

        # 查询应用关联的 Ingress 规则列表

        # @param request: Request instance for DescribeRelatedIngresses.
        # @type request: :class:`Tencentcloud::tem::V20210701::DescribeRelatedIngressesRequest`
        # @rtype: :class:`Tencentcloud::tem::V20210701::DescribeRelatedIngressesResponse`
        def DescribeRelatedIngresses(request)
          body = send_request('DescribeRelatedIngresses', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRelatedIngressesResponse.new
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

        # 生成应用程序包预签名下载链接

        # @param request: Request instance for GenerateApplicationPackageDownloadUrl.
        # @type request: :class:`Tencentcloud::tem::V20210701::GenerateApplicationPackageDownloadUrlRequest`
        # @rtype: :class:`Tencentcloud::tem::V20210701::GenerateApplicationPackageDownloadUrlResponse`
        def GenerateApplicationPackageDownloadUrl(request)
          body = send_request('GenerateApplicationPackageDownloadUrl', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GenerateApplicationPackageDownloadUrlResponse.new
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

        # 修改应用基本信息

        # @param request: Request instance for ModifyApplicationInfo.
        # @type request: :class:`Tencentcloud::tem::V20210701::ModifyApplicationInfoRequest`
        # @rtype: :class:`Tencentcloud::tem::V20210701::ModifyApplicationInfoResponse`
        def ModifyApplicationInfo(request)
          body = send_request('ModifyApplicationInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyApplicationInfoResponse.new
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

        # 修改应用实例数量

        # @param request: Request instance for ModifyApplicationReplicas.
        # @type request: :class:`Tencentcloud::tem::V20210701::ModifyApplicationReplicasRequest`
        # @rtype: :class:`Tencentcloud::tem::V20210701::ModifyApplicationReplicasResponse`
        def ModifyApplicationReplicas(request)
          body = send_request('ModifyApplicationReplicas', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyApplicationReplicasResponse.new
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

        # 编辑环境

        # @param request: Request instance for ModifyEnvironment.
        # @type request: :class:`Tencentcloud::tem::V20210701::ModifyEnvironmentRequest`
        # @rtype: :class:`Tencentcloud::tem::V20210701::ModifyEnvironmentResponse`
        def ModifyEnvironment(request)
          body = send_request('ModifyEnvironment', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyEnvironmentResponse.new
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

        # 创建或者更新 Ingress 规则

        # @param request: Request instance for ModifyIngress.
        # @type request: :class:`Tencentcloud::tem::V20210701::ModifyIngressRequest`
        # @rtype: :class:`Tencentcloud::tem::V20210701::ModifyIngressResponse`
        def ModifyIngress(request)
          body = send_request('ModifyIngress', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyIngressResponse.new
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

        # 服务重启

        # @param request: Request instance for RestartApplication.
        # @type request: :class:`Tencentcloud::tem::V20210701::RestartApplicationRequest`
        # @rtype: :class:`Tencentcloud::tem::V20210701::RestartApplicationResponse`
        def RestartApplication(request)
          body = send_request('RestartApplication', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RestartApplicationResponse.new
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

        # 重启应用实例

        # @param request: Request instance for RestartApplicationPod.
        # @type request: :class:`Tencentcloud::tem::V20210701::RestartApplicationPodRequest`
        # @rtype: :class:`Tencentcloud::tem::V20210701::RestartApplicationPodResponse`
        def RestartApplicationPod(request)
          body = send_request('RestartApplicationPod', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RestartApplicationPodResponse.new
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

        # 开始下一批次发布

        # @param request: Request instance for ResumeDeployApplication.
        # @type request: :class:`Tencentcloud::tem::V20210701::ResumeDeployApplicationRequest`
        # @rtype: :class:`Tencentcloud::tem::V20210701::ResumeDeployApplicationResponse`
        def ResumeDeployApplication(request)
          body = send_request('ResumeDeployApplication', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ResumeDeployApplicationResponse.new
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

        # 回滚分批发布

        # @param request: Request instance for RevertDeployApplication.
        # @type request: :class:`Tencentcloud::tem::V20210701::RevertDeployApplicationRequest`
        # @rtype: :class:`Tencentcloud::tem::V20210701::RevertDeployApplicationResponse`
        def RevertDeployApplication(request)
          body = send_request('RevertDeployApplication', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RevertDeployApplicationResponse.new
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

        # 更新应用部署版本

        # @param request: Request instance for RollingUpdateApplicationByVersion.
        # @type request: :class:`Tencentcloud::tem::V20210701::RollingUpdateApplicationByVersionRequest`
        # @rtype: :class:`Tencentcloud::tem::V20210701::RollingUpdateApplicationByVersionResponse`
        def RollingUpdateApplicationByVersion(request)
          body = send_request('RollingUpdateApplicationByVersion', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RollingUpdateApplicationByVersionResponse.new
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

        # 服务停止

        # @param request: Request instance for StopApplication.
        # @type request: :class:`Tencentcloud::tem::V20210701::StopApplicationRequest`
        # @rtype: :class:`Tencentcloud::tem::V20210701::StopApplicationResponse`
        def StopApplication(request)
          body = send_request('StopApplication', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StopApplicationResponse.new
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