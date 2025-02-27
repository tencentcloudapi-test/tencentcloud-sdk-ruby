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
  module Tts
    module V20190823
      # CreateTtsTask请求参数结构体
      class CreateTtsTaskRequest < TencentCloud::Common::AbstractModel
        # @param Text: 合成语音的源文本，按UTF-8编码统一计算，最多支持10万字符
        # @type Text: String
        # @param ModelType: 模型类型，1-默认模型。
        # @type ModelType: Integer
        # @param Volume: 音量大小，范围：[0，10]，分别对应11个等级的音量，默认为0，代表正常音量。没有静音选项。
        # @type Volume: Float
        # @param Speed: 语速，范围：[-2，2]，分别对应不同语速：<li>-2代表0.6倍</li><li>-1代表0.8倍</li><li>0代表1.0倍（默认）</li><li>1代表1.2倍</li><li>2代表1.5倍</li>如果需要更细化的语速，可以保留小数点后一位，例如0.5 1.1 1.8等。<br>
        # @type Speed: Float
        # @param ProjectId: 项目id，用户自定义，默认为0。
        # @type ProjectId: Integer
        # @param VoiceType: 标准音色<li>10510000-智逍遥，旁对白阅读风格男声</li><li>1001-智瑜，情感女声</li><li>1002-智聆，通用女声</li><li>1003-智美，客服女声</li><li>1004-智云，通用男声</li><li>1005-智莉，通用女声</li><li>1007-智娜，客服女声</li><li>1008-智琪，客服女声</li><li>1009-智芸，知性女声</li><li>1010-智华，通用男声</li><li>1017-智蓉，情感女声</li><li>1018-智靖，情感男声</li><li>1050-WeJack，英文男声</li><li>1051-WeRose，英文女声</li>精品音色<br>精品音色拟真度更高，价格不同于标准音色，查看[购买指南](https://cloud.tencent.com/product/tts/pricing)<br><li>100510000-智逍遥，旁对白阅读风格男声（精品）</li><li>101001-智瑜，情感女声（精品）</li><li>101002-智聆，通用女声（精品）</li><li>101003-智美，客服女声（精品）</li><li>101004-智云，通用男声（精品）</li><li>101005-智莉，通用女声（精品）</li><li>101006-智言，助手女声</li><li>101007-智娜，客服女声（精品）</li><li>101008-智琪，客服女声（精品）</li><li>101009-智芸，知性女声（精品）</li><li>101010-智华，通用男声（精品）</li><li>101011-智燕，新闻女声</li><li>101012-智丹，新闻女声</li><li>101013-智辉，新闻男声</li><li>101014-智宁，新闻男声</li><li>101015-智萌，男童声</li><li>101016-智甜，女童声</li><li>101017-智蓉，情感女声（精品）</li><li>101018-智靖，情感男声（精品）</li><li>101019-智彤，粤语女声</li><li>101050-WeJack，英文男声（精品）</li><li>101051-WeRose，英文女声（精品）</li>
        # @type VoiceType: Integer
        # @param PrimaryLanguage: 主语言类型：<li>1-中文（默认）</li><li>2-英文</li>
        # @type PrimaryLanguage: Integer
        # @param SampleRate: 音频采样率：<li>16000：16k（默认）</li><li>8000：8k</li>
        # @type SampleRate: Integer
        # @param Codec: 返回音频格式，可取值：mp3（默认），wav，pcm
        # @type Codec: String
        # @param CallbackUrl: 回调 URL，用户自行搭建的用于接收识别结果的服务URL。如果用户使用轮询方式获取识别结果，则无需提交该参数。[回调说明](https://cloud.tencent.com/document/product/1073/55746)
        # @type CallbackUrl: String
        # @param VoiceoverDialogueSplit: 旁白与对白文本解析，分别合成相应风格（仅适用于旁对白音色），默认 false
        # @type VoiceoverDialogueSplit: Boolean

        attr_accessor :Text, :ModelType, :Volume, :Speed, :ProjectId, :VoiceType, :PrimaryLanguage, :SampleRate, :Codec, :CallbackUrl, :VoiceoverDialogueSplit
        
        def initialize(text=nil, modeltype=nil, volume=nil, speed=nil, projectid=nil, voicetype=nil, primarylanguage=nil, samplerate=nil, codec=nil, callbackurl=nil, voiceoverdialoguesplit=nil)
          @Text = text
          @ModelType = modeltype
          @Volume = volume
          @Speed = speed
          @ProjectId = projectid
          @VoiceType = voicetype
          @PrimaryLanguage = primarylanguage
          @SampleRate = samplerate
          @Codec = codec
          @CallbackUrl = callbackurl
          @VoiceoverDialogueSplit = voiceoverdialoguesplit
        end

        def deserialize(params)
          @Text = params['Text']
          @ModelType = params['ModelType']
          @Volume = params['Volume']
          @Speed = params['Speed']
          @ProjectId = params['ProjectId']
          @VoiceType = params['VoiceType']
          @PrimaryLanguage = params['PrimaryLanguage']
          @SampleRate = params['SampleRate']
          @Codec = params['Codec']
          @CallbackUrl = params['CallbackUrl']
          @VoiceoverDialogueSplit = params['VoiceoverDialogueSplit']
        end
      end

      # 异步合成请求的返回数据
      class CreateTtsTaskRespData < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID，可通过此ID在轮询接口获取合成状态与结果。注意：TaskId数据类型为string
        # @type TaskId: String

        attr_accessor :TaskId
        
        def initialize(taskid=nil)
          @TaskId = taskid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
        end
      end

      # CreateTtsTask返回参数结构体
      class CreateTtsTaskResponse < TencentCloud::Common::AbstractModel
        # @param Data: 任务 id
        # @type Data: :class:`Tencentcloud::Tts.v20190823.models.CreateTtsTaskRespData`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = CreateTtsTaskRespData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTtsTaskStatus请求参数结构体
      class DescribeTtsTaskStatusRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务id
        # @type TaskId: String

        attr_accessor :TaskId
        
        def initialize(taskid=nil)
          @TaskId = taskid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
        end
      end

      # 获取异步合成结果的返回参数
      class DescribeTtsTaskStatusRespData < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务标识。
        # @type TaskId: String
        # @param Status: 任务状态码，0：任务等待，1：任务执行中，2：任务成功，3：任务失败。
        # @type Status: Integer
        # @param StatusStr: 任务状态，waiting：任务等待，doing：任务执行中，success：任务成功，failed：任务失败。
        # @type StatusStr: String
        # @param ResultUrl: 合成音频COS地址（链接有效期1天）。
        # @type ResultUrl: String
        # @param ErrorMsg: 失败原因说明。
        # @type ErrorMsg: String

        attr_accessor :TaskId, :Status, :StatusStr, :ResultUrl, :ErrorMsg
        
        def initialize(taskid=nil, status=nil, statusstr=nil, resulturl=nil, errormsg=nil)
          @TaskId = taskid
          @Status = status
          @StatusStr = statusstr
          @ResultUrl = resulturl
          @ErrorMsg = errormsg
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @Status = params['Status']
          @StatusStr = params['StatusStr']
          @ResultUrl = params['ResultUrl']
          @ErrorMsg = params['ErrorMsg']
        end
      end

      # DescribeTtsTaskStatus返回参数结构体
      class DescribeTtsTaskStatusResponse < TencentCloud::Common::AbstractModel
        # @param Data: 任务状态返回
        # @type Data: :class:`Tencentcloud::Tts.v20190823.models.DescribeTtsTaskStatusRespData`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DescribeTtsTaskStatusRespData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # TextToVoice请求参数结构体
      class TextToVoiceRequest < TencentCloud::Common::AbstractModel
        # @param Text: 合成语音的源文本，按UTF-8编码统一计算。
        # 中文最大支持150个汉字（全角标点符号算一个汉字）；英文最大支持500个字母（半角标点符号算一个字母）。
        # @type Text: String
        # @param SessionId: 一次请求对应一个SessionId，会原样返回，建议传入类似于uuid的字符串防止重复。
        # @type SessionId: String
        # @param Volume: 音量大小，范围：[0，10]，分别对应11个等级的音量，默认为0，代表正常音量。没有静音选项。
        # @type Volume: Float
        # @param Speed: 语速，范围：[-2，2]，分别对应不同语速：<li>-2代表0.6倍</li><li>-1代表0.8倍</li><li>0代表1.0倍（默认）</li><li>1代表1.2倍</li><li>2代表1.5倍</li>如果需要更细化的语速，可以保留小数点后一位，例如0.5 1.1 1.8等。<br>
        # @type Speed: Float
        # @param ProjectId: 项目id，用户自定义，默认为0。
        # @type ProjectId: Integer
        # @param ModelType: 模型类型，1-默认模型。
        # @type ModelType: Integer
        # @param VoiceType: 标准音色<li>10510000-智逍遥，阅读男声</li><li>1001-智瑜，情感女声</li><li>1002-智聆，通用女声</li><li>1003-智美，客服女声</li><li>1004-智云，通用男声</li><li>1005-智莉，通用女声</li><li>1007-智娜，客服女声</li><li>1008-智琪，客服女声</li><li>1009-智芸，知性女声</li><li>1010-智华，通用男声</li><li>1017-智蓉，情感女声</li><li>1018-智靖，情感男声</li><li>1050-WeJack，英文男声</li><li>1051-WeRose，英文女声</li>精品音色<br>精品音色拟真度更高，价格不同于标准音色，查看[购买指南](https://cloud.tencent.com/product/tts/pricing)<br><li>100510000-智逍遥，阅读男声</li><li>101001-智瑜，情感女声</li><li>101002-智聆，通用女声</li><li>101003-智美，客服女声</li><li>101004-智云，通用男声</li><li>101005-智莉，通用女声</li><li>101006-智言，助手女声</li><li>101007-智娜，客服女声</li><li>101008-智琪，客服女声</li><li>101009-智芸，知性女声</li><li>101010-智华，通用男声</li><li>101011-智燕，新闻女声</li><li>101012-智丹，新闻女声</li><li>101013-智辉，新闻男声</li><li>101014-智宁，新闻男声</li><li>101015-智萌，男童声</li><li>101016-智甜，女童声</li><li>101017-智蓉，情感女声</li><li>101018-智靖，情感男声</li><li>101019-智彤，粤语女声</li><li>101020-智刚，新闻男声</li><li>101021-智瑞，新闻男声</li><li>101022-智虹，新闻女声</li><li>101023-智萱，聊天女声</li><li>101024-智皓，聊天男声</li><li>101025-智薇，聊天女声</li><li>101026-智希，通用女声</li><li>101027-智梅，通用女声</li><li>101028-智洁，通用女声</li><li>101029-智凯，通用男声</li><li>101030-智柯，通用男声</li><li>101031-智奎，通用男声</li><li>101032-智芳，通用女声</li><li>101033-智蓓，客服女声</li><li>101034-智莲，通用女声</li><li>101035-智依，通用女声</li><li>101040-智川，四川女声</li><li>101050-WeJack，英文男声</li><li>101051-WeRose，英文女声</li>
        # @type VoiceType: Integer
        # @param PrimaryLanguage: 主语言类型：<li>1-中文（默认）</li><li>2-英文</li>
        # @type PrimaryLanguage: Integer
        # @param SampleRate: 音频采样率：<li>16000：16k（默认）</li><li>8000：8k</li>
        # @type SampleRate: Integer
        # @param Codec: 返回音频格式，可取值：wav（默认），mp3，pcm
        # @type Codec: String

        attr_accessor :Text, :SessionId, :Volume, :Speed, :ProjectId, :ModelType, :VoiceType, :PrimaryLanguage, :SampleRate, :Codec
        
        def initialize(text=nil, sessionid=nil, volume=nil, speed=nil, projectid=nil, modeltype=nil, voicetype=nil, primarylanguage=nil, samplerate=nil, codec=nil)
          @Text = text
          @SessionId = sessionid
          @Volume = volume
          @Speed = speed
          @ProjectId = projectid
          @ModelType = modeltype
          @VoiceType = voicetype
          @PrimaryLanguage = primarylanguage
          @SampleRate = samplerate
          @Codec = codec
        end

        def deserialize(params)
          @Text = params['Text']
          @SessionId = params['SessionId']
          @Volume = params['Volume']
          @Speed = params['Speed']
          @ProjectId = params['ProjectId']
          @ModelType = params['ModelType']
          @VoiceType = params['VoiceType']
          @PrimaryLanguage = params['PrimaryLanguage']
          @SampleRate = params['SampleRate']
          @Codec = params['Codec']
        end
      end

      # TextToVoice返回参数结构体
      class TextToVoiceResponse < TencentCloud::Common::AbstractModel
        # @param Audio: base64编码的wav/mp3音频数据
        # @type Audio: String
        # @param SessionId: 一次请求对应一个SessionId
        # @type SessionId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Audio, :SessionId, :RequestId
        
        def initialize(audio=nil, sessionid=nil, requestid=nil)
          @Audio = audio
          @SessionId = sessionid
          @RequestId = requestid
        end

        def deserialize(params)
          @Audio = params['Audio']
          @SessionId = params['SessionId']
          @RequestId = params['RequestId']
        end
      end

    end
  end
end

