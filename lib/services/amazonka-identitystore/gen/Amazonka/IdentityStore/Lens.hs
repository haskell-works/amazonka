{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.IdentityStore.Lens
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.IdentityStore.Lens
  ( -- * Operations

    -- ** CreateGroup
    createGroup_displayName,
    createGroup_description,
    createGroup_identityStoreId,
    createGroupResponse_httpStatus,
    createGroupResponse_groupId,
    createGroupResponse_identityStoreId,

    -- ** CreateGroupMembership
    createGroupMembership_identityStoreId,
    createGroupMembership_groupId,
    createGroupMembership_memberId,
    createGroupMembershipResponse_httpStatus,
    createGroupMembershipResponse_membershipId,
    createGroupMembershipResponse_identityStoreId,

    -- ** CreateUser
    createUser_name,
    createUser_userName,
    createUser_locale,
    createUser_timezone,
    createUser_displayName,
    createUser_userType,
    createUser_profileUrl,
    createUser_preferredLanguage,
    createUser_title,
    createUser_emails,
    createUser_addresses,
    createUser_nickName,
    createUser_phoneNumbers,
    createUser_identityStoreId,
    createUserResponse_httpStatus,
    createUserResponse_userId,
    createUserResponse_identityStoreId,

    -- ** DeleteGroup
    deleteGroup_identityStoreId,
    deleteGroup_groupId,
    deleteGroupResponse_httpStatus,

    -- ** DeleteGroupMembership
    deleteGroupMembership_identityStoreId,
    deleteGroupMembership_membershipId,
    deleteGroupMembershipResponse_httpStatus,

    -- ** DeleteUser
    deleteUser_identityStoreId,
    deleteUser_userId,
    deleteUserResponse_httpStatus,

    -- ** DescribeGroup
    describeGroup_identityStoreId,
    describeGroup_groupId,
    describeGroupResponse_externalIds,
    describeGroupResponse_displayName,
    describeGroupResponse_description,
    describeGroupResponse_httpStatus,
    describeGroupResponse_groupId,
    describeGroupResponse_identityStoreId,

    -- ** DescribeGroupMembership
    describeGroupMembership_identityStoreId,
    describeGroupMembership_membershipId,
    describeGroupMembershipResponse_httpStatus,
    describeGroupMembershipResponse_identityStoreId,
    describeGroupMembershipResponse_membershipId,
    describeGroupMembershipResponse_groupId,
    describeGroupMembershipResponse_memberId,

    -- ** DescribeUser
    describeUser_identityStoreId,
    describeUser_userId,
    describeUserResponse_name,
    describeUserResponse_externalIds,
    describeUserResponse_userName,
    describeUserResponse_locale,
    describeUserResponse_timezone,
    describeUserResponse_displayName,
    describeUserResponse_userType,
    describeUserResponse_profileUrl,
    describeUserResponse_preferredLanguage,
    describeUserResponse_title,
    describeUserResponse_emails,
    describeUserResponse_addresses,
    describeUserResponse_nickName,
    describeUserResponse_phoneNumbers,
    describeUserResponse_httpStatus,
    describeUserResponse_userId,
    describeUserResponse_identityStoreId,

    -- ** GetGroupId
    getGroupId_identityStoreId,
    getGroupId_alternateIdentifier,
    getGroupIdResponse_httpStatus,
    getGroupIdResponse_groupId,
    getGroupIdResponse_identityStoreId,

    -- ** GetGroupMembershipId
    getGroupMembershipId_identityStoreId,
    getGroupMembershipId_groupId,
    getGroupMembershipId_memberId,
    getGroupMembershipIdResponse_httpStatus,
    getGroupMembershipIdResponse_membershipId,
    getGroupMembershipIdResponse_identityStoreId,

    -- ** GetUserId
    getUserId_identityStoreId,
    getUserId_alternateIdentifier,
    getUserIdResponse_httpStatus,
    getUserIdResponse_userId,
    getUserIdResponse_identityStoreId,

    -- ** IsMemberInGroups
    isMemberInGroups_identityStoreId,
    isMemberInGroups_memberId,
    isMemberInGroups_groupIds,
    isMemberInGroupsResponse_httpStatus,
    isMemberInGroupsResponse_results,

    -- ** ListGroupMemberships
    listGroupMemberships_nextToken,
    listGroupMemberships_maxResults,
    listGroupMemberships_identityStoreId,
    listGroupMemberships_groupId,
    listGroupMembershipsResponse_nextToken,
    listGroupMembershipsResponse_httpStatus,
    listGroupMembershipsResponse_groupMemberships,

    -- ** ListGroupMembershipsForMember
    listGroupMembershipsForMember_nextToken,
    listGroupMembershipsForMember_maxResults,
    listGroupMembershipsForMember_identityStoreId,
    listGroupMembershipsForMember_memberId,
    listGroupMembershipsForMemberResponse_nextToken,
    listGroupMembershipsForMemberResponse_httpStatus,
    listGroupMembershipsForMemberResponse_groupMemberships,

    -- ** ListGroups
    listGroups_nextToken,
    listGroups_filters,
    listGroups_maxResults,
    listGroups_identityStoreId,
    listGroupsResponse_nextToken,
    listGroupsResponse_httpStatus,
    listGroupsResponse_groups,

    -- ** ListUsers
    listUsers_nextToken,
    listUsers_filters,
    listUsers_maxResults,
    listUsers_identityStoreId,
    listUsersResponse_nextToken,
    listUsersResponse_httpStatus,
    listUsersResponse_users,

    -- ** UpdateGroup
    updateGroup_identityStoreId,
    updateGroup_groupId,
    updateGroup_operations,
    updateGroupResponse_httpStatus,

    -- ** UpdateUser
    updateUser_identityStoreId,
    updateUser_userId,
    updateUser_operations,
    updateUserResponse_httpStatus,

    -- * Types

    -- ** Address
    address_type,
    address_streetAddress,
    address_formatted,
    address_postalCode,
    address_country,
    address_region,
    address_locality,
    address_primary,

    -- ** AlternateIdentifier
    alternateIdentifier_externalId,
    alternateIdentifier_uniqueAttribute,

    -- ** AttributeOperation
    attributeOperation_attributeValue,
    attributeOperation_attributePath,

    -- ** AttributeValue

    -- ** Email
    email_type,
    email_primary,
    email_value,

    -- ** ExternalId
    externalId_issuer,
    externalId_id,

    -- ** Filter
    filter_attributePath,
    filter_attributeValue,

    -- ** Group
    group_externalIds,
    group_displayName,
    group_description,
    group_groupId,
    group_identityStoreId,

    -- ** GroupMembership
    groupMembership_memberId,
    groupMembership_membershipId,
    groupMembership_groupId,
    groupMembership_identityStoreId,

    -- ** GroupMembershipExistenceResult
    groupMembershipExistenceResult_memberId,
    groupMembershipExistenceResult_membershipExists,
    groupMembershipExistenceResult_groupId,

    -- ** MemberId
    memberId_userId,

    -- ** Name
    name_familyName,
    name_honorificPrefix,
    name_formatted,
    name_givenName,
    name_honorificSuffix,
    name_middleName,

    -- ** PhoneNumber
    phoneNumber_type,
    phoneNumber_primary,
    phoneNumber_value,

    -- ** UniqueAttribute
    uniqueAttribute_attributePath,
    uniqueAttribute_attributeValue,

    -- ** User
    user_name,
    user_externalIds,
    user_userName,
    user_locale,
    user_timezone,
    user_displayName,
    user_userType,
    user_profileUrl,
    user_preferredLanguage,
    user_title,
    user_emails,
    user_addresses,
    user_nickName,
    user_phoneNumbers,
    user_userId,
    user_identityStoreId,
  )
where

import Amazonka.IdentityStore.CreateGroup
import Amazonka.IdentityStore.CreateGroupMembership
import Amazonka.IdentityStore.CreateUser
import Amazonka.IdentityStore.DeleteGroup
import Amazonka.IdentityStore.DeleteGroupMembership
import Amazonka.IdentityStore.DeleteUser
import Amazonka.IdentityStore.DescribeGroup
import Amazonka.IdentityStore.DescribeGroupMembership
import Amazonka.IdentityStore.DescribeUser
import Amazonka.IdentityStore.GetGroupId
import Amazonka.IdentityStore.GetGroupMembershipId
import Amazonka.IdentityStore.GetUserId
import Amazonka.IdentityStore.IsMemberInGroups
import Amazonka.IdentityStore.ListGroupMemberships
import Amazonka.IdentityStore.ListGroupMembershipsForMember
import Amazonka.IdentityStore.ListGroups
import Amazonka.IdentityStore.ListUsers
import Amazonka.IdentityStore.Types.Address
import Amazonka.IdentityStore.Types.AlternateIdentifier
import Amazonka.IdentityStore.Types.AttributeOperation
import Amazonka.IdentityStore.Types.AttributeValue
import Amazonka.IdentityStore.Types.Email
import Amazonka.IdentityStore.Types.ExternalId
import Amazonka.IdentityStore.Types.Filter
import Amazonka.IdentityStore.Types.Group
import Amazonka.IdentityStore.Types.GroupMembership
import Amazonka.IdentityStore.Types.GroupMembershipExistenceResult
import Amazonka.IdentityStore.Types.MemberId
import Amazonka.IdentityStore.Types.Name
import Amazonka.IdentityStore.Types.PhoneNumber
import Amazonka.IdentityStore.Types.UniqueAttribute
import Amazonka.IdentityStore.Types.User
import Amazonka.IdentityStore.UpdateGroup
import Amazonka.IdentityStore.UpdateUser
