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
  module Organization
    module V20210331
      # BindOrganizationMemberAuthAccount请求参数结构体
      class BindOrganizationMemberAuthAccountRequest < TencentCloud::Common::AbstractModel
        # @param MemberUin: 成员Uin。
        # @type MemberUin: Integer
        # @param PolicyId: 策略ID。
        # @type PolicyId: Integer
        # @param OrgSubAccountUins: 组织子账号Uin。
        # @type OrgSubAccountUins: Array

        attr_accessor :MemberUin, :PolicyId, :OrgSubAccountUins
        
        def initialize(memberuin=nil, policyid=nil, orgsubaccountuins=nil)
          @MemberUin = memberuin
          @PolicyId = policyid
          @OrgSubAccountUins = orgsubaccountuins
        end

        def deserialize(params)
          @MemberUin = params['MemberUin']
          @PolicyId = params['PolicyId']
          @OrgSubAccountUins = params['OrgSubAccountUins']
        end
      end

      # BindOrganizationMemberAuthAccount返回参数结构体
      class BindOrganizationMemberAuthAccountResponse < TencentCloud::Common::AbstractModel
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

      # CreateOrganizationMember请求参数结构体
      class CreateOrganizationMemberRequest < TencentCloud::Common::AbstractModel
        # @param Name: 名称
        # @type Name: String
        # @param PolicyType: 关系策略  取值：Financial
        # @type PolicyType: String
        # @param PermissionIds: 关系权限 取值：1-查看账单、2-查看余额、3-资金划拨、4-合并出账、5-开票 ，1、2 默认必须
        # @type PermissionIds: Array
        # @param NodeId: 成员所属部门的节点ID
        # @type NodeId: Integer
        # @param AccountName: 账号名
        # @type AccountName: String
        # @param Remark: 备注
        # @type Remark: String
        # @param RecordId: 重试创建传记录ID
        # @type RecordId: Integer
        # @param PayUin: 代付者Uin
        # @type PayUin: String
        # @param IdentityRoleID: 管理身份
        # @type IdentityRoleID: Array

        attr_accessor :Name, :PolicyType, :PermissionIds, :NodeId, :AccountName, :Remark, :RecordId, :PayUin, :IdentityRoleID
        
        def initialize(name=nil, policytype=nil, permissionids=nil, nodeid=nil, accountname=nil, remark=nil, recordid=nil, payuin=nil, identityroleid=nil)
          @Name = name
          @PolicyType = policytype
          @PermissionIds = permissionids
          @NodeId = nodeid
          @AccountName = accountname
          @Remark = remark
          @RecordId = recordid
          @PayUin = payuin
          @IdentityRoleID = identityroleid
        end

        def deserialize(params)
          @Name = params['Name']
          @PolicyType = params['PolicyType']
          @PermissionIds = params['PermissionIds']
          @NodeId = params['NodeId']
          @AccountName = params['AccountName']
          @Remark = params['Remark']
          @RecordId = params['RecordId']
          @PayUin = params['PayUin']
          @IdentityRoleID = params['IdentityRoleID']
        end
      end

      # CreateOrganizationMember返回参数结构体
      class CreateOrganizationMemberResponse < TencentCloud::Common::AbstractModel
        # @param Uin: 成员Uin
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Uin: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Uin, :RequestId
        
        def initialize(uin=nil, requestid=nil)
          @Uin = uin
          @RequestId = requestid
        end

        def deserialize(params)
          @Uin = params['Uin']
          @RequestId = params['RequestId']
        end
      end

      # DescribeOrganizationMembers请求参数结构体
      class DescribeOrganizationMembersRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 限制数目
        # @type Limit: Integer
        # @param Lang: 国际站：en，国内站：zh
        # @type Lang: String
        # @param SearchKey: 成员名或者成员ID搜索
        # @type SearchKey: String

        attr_accessor :Offset, :Limit, :Lang, :SearchKey
        
        def initialize(offset=nil, limit=nil, lang=nil, searchkey=nil)
          @Offset = offset
          @Limit = limit
          @Lang = lang
          @SearchKey = searchkey
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Lang = params['Lang']
          @SearchKey = params['SearchKey']
        end
      end

      # DescribeOrganizationMembers返回参数结构体
      class DescribeOrganizationMembersResponse < TencentCloud::Common::AbstractModel
        # @param Items: 成员列表
        # @type Items: Array
        # @param Total: 总数目
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Items, :Total, :RequestId
        
        def initialize(items=nil, total=nil, requestid=nil)
          @Items = items
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              orgmember_tmp = OrgMember.new
              orgmember_tmp.deserialize(i)
              @Items << orgmember_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # DescribeOrganization请求参数结构体
      class DescribeOrganizationRequest < TencentCloud::Common::AbstractModel
        # @param Lang: 国际站：en，国内站：zh
        # @type Lang: String

        attr_accessor :Lang
        
        def initialize(lang=nil)
          @Lang = lang
        end

        def deserialize(params)
          @Lang = params['Lang']
        end
      end

      # DescribeOrganization返回参数结构体
      class DescribeOrganizationResponse < TencentCloud::Common::AbstractModel
        # @param OrgId: 企业组织ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrgId: Integer
        # @param HostUin: 创建者UIN
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HostUin: Integer
        # @param NickName: 创建者昵称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NickName: String
        # @param OrgType: 企业组织类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrgType: Integer
        # @param IsManager: 组织管理员：true，组织成员：false
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsManager: Boolean
        # @param OrgPolicyType: 策略类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrgPolicyType: String
        # @param OrgPolicyName: 策略名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrgPolicyName: String
        # @param OrgPermission: 策略权限
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrgPermission: Array
        # @param RootNodeId: 根节点ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RootNodeId: Integer
        # @param CreateTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param JoinTime: 成员加入时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type JoinTime: String
        # @param IsAllowQuit: 是否允许退出。允许：Allow，不允许：Denied。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsAllowQuit: String
        # @param PayUin: 代付者Uin
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PayUin: String
        # @param PayName: 代付者名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PayName: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :OrgId, :HostUin, :NickName, :OrgType, :IsManager, :OrgPolicyType, :OrgPolicyName, :OrgPermission, :RootNodeId, :CreateTime, :JoinTime, :IsAllowQuit, :PayUin, :PayName, :RequestId
        
        def initialize(orgid=nil, hostuin=nil, nickname=nil, orgtype=nil, ismanager=nil, orgpolicytype=nil, orgpolicyname=nil, orgpermission=nil, rootnodeid=nil, createtime=nil, jointime=nil, isallowquit=nil, payuin=nil, payname=nil, requestid=nil)
          @OrgId = orgid
          @HostUin = hostuin
          @NickName = nickname
          @OrgType = orgtype
          @IsManager = ismanager
          @OrgPolicyType = orgpolicytype
          @OrgPolicyName = orgpolicyname
          @OrgPermission = orgpermission
          @RootNodeId = rootnodeid
          @CreateTime = createtime
          @JoinTime = jointime
          @IsAllowQuit = isallowquit
          @PayUin = payuin
          @PayName = payname
          @RequestId = requestid
        end

        def deserialize(params)
          @OrgId = params['OrgId']
          @HostUin = params['HostUin']
          @NickName = params['NickName']
          @OrgType = params['OrgType']
          @IsManager = params['IsManager']
          @OrgPolicyType = params['OrgPolicyType']
          @OrgPolicyName = params['OrgPolicyName']
          unless params['OrgPermission'].nil?
            @OrgPermission = []
            params['OrgPermission'].each do |i|
              orgpermission_tmp = OrgPermission.new
              orgpermission_tmp.deserialize(i)
              @OrgPermission << orgpermission_tmp
            end
          end
          @RootNodeId = params['RootNodeId']
          @CreateTime = params['CreateTime']
          @JoinTime = params['JoinTime']
          @IsAllowQuit = params['IsAllowQuit']
          @PayUin = params['PayUin']
          @PayName = params['PayName']
          @RequestId = params['RequestId']
        end
      end

      # 成员管理身份
      class MemberIdentity < TencentCloud::Common::AbstractModel
        # @param IdentityId: 身份ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IdentityId: Integer
        # @param IdentityAliasName: 身份名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IdentityAliasName: String

        attr_accessor :IdentityId, :IdentityAliasName
        
        def initialize(identityid=nil, identityaliasname=nil)
          @IdentityId = identityid
          @IdentityAliasName = identityaliasname
        end

        def deserialize(params)
          @IdentityId = params['IdentityId']
          @IdentityAliasName = params['IdentityAliasName']
        end
      end

      # 企业组织成员
      class OrgMember < TencentCloud::Common::AbstractModel
        # @param MemberUin: 成员Uin
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MemberUin: Integer
        # @param Name: 成员名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param MemberType: 成员类型，邀请：Invite， 创建：Create
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MemberType: String
        # @param OrgPolicyType: 关系策略类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrgPolicyType: String
        # @param OrgPolicyName: 关系策略名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrgPolicyName: String
        # @param OrgPermission: 关系策略权限
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrgPermission: Array
        # @param NodeId: 所属节点ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NodeId: Integer
        # @param NodeName: 所属节点名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NodeName: String
        # @param Remark: 备注
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Remark: String
        # @param CreateTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param UpdateTime: 更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param IsAllowQuit: 是否允许成员退出。允许：Allow，不允许：Denied。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsAllowQuit: String
        # @param PayUin: 代付者Uin
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PayUin: String
        # @param PayName: 代付者名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PayName: String
        # @param OrgIdentity: 管理身份
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrgIdentity: Array
        # @param BindStatus: 安全信息绑定状态  未绑定：Unbound，待激活：Valid，绑定成功：Success，绑定失败：Failed
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BindStatus: String

        attr_accessor :MemberUin, :Name, :MemberType, :OrgPolicyType, :OrgPolicyName, :OrgPermission, :NodeId, :NodeName, :Remark, :CreateTime, :UpdateTime, :IsAllowQuit, :PayUin, :PayName, :OrgIdentity, :BindStatus
        
        def initialize(memberuin=nil, name=nil, membertype=nil, orgpolicytype=nil, orgpolicyname=nil, orgpermission=nil, nodeid=nil, nodename=nil, remark=nil, createtime=nil, updatetime=nil, isallowquit=nil, payuin=nil, payname=nil, orgidentity=nil, bindstatus=nil)
          @MemberUin = memberuin
          @Name = name
          @MemberType = membertype
          @OrgPolicyType = orgpolicytype
          @OrgPolicyName = orgpolicyname
          @OrgPermission = orgpermission
          @NodeId = nodeid
          @NodeName = nodename
          @Remark = remark
          @CreateTime = createtime
          @UpdateTime = updatetime
          @IsAllowQuit = isallowquit
          @PayUin = payuin
          @PayName = payname
          @OrgIdentity = orgidentity
          @BindStatus = bindstatus
        end

        def deserialize(params)
          @MemberUin = params['MemberUin']
          @Name = params['Name']
          @MemberType = params['MemberType']
          @OrgPolicyType = params['OrgPolicyType']
          @OrgPolicyName = params['OrgPolicyName']
          unless params['OrgPermission'].nil?
            @OrgPermission = []
            params['OrgPermission'].each do |i|
              orgpermission_tmp = OrgPermission.new
              orgpermission_tmp.deserialize(i)
              @OrgPermission << orgpermission_tmp
            end
          end
          @NodeId = params['NodeId']
          @NodeName = params['NodeName']
          @Remark = params['Remark']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @IsAllowQuit = params['IsAllowQuit']
          @PayUin = params['PayUin']
          @PayName = params['PayName']
          unless params['OrgIdentity'].nil?
            @OrgIdentity = []
            params['OrgIdentity'].each do |i|
              memberidentity_tmp = MemberIdentity.new
              memberidentity_tmp.deserialize(i)
              @OrgIdentity << memberidentity_tmp
            end
          end
          @BindStatus = params['BindStatus']
        end
      end

      # 关系策略权限
      class OrgPermission < TencentCloud::Common::AbstractModel
        # @param Id: 权限Id
        # @type Id: Integer
        # @param Name: 权限名
        # @type Name: String

        attr_accessor :Id, :Name
        
        def initialize(id=nil, name=nil)
          @Id = id
          @Name = name
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
        end
      end

    end
  end
end

