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
  module Ocr
    module V20181119
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2018-11-19'
            api_endpoint = 'ocr.tencentcloudapi.com'
            sdk_version = 'OCR_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 本接口支持广告商品图片内文字的检测和识别，返回文本框位置与文字内容。

        # 产品优势：针对广告商品图片普遍存在较多繁体字、艺术字的特点，进行了识别能力的增强。支持中英文、横排、竖排以及倾斜场景文字识别。文字识别的召回率和准确率能达到96%以上。

        # @param request: Request instance for AdvertiseOCR.
        # @type request: :class:`Tencentcloud::ocr::V20181119::AdvertiseOCRRequest`
        # @rtype: :class:`Tencentcloud::ocr::V20181119::AdvertiseOCRResponse`
        def AdvertiseOCR(request)
          body = send_request('AdvertiseOCR', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AdvertiseOCRResponse.new
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

        # 本接口支持作业算式题目的自动识别和判分，目前覆盖 K12 学力范围内的 11 种题型，包括加减乘除四则、加减乘除已知结果求运算因子、判断大小、约等于估算、带余数除法、分数四则运算、单位换算、竖式加减法、竖式乘除法、脱式计算和解方程，平均识别精度达到93%以上。

        # @param request: Request instance for ArithmeticOCR.
        # @type request: :class:`Tencentcloud::ocr::V20181119::ArithmeticOCRRequest`
        # @rtype: :class:`Tencentcloud::ocr::V20181119::ArithmeticOCRResponse`
        def ArithmeticOCR(request)
          body = send_request('ArithmeticOCR', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ArithmeticOCRResponse.new
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

        # 本接口支持对中国大陆主流银行卡正反面关键字段的检测与识别，包括卡号、卡类型、卡名字、银行信息、有效期。支持竖排异形卡识别、多角度旋转图片识别。支持对复印件、翻拍件、边框遮挡的银行卡进行告警，可应用于各种银行卡信息有效性校验场景，如金融行业身份认证、第三方支付绑卡等场景。

        # @param request: Request instance for BankCardOCR.
        # @type request: :class:`Tencentcloud::ocr::V20181119::BankCardOCRRequest`
        # @rtype: :class:`Tencentcloud::ocr::V20181119::BankCardOCRResponse`
        def BankCardOCR(request)
          body = send_request('BankCardOCR', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BankCardOCRResponse.new
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

        # 本接口支持银行回单全字段的识别，包括付款开户行、收款开户行、付款账号、收款账号、回单类型、回单编号、币种、流水号、凭证号码、交易机构、交易金额、手续费、日期等字段信息。


        # @param request: Request instance for BankSlipOCR.
        # @type request: :class:`Tencentcloud::ocr::V20181119::BankSlipOCRRequest`
        # @rtype: :class:`Tencentcloud::ocr::V20181119::BankSlipOCRResponse`
        def BankSlipOCR(request)
          body = send_request('BankSlipOCR', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BankSlipOCRResponse.new
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

        # 本接口支持快速精准识别营业执照上的字段，包括统一社会信用代码、公司名称、经营场所、主体类型、法定代表人、注册资金、组成形式、成立日期、营业期限和经营范围等字段。

        # @param request: Request instance for BizLicenseOCR.
        # @type request: :class:`Tencentcloud::ocr::V20181119::BizLicenseOCRRequest`
        # @rtype: :class:`Tencentcloud::ocr::V20181119::BizLicenseOCRResponse`
        def BizLicenseOCR(request)
          body = send_request('BizLicenseOCR', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BizLicenseOCRResponse.new
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

        # 本接口支持识别公路汽车客票的发票代码、发票号码、日期、姓名、票价等字段。

        # @param request: Request instance for BusInvoiceOCR.
        # @type request: :class:`Tencentcloud::ocr::V20181119::BusInvoiceOCRRequest`
        # @rtype: :class:`Tencentcloud::ocr::V20181119::BusInvoiceOCRResponse`
        def BusInvoiceOCR(request)
          body = send_request('BusInvoiceOCR', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BusInvoiceOCRResponse.new
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

        # 本接口支持名片各字段的自动定位与识别，包含姓名、电话、手机号、邮箱、公司、部门、职位、网址、地址、QQ、微信、MSN等。

        # @param request: Request instance for BusinessCardOCR.
        # @type request: :class:`Tencentcloud::ocr::V20181119::BusinessCardOCRRequest`
        # @rtype: :class:`Tencentcloud::ocr::V20181119::BusinessCardOCRResponse`
        def BusinessCardOCR(request)
          body = send_request('BusinessCardOCR', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BusinessCardOCRResponse.new
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

        # 本接口支持机动车销售统一发票和二手车销售统一发票的识别，包括发票号码、发票代码、合计金额、合计税额等二十多个字段。

        # @param request: Request instance for CarInvoiceOCR.
        # @type request: :class:`Tencentcloud::ocr::V20181119::CarInvoiceOCRRequest`
        # @rtype: :class:`Tencentcloud::ocr::V20181119::CarInvoiceOCRResponse`
        def CarInvoiceOCR(request)
          body = send_request('CarInvoiceOCR', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CarInvoiceOCRResponse.new
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

        # 支持身份证、护照、名片、银行卡、行驶证、驾驶证、港澳台通行证、户口本、港澳台来往内地通行证、港澳台居住证、不动产证、营业执照的智能分类。

        # @param request: Request instance for ClassifyDetectOCR.
        # @type request: :class:`Tencentcloud::ocr::V20181119::ClassifyDetectOCRRequest`
        # @rtype: :class:`Tencentcloud::ocr::V20181119::ClassifyDetectOCRResponse`
        def ClassifyDetectOCR(request)
          body = send_request('ClassifyDetectOCR', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ClassifyDetectOCRResponse.new
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

        # 本接口支持驾驶证主页和副页所有字段的自动定位与识别，重点字段的识别准确度达到99%以上。

        # 驾驶证主页：包括证号、姓名、性别、国籍、住址、出生日期、初次领证日期、准驾车型、有效期限、发证单位

        # 驾驶证副页：包括证号、姓名、档案编号、记录。

        # 另外，本接口还支持复印件、翻拍和PS告警功能。同时支持识别交管12123APP发放的电子驾驶证正页。

        # 电子驾驶证正页：包括证号、姓名、性别、国籍、出生日期、初次领证日期、准驾车型、有效期开始时间、有效期截止时间、档案编号、状态、累积记分。

        # @param request: Request instance for DriverLicenseOCR.
        # @type request: :class:`Tencentcloud::ocr::V20181119::DriverLicenseOCRRequest`
        # @rtype: :class:`Tencentcloud::ocr::V20181119::DriverLicenseOCRResponse`
        def DriverLicenseOCR(request)
          body = send_request('DriverLicenseOCR', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DriverLicenseOCRResponse.new
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

        # 本接口支持对完税证明的税号、纳税人识别号、纳税人名称、金额合计大写、金额合计小写、填发日期、税务机关、填票人等关键字段的识别。

        # @param request: Request instance for DutyPaidProofOCR.
        # @type request: :class:`Tencentcloud::ocr::V20181119::DutyPaidProofOCRRequest`
        # @rtype: :class:`Tencentcloud::ocr::V20181119::DutyPaidProofOCRResponse`
        def DutyPaidProofOCR(request)
          body = send_request('DutyPaidProofOCR', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DutyPaidProofOCRResponse.new
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

        # 本接口支持数学试题内容的识别和结构化输出，包括通用文本解析和小学/初中/高中数学公式解析能力（包括91种题型，180种符号），公式返回格式为 Latex 格式文本。

        # @param request: Request instance for EduPaperOCR.
        # @type request: :class:`Tencentcloud::ocr::V20181119::EduPaperOCRRequest`
        # @rtype: :class:`Tencentcloud::ocr::V20181119::EduPaperOCRResponse`
        def EduPaperOCR(request)
          body = send_request('EduPaperOCR', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = EduPaperOCRResponse.new
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

        # 本接口支持图像英文文字的检测和识别，返回文字框位置与文字内容。支持多场景、任意版面下的英文、字母、数字和常见字符的识别，同时覆盖英文印刷体和英文手写体识别。

        # @param request: Request instance for EnglishOCR.
        # @type request: :class:`Tencentcloud::ocr::V20181119::EnglishOCRRequest`
        # @rtype: :class:`Tencentcloud::ocr::V20181119::EnglishOCRResponse`
        def EnglishOCR(request)
          body = send_request('EnglishOCR', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = EnglishOCRResponse.new
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

        # 本接口支持智能化识别各类企业登记证书、许可证书、企业执照、三证合一类证书，结构化输出统一社会信用代码、公司名称、法定代表人、公司地址、注册资金、企业类型、经营范围等关键字段。

        # @param request: Request instance for EnterpriseLicenseOCR.
        # @type request: :class:`Tencentcloud::ocr::V20181119::EnterpriseLicenseOCRRequest`
        # @rtype: :class:`Tencentcloud::ocr::V20181119::EnterpriseLicenseOCRResponse`
        def EnterpriseLicenseOCR(request)
          body = send_request('EnterpriseLicenseOCR', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = EnterpriseLicenseOCRResponse.new
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

        # 本接口支持不动产权证关键字段的识别，包括使用期限、面积、用途、权利性质、权利类型、坐落、共有情况、权利人、权利其他状况等。



        # @param request: Request instance for EstateCertOCR.
        # @type request: :class:`Tencentcloud::ocr::V20181119::EstateCertOCRRequest`
        # @rtype: :class:`Tencentcloud::ocr::V20181119::EstateCertOCRResponse`
        def EstateCertOCR(request)
          body = send_request('EstateCertOCR', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = EstateCertOCRResponse.new
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

        # 本接口支持常见银行票据的自动分类和识别。整单识别包括支票（含现金支票、普通支票、转账支票），承兑汇票（含银行承兑汇票、商业承兑汇票）以及进账单等，适用于中国人民银行印发的 2010 版银行票据凭证版式（银发[2010]299 号）。

        # @param request: Request instance for FinanBillOCR.
        # @type request: :class:`Tencentcloud::ocr::V20181119::FinanBillOCRRequest`
        # @rtype: :class:`Tencentcloud::ocr::V20181119::FinanBillOCRResponse`
        def FinanBillOCR(request)
          body = send_request('FinanBillOCR', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = FinanBillOCRResponse.new
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

        # 本接口支持常见银行票据的自动分类和识别。切片识别包括金融行业常见票据的重要切片字段识别，包括金额、账号、日期、凭证号码等。（金融票据切片：金融票据中待识别字段及其周围局部区域的裁剪图像。）

        # @param request: Request instance for FinanBillSliceOCR.
        # @type request: :class:`Tencentcloud::ocr::V20181119::FinanBillSliceOCRRequest`
        # @rtype: :class:`Tencentcloud::ocr::V20181119::FinanBillSliceOCRResponse`
        def FinanBillSliceOCR(request)
          body = send_request('FinanBillSliceOCR', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = FinanBillSliceOCRResponse.new
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

        # 本接口支持机票行程单关键字段的识别，包括旅客姓名、有效身份证件号码、电子客票号码、验证码、填开单位、其他税费、燃油附加费、民航发展基金、保险费、销售单位代号、始发地、目的地、航班号、时间、日期、座位等级、承运人、发票消费类型、票价、合计金额、填开日期、国内国际标签、印刷序号、客票级别/类别、客票生效日期、有效期截止日期、免费行李等字段，支持航班信息多行明细输出。

        # @param request: Request instance for FlightInvoiceOCR.
        # @type request: :class:`Tencentcloud::ocr::V20181119::FlightInvoiceOCRRequest`
        # @rtype: :class:`Tencentcloud::ocr::V20181119::FlightInvoiceOCRResponse`
        def FlightInvoiceOCR(request)
          body = send_request('FlightInvoiceOCR', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = FlightInvoiceOCRResponse.new
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

        # 本接口支持识别主流初高中数学符号和公式，返回公式的 Latex 格式文本。

        # @param request: Request instance for FormulaOCR.
        # @type request: :class:`Tencentcloud::ocr::V20181119::FormulaOCRRequest`
        # @rtype: :class:`Tencentcloud::ocr::V20181119::FormulaOCRResponse`
        def FormulaOCR(request)
          body = send_request('FormulaOCR', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = FormulaOCRResponse.new
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

        # 本接口支持图像整体文字的检测和识别。支持中文、英文、中英文、数字和特殊字符号的识别，并返回文字框位置和文字内容。

        # 适用于文字较多、版式复杂、对识别准召率要求较高的场景，如试卷试题、网络图片、街景店招牌、法律卷宗等场景。

        # 产品优势：与通用印刷体识别相比，提供更高精度的文字识别服务，在文字较多、长串数字、小字、模糊字、倾斜文本等困难场景下，高精度版的准确率和召回率更高。

        # 通用印刷体识别不同版本的差异如下：
        # <table style="width:715px">
        #       <thead>
        #         <tr>
        #           <th style="width:150px"></th>
        #           <th >【荐】通用印刷体识别（高精度版）</th>
        #           <th style="width:200px"><a href="https://cloud.tencent.com/document/product/866/33526">【荐】通用印刷体识别</a></th>
        #           <th><a href="https://cloud.tencent.com/document/product/866/37831">通用印刷体识别（精简版）</a></th>
        #         </tr>
        #       </thead>
        #       <tbody>
        #         <tr>
        #           <td> 适用场景</td>
        #           <td>适用于文字较多、长串数字、小字、模糊字、倾斜文本等困难场景</td>
        #           <td>适用于所有通用场景的印刷体识别</td>
        #           <td>适用于快速文本识别场景，准召率有一定损失，价格更优惠</td>
        #         </tr>
        #         <tr>
        #           <td>识别准确率</td>
        #           <td>99%</td>
        #           <td>96%</td>
        #           <td>91%</td>
        #         </tr>
        #         <tr>
        #           <td>价格</td>
        #           <td>高</td>
        #           <td>中</td>
        #           <td>低</td>
        #         </tr>
        #         <tr>
        #           <td>支持的语言</td>
        #           <td>中文、英文、中英文</td>
        #           <td>中文、英文、中英文、日语、韩语、西班牙语、法语、德语、葡萄牙语、越南语、马来语、俄语、意大利语、荷兰语、瑞典语、芬兰语、丹麦语、挪威语、匈牙利语、泰语</td>
        #           <td>中文、英文、中英文</td>
        #         </tr>
        #         <tr>
        #           <td>自动语言检测</td>
        #           <td>支持</td>
        #           <td>支持</td>
        #           <td>支持</td>
        #         </tr>
        #         <tr>
        #           <td>返回文本行坐标</td>
        #           <td>支持</td>
        #           <td>支持</td>
        #           <td>支持</td>
        #         </tr>
        #         <tr>
        #           <td>自动旋转纠正</td>
        #           <td>支持旋转识别，返回角度信息</td>
        #           <td>支持旋转识别，返回角度信息</td>
        #           <td>支持旋转识别，返回角度信息</td>
        #         </tr>
        #       </tbody>
        #     </table>

        # @param request: Request instance for GeneralAccurateOCR.
        # @type request: :class:`Tencentcloud::ocr::V20181119::GeneralAccurateOCRRequest`
        # @rtype: :class:`Tencentcloud::ocr::V20181119::GeneralAccurateOCRResponse`
        def GeneralAccurateOCR(request)
          body = send_request('GeneralAccurateOCR', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GeneralAccurateOCRResponse.new
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

        # 本接口支持图像整体文字的检测和识别。可以识别中文、英文、中英文、日语、韩语、西班牙语、法语、德语、葡萄牙语、越南语、马来语、俄语、意大利语、荷兰语、瑞典语、芬兰语、丹麦语、挪威语、匈牙利语、泰语，阿拉伯语20种语言，且各种语言均支持与英文混合的文字识别。

        # 适用于印刷文档识别、网络图片识别、广告图文字识别、街景店招牌识别、菜单识别、视频标题识别、头像文字识别等场景。

        # 产品优势：支持自动识别语言类型，可返回文本框坐标信息，对于倾斜文本支持自动旋转纠正。

        # 通用印刷体识别不同版本的差异如下：
        # <table style="width:715px">
        #       <thead>
        #         <tr>
        #           <th style="width:150px"></th>
        #           <th style="width:200px">【荐】通用印刷体识别</th>
        #           <th ><a href="https://cloud.tencent.com/document/product/866/34937">【荐】通用印刷体识别（高精度版）</a></th>
        #           <th><a href="https://cloud.tencent.com/document/product/866/37831">通用印刷体识别（精简版）</a></th>
        #         </tr>
        #       </thead>
        #       <tbody>
        #         <tr>
        #           <td> 适用场景</td>
        #           <td>适用于所有通用场景的印刷体识别</td>
        #           <td>适用于文字较多、长串数字、小字、模糊字、倾斜文本等困难场景</td>
        #           <td>适用于快速文本识别场景，准召率有一定损失，价格更优惠</td>
        #         </tr>
        #         <tr>
        #           <td>识别准确率</td>
        #           <td>96%</td>
        #           <td>99%</td>
        #           <td>91%</td>
        #         </tr>
        #         <tr>
        #           <td>价格</td>
        #           <td>中</td>
        #           <td>高</td>
        #           <td>低</td>
        #         </tr>
        #         <tr>
        #           <td>支持的语言</td>
        #           <td>中文、英文、中英文、日语、韩语、西班牙语、法语、德语、葡萄牙语、越南语、马来语、俄语、意大利语、荷兰语、瑞典语、芬兰语、丹麦语、挪威语、匈牙利语、泰语</td>
        #           <td>中文、英文、中英文</td>
        #           <td>中文、英文、中英文</td>
        #         </tr>
        #         <tr>
        #           <td>自动语言检测</td>
        #           <td>支持</td>
        #           <td>支持</td>
        #           <td>支持</td>
        #         </tr>
        #         <tr>
        #           <td>返回文本行坐标</td>
        #           <td>支持</td>
        #           <td>支持</td>
        #           <td>支持</td>
        #         </tr>
        #         <tr>
        #           <td>自动旋转纠正</td>
        #           <td>支持旋转识别，返回角度信息</td>
        #           <td>支持旋转识别，返回角度信息</td>
        #           <td>支持旋转识别，返回角度信息</td>
        #         </tr>
        #       </tbody>
        #     </table>

        # @param request: Request instance for GeneralBasicOCR.
        # @type request: :class:`Tencentcloud::ocr::V20181119::GeneralBasicOCRRequest`
        # @rtype: :class:`Tencentcloud::ocr::V20181119::GeneralBasicOCRResponse`
        def GeneralBasicOCR(request)
          body = send_request('GeneralBasicOCR', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GeneralBasicOCRResponse.new
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

        # 本接口支持图像整体文字的检测和识别。支持中文、英文、中英文、数字和特殊字符号的识别，并返回文字框位置和文字内容。

        # 适用于快速文本识别场景。

        # 产品优势：与通用印刷体识别接口相比，精简版虽然在准确率和召回率上有一定损失，但价格更加优惠。

        # 通用印刷体识别不同版本的差异如下：
        # <table style="width:715px">
        #       <thead>
        #         <tr>
        #           <th style="width:150px"></th>
        #           <th >通用印刷体识别（精简版）</th>
        #           <th style="width:200px"><a href="https://cloud.tencent.com/document/product/866/33526">【荐】通用印刷体识别</a></th>
        #           <th><a href="https://cloud.tencent.com/document/product/866/34937">【荐】通用印刷体识别（高精度版）</a></th>
        #         </tr>
        #       </thead>
        #       <tbody>
        #         <tr>
        #           <td> 适用场景</td>
        #           <td>适用于快速文本识别场景，准召率有一定损失，价格更优惠</td>
        #           <td>适用于所有通用场景的印刷体识别</td>
        #           <td>适用于文字较多、长串数字、小字、模糊字、倾斜文本等困难场景</td>


        #         </tr>
        #         <tr>
        #           <td>识别准确率</td>
        #           <td>91%</td>
        #           <td>96%</td>
        #           <td>99%</td>


        #         </tr>
        #         <tr>
        #           <td>价格</td>
        #           <td>低</td>
        #           <td>中</td>
        #           <td>高</td>


        #         </tr>
        #         <tr>
        #           <td>支持的语言</td>
        #           <td>中文、英文、中英文</td>
        #           <td>中文、英文、中英文、日语、韩语、西班牙语、法语、德语、葡萄牙语、越南语、马来语、俄语、意大利语、荷兰语、瑞典语、芬兰语、丹麦语、挪威语、匈牙利语、泰语</td>
        #           <td>中文、英文、中英文</td>


        #         </tr>
        #         <tr>
        #           <td>自动语言检测</td>
        #           <td>支持</td>
        #           <td>支持</td>
        #           <td>支持</td>


        #         </tr>
        #         <tr>
        #           <td>返回文本行坐标</td>
        #           <td>支持</td>
        #           <td>支持</td>
        #           <td>支持</td>


        #         </tr>
        #         <tr>
        #           <td>自动旋转纠正</td>
        #           <td>支持旋转识别，返回角度信息</td>
        #           <td>支持旋转识别，返回角度信息</td>
        #           <td>支持旋转识别，返回角度信息</td>


        #         </tr>
        #       </tbody>
        #     </table>

        # @param request: Request instance for GeneralEfficientOCR.
        # @type request: :class:`Tencentcloud::ocr::V20181119::GeneralEfficientOCRRequest`
        # @rtype: :class:`Tencentcloud::ocr::V20181119::GeneralEfficientOCRResponse`
        def GeneralEfficientOCR(request)
          body = send_request('GeneralEfficientOCR', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GeneralEfficientOCRResponse.new
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

        # 本接口支持图片中整体文字的检测和识别，返回文字框位置与文字内容。相比通用印刷体识别接口，识别速度更快。

        # @param request: Request instance for GeneralFastOCR.
        # @type request: :class:`Tencentcloud::ocr::V20181119::GeneralFastOCRRequest`
        # @rtype: :class:`Tencentcloud::ocr::V20181119::GeneralFastOCRResponse`
        def GeneralFastOCR(request)
          body = send_request('GeneralFastOCR', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GeneralFastOCRResponse.new
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

        # 本接口支持图片内手写体文字的检测和识别，针对手写字体无规则、字迹潦草、模糊等特点进行了识别能力的增强。

        # @param request: Request instance for GeneralHandwritingOCR.
        # @type request: :class:`Tencentcloud::ocr::V20181119::GeneralHandwritingOCRRequest`
        # @rtype: :class:`Tencentcloud::ocr::V20181119::GeneralHandwritingOCRResponse`
        def GeneralHandwritingOCR(request)
          body = send_request('GeneralHandwritingOCR', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GeneralHandwritingOCRResponse.new
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

        # 本接口支持中国香港身份证人像面中关键字段的识别，包括中文姓名、英文姓名、姓名电码、出生日期、性别、证件符号、首次签发日期、最近领用日期、身份证号、是否是永久性居民身份证；具备防伪识别、人像照片裁剪等扩展功能。
        # 本接口暂未完全对外开放，如需咨询，请[联系商务](https://cloud.tencent.com/about/connect)

        # @param request: Request instance for HKIDCardOCR.
        # @type request: :class:`Tencentcloud::ocr::V20181119::HKIDCardOCRRequest`
        # @rtype: :class:`Tencentcloud::ocr::V20181119::HKIDCardOCRResponse`
        def HKIDCardOCR(request)
          body = send_request('HKIDCardOCR', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = HKIDCardOCRResponse.new
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

        # 港澳台居住证OCR支持港澳台居住证正反面全字段内容检测识别功能，包括姓名、性别、出生日期、地址、身份证ID、签发机关、有效期限、签发次数、通行证号码关键字段识别。可以应用于港澳台居住证信息有效性校验场景，例如银行开户、用户注册等场景。

        # @param request: Request instance for HmtResidentPermitOCR.
        # @type request: :class:`Tencentcloud::ocr::V20181119::HmtResidentPermitOCRRequest`
        # @rtype: :class:`Tencentcloud::ocr::V20181119::HmtResidentPermitOCRResponse`
        def HmtResidentPermitOCR(request)
          body = send_request('HmtResidentPermitOCR', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = HmtResidentPermitOCRResponse.new
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

        # 本接口支持中国大陆居民二代身份证正反面所有字段的识别，包括姓名、性别、民族、出生日期、住址、公民身份证号、签发机关、有效期限，识别准确度达到99%以上。

        # 另外，本接口还支持多种增值能力，满足不同场景的需求。如身份证照片、人像照片的裁剪功能，同时具备9种告警功能，如下表所示。

        # <table style="width:650px">
        #       <thead>
        #         <tr>
        #        <th width="150">增值能力</th>
        #           <th width="500">能力项</th>
        #         </tr>
        #       </thead>
        #       <tbody>
        #         <tr>
        #           <td rowspan="2">裁剪功能</td>
        #           <td>身份证照片裁剪（去掉证件外多余的边缘、自动矫正拍摄角度）</td>
        #         </tr>
        #         <tr>
        #           <td>人像照片裁剪（自动抠取身份证头像区域）</td>
        #         </tr>
        #         <tr>
        #           <td rowspan="9">告警功能</td>
        #           <td>身份证有效日期不合法告警</td>
        #         </tr>
        #         <tr>
        #           <td>身份证边框不完整告警</td>
        #         </tr>
        #         <tr>
        #           <td>身份证复印件告警</td>
        #         </tr>
        #         <tr>
        #           <td>身份证翻拍告警</td>
        #         </tr>
        #           <tr>
        #           <td>身份证框内遮挡告警</td>
        #         </tr>
        #          <tr>
        #           <td>临时身份证告警</td>
        #         </tr>
        #           <tr>
        #           <td>身份证 PS 告警</td>
        #         </tr>
        #           <tr>
        #           <td>图片模糊告警（可根据图片质量分数判断）</td>
        #         </tr>
        #       </tbody>
        #     </table>

        # @param request: Request instance for IDCardOCR.
        # @type request: :class:`Tencentcloud::ocr::V20181119::IDCardOCRRequest`
        # @rtype: :class:`Tencentcloud::ocr::V20181119::IDCardOCRResponse`
        def IDCardOCR(request)
          body = send_request('IDCardOCR', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = IDCardOCRResponse.new
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

        # 本接口支持事业单位法人证书关键字段识别，包括注册号、有效期、住所、名称、法定代表人等。

        # @param request: Request instance for InstitutionOCR.
        # @type request: :class:`Tencentcloud::ocr::V20181119::InstitutionOCRRequest`
        # @rtype: :class:`Tencentcloud::ocr::V20181119::InstitutionOCRResponse`
        def InstitutionOCR(request)
          body = send_request('InstitutionOCR', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = InstitutionOCRResponse.new
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

        # 本接口支持病案首页、费用清单、结算单、医疗发票四种保险理赔单据的文本识别和结构化输出。

        # @param request: Request instance for InsuranceBillOCR.
        # @type request: :class:`Tencentcloud::ocr::V20181119::InsuranceBillOCRRequest`
        # @rtype: :class:`Tencentcloud::ocr::V20181119::InsuranceBillOCRResponse`
        def InsuranceBillOCR(request)
          body = send_request('InsuranceBillOCR', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = InsuranceBillOCRResponse.new
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

        # 本接口支持对通用机打发票的发票代码、发票号码、日期、购买方识别号、销售方识别号、校验码、小写金额等关键字段的识别。

        # @param request: Request instance for InvoiceGeneralOCR.
        # @type request: :class:`Tencentcloud::ocr::V20181119::InvoiceGeneralOCRRequest`
        # @rtype: :class:`Tencentcloud::ocr::V20181119::InvoiceGeneralOCRResponse`
        def InvoiceGeneralOCR(request)
          body = send_request('InvoiceGeneralOCR', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = InvoiceGeneralOCRResponse.new
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

        # 本接口支持对中国大陆机动车车牌的自动定位和识别，返回地域编号和车牌号码与车牌颜色信息。

        # @param request: Request instance for LicensePlateOCR.
        # @type request: :class:`Tencentcloud::ocr::V20181119::LicensePlateOCRRequest`
        # @rtype: :class:`Tencentcloud::ocr::V20181119::LicensePlateOCRResponse`
        def LicensePlateOCR(request)
          body = send_request('LicensePlateOCR', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = LicensePlateOCRResponse.new
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

        # 本接口支持马来西亚身份证识别，识别字段包括身份证号、姓名、性别、地址；具备身份证人像照片的裁剪功能和翻拍、复印件告警功能。
        # 本接口暂未完全对外开放，如需咨询，请[联系商务](https://cloud.tencent.com/about/connect)

        # @param request: Request instance for MLIDCardOCR.
        # @type request: :class:`Tencentcloud::ocr::V20181119::MLIDCardOCRRequest`
        # @rtype: :class:`Tencentcloud::ocr::V20181119::MLIDCardOCRResponse`
        def MLIDCardOCR(request)
          body = send_request('MLIDCardOCR', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = MLIDCardOCRResponse.new
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

        # 本接口支持中国港澳台地区以及其他国家、地区的护照识别。识别字段包括护照ID、姓名、出生日期、性别、有效期、发行国、国籍，具备护照人像照片的裁剪功能和翻拍、复印件告警功能。

        # @param request: Request instance for MLIDPassportOCR.
        # @type request: :class:`Tencentcloud::ocr::V20181119::MLIDPassportOCRRequest`
        # @rtype: :class:`Tencentcloud::ocr::V20181119::MLIDPassportOCRResponse`
        def MLIDPassportOCR(request)
          body = send_request('MLIDPassportOCR', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = MLIDPassportOCRResponse.new
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

        # 智能识别并结构化港澳台居民来往内地通行证正面全部字段，包含中文姓名、英文姓名、性别、出生日期、签发机关、有效期限、证件号、签发地点、签发次数、证件类别。

        # @param request: Request instance for MainlandPermitOCR.
        # @type request: :class:`Tencentcloud::ocr::V20181119::MainlandPermitOCRRequest`
        # @rtype: :class:`Tencentcloud::ocr::V20181119::MainlandPermitOCRResponse`
        def MainlandPermitOCR(request)
          body = send_request('MainlandPermitOCR', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = MainlandPermitOCRResponse.new
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

        # 本接口支持多张、多类型票据的混合检测和自动分类，返回对应票据类型。目前已支持增值税发票、增值税发票（卷票）、定额发票、通用机打发票、购车发票、火车票、出租车发票、机票行程单、汽车票、轮船票、过路过桥费发票、酒店账单、客运限额发票、购物小票、完税证明共15种票据。

        # @param request: Request instance for MixedInvoiceDetect.
        # @type request: :class:`Tencentcloud::ocr::V20181119::MixedInvoiceDetectRequest`
        # @rtype: :class:`Tencentcloud::ocr::V20181119::MixedInvoiceDetectResponse`
        def MixedInvoiceDetect(request)
          body = send_request('MixedInvoiceDetect', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = MixedInvoiceDetectResponse.new
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

        # 本接口支持多张、多类型票据的混合识别，系统自动实现分割、分类和识别，同时支持自选需要识别的票据类型。目前已支持增值税发票、增值税发票（卷票）、定额发票、通用机打发票、购车发票、火车票、出租车发票、机票行程单、汽车票、轮船票、过路过桥费发票共11种票据。

        # @param request: Request instance for MixedInvoiceOCR.
        # @type request: :class:`Tencentcloud::ocr::V20181119::MixedInvoiceOCRRequest`
        # @rtype: :class:`Tencentcloud::ocr::V20181119::MixedInvoiceOCRResponse`
        def MixedInvoiceOCR(request)
          body = send_request('MixedInvoiceOCR', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = MixedInvoiceOCRResponse.new
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

        # 本接口支持组织机构代码证关键字段的识别，包括代码、有效期、地址、机构名称等。

        # @param request: Request instance for OrgCodeCertOCR.
        # @type request: :class:`Tencentcloud::ocr::V20181119::OrgCodeCertOCRRequest`
        # @rtype: :class:`Tencentcloud::ocr::V20181119::OrgCodeCertOCRResponse`
        def OrgCodeCertOCR(request)
          body = send_request('OrgCodeCertOCR', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = OrgCodeCertOCRResponse.new
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

        # 本接口支持中国大陆地区护照个人资料页多个字段的检测与识别。已支持字段包括英文姓名、中文姓名、国家码、护照号、出生地、出生日期、国籍英文、性别英文、有效期、签发地点英文、签发日期、持证人签名、护照机读码（MRZ码）等。

        # @param request: Request instance for PassportOCR.
        # @type request: :class:`Tencentcloud::ocr::V20181119::PassportOCRRequest`
        # @rtype: :class:`Tencentcloud::ocr::V20181119::PassportOCRResponse`
        def PassportOCR(request)
          body = send_request('PassportOCR', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = PassportOCRResponse.new
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

        # 本接口支持对卡式港澳台通行证的识别，包括签发地点、签发机关、有效期限、性别、出生日期、英文姓名、姓名、证件号等字段。

        # @param request: Request instance for PermitOCR.
        # @type request: :class:`Tencentcloud::ocr::V20181119::PermitOCRRequest`
        # @rtype: :class:`Tencentcloud::ocr::V20181119::PermitOCRResponse`
        def PermitOCR(request)
          body = send_request('PermitOCR', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = PermitOCRResponse.new
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

        # 本接口支持房产证关键字段的识别，包括房地产权利人、共有情况、登记时间、规划用途、房屋性质、房屋坐落等。
        # 目前接口对合肥、成都、佛山三个城市的房产证版式识别较好。

        # @param request: Request instance for PropOwnerCertOCR.
        # @type request: :class:`Tencentcloud::ocr::V20181119::PropOwnerCertOCRRequest`
        # @rtype: :class:`Tencentcloud::ocr::V20181119::PropOwnerCertOCRResponse`
        def PropOwnerCertOCR(request)
          body = send_request('PropOwnerCertOCR', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = PropOwnerCertOCRResponse.new
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

        # 本接口支持条形码和二维码的识别（包括 DataMatrix 和 PDF417）。

        # @param request: Request instance for QrcodeOCR.
        # @type request: :class:`Tencentcloud::ocr::V20181119::QrcodeOCRRequest`
        # @rtype: :class:`Tencentcloud::ocr::V20181119::QrcodeOCRResponse`
        def QrcodeOCR(request)
          body = send_request('QrcodeOCR', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QrcodeOCRResponse.new
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

        # 本接口支持条形码备案信息查询，返回条形码查询结果的相关信息，包括产品名称、产品英文名称、品牌名称、规格型号、宽度、高度、深度、关键字、产品描述、厂家名称、厂家地址、企业社会信用代码13个字段信息。

        # 产品优势：直联中国物品编码中心，查询结果更加准确、可靠。

        # @param request: Request instance for QueryBarCode.
        # @type request: :class:`Tencentcloud::ocr::V20181119::QueryBarCodeRequest`
        # @rtype: :class:`Tencentcloud::ocr::V20181119::QueryBarCodeResponse`
        def QueryBarCode(request)
          body = send_request('QueryBarCode', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryBarCodeResponse.new
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

        # 本接口支持定额发票的发票号码、发票代码、金额(大小写)、发票消费类型、地区及是否有公司印章等关键字段的识别。

        # @param request: Request instance for QuotaInvoiceOCR.
        # @type request: :class:`Tencentcloud::ocr::V20181119::QuotaInvoiceOCRRequest`
        # @rtype: :class:`Tencentcloud::ocr::V20181119::QuotaInvoiceOCRResponse`
        def QuotaInvoiceOCR(request)
          body = send_request('QuotaInvoiceOCR', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QuotaInvoiceOCRResponse.new
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

        # 本接口支持集装箱箱门信息识别，识别字段包括集装箱箱号、类型、总重量、有效承重、容量、自身重量，具备集装箱箱号、类型不完整或者不清晰的告警功能。

        # @param request: Request instance for RecognizeContainerOCR.
        # @type request: :class:`Tencentcloud::ocr::V20181119::RecognizeContainerOCRRequest`
        # @rtype: :class:`Tencentcloud::ocr::V20181119::RecognizeContainerOCRResponse`
        def RecognizeContainerOCR(request)
          body = send_request('RecognizeContainerOCR', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RecognizeContainerOCRResponse.new
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

        # 本接口支持粤康码识别，包括姓名、更新时间、健康码颜色，三个字段的识别结果输出。

        # @param request: Request instance for RecognizeHealthCodeOCR.
        # @type request: :class:`Tencentcloud::ocr::V20181119::RecognizeHealthCodeOCRRequest`
        # @rtype: :class:`Tencentcloud::ocr::V20181119::RecognizeHealthCodeOCRResponse`
        def RecognizeHealthCodeOCR(request)
          body = send_request('RecognizeHealthCodeOCR', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RecognizeHealthCodeOCRResponse.new
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

        # 本接口支持网约车行程单关键字段的识别，包括行程起止日期、上车时间、起点、终点、里程、金额等字段。

        # @param request: Request instance for RecognizeOnlineTaxiItineraryOCR.
        # @type request: :class:`Tencentcloud::ocr::V20181119::RecognizeOnlineTaxiItineraryOCRRequest`
        # @rtype: :class:`Tencentcloud::ocr::V20181119::RecognizeOnlineTaxiItineraryOCRResponse`
        def RecognizeOnlineTaxiItineraryOCR(request)
          body = send_request('RecognizeOnlineTaxiItineraryOCR', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RecognizeOnlineTaxiItineraryOCRResponse.new
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

        # 本接口支持中英文图片/ PDF内常规表格、无线表格、多表格的检测和识别，支持日文有线表格识别，返回每个单元格的文字内容，支持旋转的表格图片识别，且支持将识别结果保存为 Excel 格式。

        # @param request: Request instance for RecognizeTableOCR.
        # @type request: :class:`Tencentcloud::ocr::V20181119::RecognizeTableOCRRequest`
        # @rtype: :class:`Tencentcloud::ocr::V20181119::RecognizeTableOCRResponse`
        def RecognizeTableOCR(request)
          body = send_request('RecognizeTableOCR', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RecognizeTableOCRResponse.new
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

        # 本接口支持泰国身份证识别，识别字段包括泰文姓名、英文姓名、地址、出生日期、身份证号码。
        # 本接口暂未完全对外开放，如需咨询，请[联系商务](https://cloud.tencent.com/about/connect)

        # @param request: Request instance for RecognizeThaiIDCardOCR.
        # @type request: :class:`Tencentcloud::ocr::V20181119::RecognizeThaiIDCardOCRRequest`
        # @rtype: :class:`Tencentcloud::ocr::V20181119::RecognizeThaiIDCardOCRResponse`
        def RecognizeThaiIDCardOCR(request)
          body = send_request('RecognizeThaiIDCardOCR', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RecognizeThaiIDCardOCRResponse.new
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

        # 本接口支持通信大数据行程卡识别，包括行程卡颜色、更新时间、途经地、存在中高风险地区的城市、电话号码，五个字段的识别结果输出。

        # @param request: Request instance for RecognizeTravelCardOCR.
        # @type request: :class:`Tencentcloud::ocr::V20181119::RecognizeTravelCardOCRRequest`
        # @rtype: :class:`Tencentcloud::ocr::V20181119::RecognizeTravelCardOCRResponse`
        def RecognizeTravelCardOCR(request)
          body = send_request('RecognizeTravelCardOCR', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RecognizeTravelCardOCRResponse.new
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

        # 本接口支持居民户口簿户主页及成员页关键字段的识别，包括姓名、户别、地址、籍贯、身份证号码等。

        # @param request: Request instance for ResidenceBookletOCR.
        # @type request: :class:`Tencentcloud::ocr::V20181119::ResidenceBookletOCRRequest`
        # @rtype: :class:`Tencentcloud::ocr::V20181119::ResidenceBookletOCRResponse`
        def ResidenceBookletOCR(request)
          body = send_request('ResidenceBookletOCR', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ResidenceBookletOCRResponse.new
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

        # 本接口支持网约车驾驶证关键字段的识别，包括姓名、证号、起始日期、截止日期、发证日期。

        # @param request: Request instance for RideHailingDriverLicenseOCR.
        # @type request: :class:`Tencentcloud::ocr::V20181119::RideHailingDriverLicenseOCRRequest`
        # @rtype: :class:`Tencentcloud::ocr::V20181119::RideHailingDriverLicenseOCRResponse`
        def RideHailingDriverLicenseOCR(request)
          body = send_request('RideHailingDriverLicenseOCR', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RideHailingDriverLicenseOCRResponse.new
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

        # 本接口支持网约车运输证关键字段的识别，包括交运管许可字号、车辆所有人、车辆号牌、起始日期、截止日期、发证日期。


        # @param request: Request instance for RideHailingTransportLicenseOCR.
        # @type request: :class:`Tencentcloud::ocr::V20181119::RideHailingTransportLicenseOCRRequest`
        # @rtype: :class:`Tencentcloud::ocr::V20181119::RideHailingTransportLicenseOCRResponse`
        def RideHailingTransportLicenseOCR(request)
          body = send_request('RideHailingTransportLicenseOCR', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RideHailingTransportLicenseOCRResponse.new
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

        # 印章识别已支持各类印章，包括发票章，财务章等，适用于公文，票据等场景。

        # @param request: Request instance for SealOCR.
        # @type request: :class:`Tencentcloud::ocr::V20181119::SealOCRRequest`
        # @rtype: :class:`Tencentcloud::ocr::V20181119::SealOCRResponse`
        def SealOCR(request)
          body = send_request('SealOCR', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SealOCRResponse.new
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

        # 本接口支持识别轮船票的发票代码、发票号码、日期、姓名、票价、始发地、目的地、姓名、时间、发票消费类型、省、市、币种字段。

        # @param request: Request instance for ShipInvoiceOCR.
        # @type request: :class:`Tencentcloud::ocr::V20181119::ShipInvoiceOCRRequest`
        # @rtype: :class:`Tencentcloud::ocr::V20181119::ShipInvoiceOCRResponse`
        def ShipInvoiceOCR(request)
          body = send_request('ShipInvoiceOCR', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ShipInvoiceOCRResponse.new
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

        # 本接口支持识别并提取各类证照、票据、表单、合同等结构化场景的字段信息。无需任何配置，灵活高效。适用于各类结构化信息录入场景。

        # @param request: Request instance for SmartStructuralOCR.
        # @type request: :class:`Tencentcloud::ocr::V20181119::SmartStructuralOCRRequest`
        # @rtype: :class:`Tencentcloud::ocr::V20181119::SmartStructuralOCRResponse`
        def SmartStructuralOCR(request)
          body = send_request('SmartStructuralOCR', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SmartStructuralOCRResponse.new
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

        # <b>此接口为表格识别的旧版本服务，不再进行服务升级，建议您使用识别能力更强、服务性能更优的<a href="https://cloud.tencent.com/document/product/866/49525">新版表格识别</a>。</b>

        # 本接口支持图片内表格文档的检测和识别，返回每个单元格的文字内容，支持将识别结果保存为 Excel 格式。


        # @param request: Request instance for TableOCR.
        # @type request: :class:`Tencentcloud::ocr::V20181119::TableOCRRequest`
        # @rtype: :class:`Tencentcloud::ocr::V20181119::TableOCRResponse`
        def TableOCR(request)
          body = send_request('TableOCR', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = TableOCRResponse.new
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

        # 本接口支持出租车发票关键字段的识别，包括发票号码、发票代码、金额、日期、上下车时间、里程、车牌号、发票类型及所属地区等字段。

        # @param request: Request instance for TaxiInvoiceOCR.
        # @type request: :class:`Tencentcloud::ocr::V20181119::TaxiInvoiceOCRRequest`
        # @rtype: :class:`Tencentcloud::ocr::V20181119::TaxiInvoiceOCRResponse`
        def TaxiInvoiceOCR(request)
          body = send_request('TaxiInvoiceOCR', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = TaxiInvoiceOCRResponse.new
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

        # 本接口通过检测图片中的文字信息特征，快速判断图片中有无文字并返回判断结果，帮助用户过滤无文字的图片。

        # @param request: Request instance for TextDetect.
        # @type request: :class:`Tencentcloud::ocr::V20181119::TextDetectRequest`
        # @rtype: :class:`Tencentcloud::ocr::V20181119::TextDetectResponse`
        def TextDetect(request)
          body = send_request('TextDetect', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = TextDetectResponse.new
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

        # 本接口支持对过路过桥费发票的发票代码、发票号码、日期、小写金额等关键字段的识别。

        # @param request: Request instance for TollInvoiceOCR.
        # @type request: :class:`Tencentcloud::ocr::V20181119::TollInvoiceOCRRequest`
        # @rtype: :class:`Tencentcloud::ocr::V20181119::TollInvoiceOCRResponse`
        def TollInvoiceOCR(request)
          body = send_request('TollInvoiceOCR', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = TollInvoiceOCRResponse.new
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

        # 本接口支持火车票全字段的识别，包括编号、票价、姓名、座位号、出发时间、出发站、到达站、车次、席别、发票类型及序列号等。

        # @param request: Request instance for TrainTicketOCR.
        # @type request: :class:`Tencentcloud::ocr::V20181119::TrainTicketOCRRequest`
        # @rtype: :class:`Tencentcloud::ocr::V20181119::TrainTicketOCRResponse`
        def TrainTicketOCR(request)
          body = send_request('TrainTicketOCR', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = TrainTicketOCRResponse.new
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

        # 本接口支持增值税专用发票、增值税普通发票、增值税电子发票全字段的内容检测和识别，包括发票代码、发票号码、打印发票代码、打印发票号码、开票日期、合计金额、校验码、税率、合计税额、价税合计、购买方识别号、复核、销售方识别号、开票人、密码区1、密码区2、密码区3、密码区4、发票名称、购买方名称、销售方名称、服务名称、备注、规格型号、数量、单价、金额、税额、收款人等字段。

        # @param request: Request instance for VatInvoiceOCR.
        # @type request: :class:`Tencentcloud::ocr::V20181119::VatInvoiceOCRRequest`
        # @rtype: :class:`Tencentcloud::ocr::V20181119::VatInvoiceOCRResponse`
        def VatInvoiceOCR(request)
          body = send_request('VatInvoiceOCR', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = VatInvoiceOCRResponse.new
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

        # 本接口支持增值税发票的准确性核验，您可以通过输入增值税发票的关键字段提供所需的验证信息，接口返回真实的票面相关信息，包括发票代码、发票号码、开票日期、金额、消费类型、购方名称、购方税号、销方名称、销方税号等多个常用字段。支持多种发票类型核验，包括增值税专用发票、增值税普通发票（含电子普通发票、卷式发票、通行费发票）、机动车销售统一发票、货物运输业增值税专用发票、二手车销售统一发票。

        # @param request: Request instance for VatInvoiceVerify.
        # @type request: :class:`Tencentcloud::ocr::V20181119::VatInvoiceVerifyRequest`
        # @rtype: :class:`Tencentcloud::ocr::V20181119::VatInvoiceVerifyResponse`
        def VatInvoiceVerify(request)
          body = send_request('VatInvoiceVerify', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = VatInvoiceVerifyResponse.new
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

        # 本接口支持对增值税发票（卷票）的发票代码、发票号码、日期、校验码、合计金额（小写）等关键字段的识别。

        # @param request: Request instance for VatRollInvoiceOCR.
        # @type request: :class:`Tencentcloud::ocr::V20181119::VatRollInvoiceOCRRequest`
        # @rtype: :class:`Tencentcloud::ocr::V20181119::VatRollInvoiceOCRResponse`
        def VatRollInvoiceOCR(request)
          body = send_request('VatRollInvoiceOCR', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = VatRollInvoiceOCRResponse.new
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

        # 本接口支持行驶证主页和副页所有字段的自动定位与识别。

        # 行驶证主页：车牌号码、车辆类型、所有人、住址、使用性质、品牌型号、识别代码、发动机号、注册日期、发证日期、发证单位。

        # 行驶证副页：号牌号码、档案编号、核定载人数、总质量、整备质量、核定载质量、外廓尺寸、准牵引总质量、备注、检验记录。

        # 另外，本接口还支持复印件、翻拍和PS告警功能。

        # @param request: Request instance for VehicleLicenseOCR.
        # @type request: :class:`Tencentcloud::ocr::V20181119::VehicleLicenseOCRRequest`
        # @rtype: :class:`Tencentcloud::ocr::V20181119::VehicleLicenseOCRResponse`
        def VehicleLicenseOCR(request)
          body = send_request('VehicleLicenseOCR', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = VehicleLicenseOCRResponse.new
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

        # 本接口支持国内机动车登记证书主要字段的结构化识别，包括机动车所有人、身份证明名称、号码、车辆型号、车辆识别代号、发动机号、制造厂名称等。

        # @param request: Request instance for VehicleRegCertOCR.
        # @type request: :class:`Tencentcloud::ocr::V20181119::VehicleRegCertOCRRequest`
        # @rtype: :class:`Tencentcloud::ocr::V20181119::VehicleRegCertOCRResponse`
        def VehicleRegCertOCR(request)
          body = send_request('VehicleRegCertOCR', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = VehicleRegCertOCRResponse.new
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

        # 本接口支持营业执照信息的识别与准确性核验。

        # 您可以通过输入营业执照注册号或营业执照图片（若两者都输入则只用注册号做查询）进行核验，接口返回查询到的工商照面信息，并比对要校验的字段与查询结果的一致性。查询到工商信息包括：统一社会信用代码、经营期限、法人姓名、经营状态、经营业务范围、注册资本等。

        # @param request: Request instance for VerifyBasicBizLicense.
        # @type request: :class:`Tencentcloud::ocr::V20181119::VerifyBasicBizLicenseRequest`
        # @rtype: :class:`Tencentcloud::ocr::V20181119::VerifyBasicBizLicenseResponse`
        def VerifyBasicBizLicense(request)
          body = send_request('VerifyBasicBizLicense', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = VerifyBasicBizLicenseResponse.new
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

        # 本接口支持营业执照信息的识别与准确性核验，返回的真实工商照面信息比营业执照识别及核验（基础版）接口更详细。

        # 您可以输入营业执照注册号或营业执照图片（若两者都输入则只用注册号做查询），接口返回查询到的工商照面信息，并比对要校验的字段与查询结果的一致性。

        # 查询到工商信息包括：统一社会信用代码、组织机构代码、经营期限、法人姓名、经营状态、经营业务范围及方式、注册资金、注册币种、登记机关、开业日期、企业（机构）类型、注销日期、吊销日期、许可经营项目、一般经营项目、核准时间、省、地级市、区/县、住所所在行政区划代码、行业门类代码、行业门类名称、国民经济行业代码、国民经济行业名称、经营（业务）范围等。

        # @param request: Request instance for VerifyBizLicense.
        # @type request: :class:`Tencentcloud::ocr::V20181119::VerifyBizLicenseRequest`
        # @rtype: :class:`Tencentcloud::ocr::V20181119::VerifyBizLicenseResponse`
        def VerifyBizLicense(request)
          body = send_request('VerifyBizLicense', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = VerifyBizLicenseResponse.new
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

        # 此接口基于企业四要素授权“姓名、证件号码、企业标识、企业全称”，验证企业信息是否一致。

        # @param request: Request instance for VerifyEnterpriseFourFactors.
        # @type request: :class:`Tencentcloud::ocr::V20181119::VerifyEnterpriseFourFactorsRequest`
        # @rtype: :class:`Tencentcloud::ocr::V20181119::VerifyEnterpriseFourFactorsResponse`
        def VerifyEnterpriseFourFactors(request)
          body = send_request('VerifyEnterpriseFourFactors', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = VerifyEnterpriseFourFactorsResponse.new
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

        # 本接口支持OFD格式的增值税电子普通发票和增值税电子专用发票的识别，返回发票代码、发票号码、开票日期、验证码、机器编号、密码区，购买方和销售方信息，包括名称、纳税人识别号、地址电话、开户行及账号，以及价税合计、开票人、收款人、复核人、税额、不含税金额等字段信息。

        # @param request: Request instance for VerifyOfdVatInvoiceOCR.
        # @type request: :class:`Tencentcloud::ocr::V20181119::VerifyOfdVatInvoiceOCRRequest`
        # @rtype: :class:`Tencentcloud::ocr::V20181119::VerifyOfdVatInvoiceOCRResponse`
        def VerifyOfdVatInvoiceOCR(request)
          body = send_request('VerifyOfdVatInvoiceOCR', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = VerifyOfdVatInvoiceOCRResponse.new
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

        # 本接口支持图片内车辆识别代号（VIN）的检测和识别。

        # @param request: Request instance for VinOCR.
        # @type request: :class:`Tencentcloud::ocr::V20181119::VinOCRRequest`
        # @rtype: :class:`Tencentcloud::ocr::V20181119::VinOCRResponse`
        def VinOCR(request)
          body = send_request('VinOCR', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = VinOCRResponse.new
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

        # 本接口支持市面上主流版式电子运单的识别，包括收件人和寄件人的姓名、电话、地址以及运单号等字段。

        # @param request: Request instance for WaybillOCR.
        # @type request: :class:`Tencentcloud::ocr::V20181119::WaybillOCRRequest`
        # @rtype: :class:`Tencentcloud::ocr::V20181119::WaybillOCRResponse`
        def WaybillOCR(request)
          body = send_request('WaybillOCR', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = WaybillOCRResponse.new
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