{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Amazonka.CloudTrail
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Derived from API version @2013-11-01@ of the AWS service descriptions, licensed under Apache 2.0.
--
-- CloudTrail
--
-- This is the CloudTrail API Reference. It provides descriptions of
-- actions, data types, common parameters, and common errors for
-- CloudTrail.
--
-- CloudTrail is a web service that records Amazon Web Services API calls
-- for your Amazon Web Services account and delivers log files to an Amazon
-- S3 bucket. The recorded information includes the identity of the user,
-- the start time of the Amazon Web Services API call, the source IP
-- address, the request parameters, and the response elements returned by
-- the service.
--
-- As an alternative to the API, you can use one of the Amazon Web Services
-- SDKs, which consist of libraries and sample code for various programming
-- languages and platforms (Java, Ruby, .NET, iOS, Android, etc.). The SDKs
-- provide programmatic access to CloudTrail. For example, the SDKs handle
-- cryptographically signing requests, managing errors, and retrying
-- requests automatically. For more information about the Amazon Web
-- Services SDKs, including how to download and install them, see
-- <http://aws.amazon.com/tools/ Tools to Build on Amazon Web Services>.
--
-- See the
-- <https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-user-guide.html CloudTrail User Guide>
-- for information about the data that is included with each Amazon Web
-- Services API call listed in the log files.
module Amazonka.CloudTrail
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    -- $errors

    -- ** InvalidS3PrefixException
    _InvalidS3PrefixException,

    -- ** InvalidTokenException
    _InvalidTokenException,

    -- ** CloudTrailARNInvalidException
    _CloudTrailARNInvalidException,

    -- ** OrganizationNotInAllFeaturesModeException
    _OrganizationNotInAllFeaturesModeException,

    -- ** UnsupportedOperationException
    _UnsupportedOperationException,

    -- ** TagsLimitExceededException
    _TagsLimitExceededException,

    -- ** TrailNotFoundException
    _TrailNotFoundException,

    -- ** InvalidCloudWatchLogsLogGroupArnException
    _InvalidCloudWatchLogsLogGroupArnException,

    -- ** InvalidCloudWatchLogsRoleArnException
    _InvalidCloudWatchLogsRoleArnException,

    -- ** InvalidHomeRegionException
    _InvalidHomeRegionException,

    -- ** InvalidS3BucketNameException
    _InvalidS3BucketNameException,

    -- ** CloudWatchLogsDeliveryUnavailableException
    _CloudWatchLogsDeliveryUnavailableException,

    -- ** ResourceTypeNotSupportedException
    _ResourceTypeNotSupportedException,

    -- ** InsufficientDependencyServiceAccessPermissionException
    _InsufficientDependencyServiceAccessPermissionException,

    -- ** ResourceNotFoundException
    _ResourceNotFoundException,

    -- ** CloudTrailAccessNotEnabledException
    _CloudTrailAccessNotEnabledException,

    -- ** S3BucketDoesNotExistException
    _S3BucketDoesNotExistException,

    -- ** InvalidTagParameterException
    _InvalidTagParameterException,

    -- ** InvalidMaxResultsException
    _InvalidMaxResultsException,

    -- ** InvalidParameterCombinationException
    _InvalidParameterCombinationException,

    -- ** CloudTrailInvalidClientTokenIdException
    _CloudTrailInvalidClientTokenIdException,

    -- ** InvalidNextTokenException
    _InvalidNextTokenException,

    -- ** ConflictException
    _ConflictException,

    -- ** KmsKeyNotFoundException
    _KmsKeyNotFoundException,

    -- ** InsightNotEnabledException
    _InsightNotEnabledException,

    -- ** InvalidEventCategoryException
    _InvalidEventCategoryException,

    -- ** TrailNotProvidedException
    _TrailNotProvidedException,

    -- ** InsufficientS3BucketPolicyException
    _InsufficientS3BucketPolicyException,

    -- ** InvalidInsightSelectorsException
    _InvalidInsightSelectorsException,

    -- ** KmsException
    _KmsException,

    -- ** InsufficientEncryptionPolicyException
    _InsufficientEncryptionPolicyException,

    -- ** InvalidTimeRangeException
    _InvalidTimeRangeException,

    -- ** InvalidLookupAttributesException
    _InvalidLookupAttributesException,

    -- ** OperationNotPermittedException
    _OperationNotPermittedException,

    -- ** InvalidTrailNameException
    _InvalidTrailNameException,

    -- ** InsufficientSnsTopicPolicyException
    _InsufficientSnsTopicPolicyException,

    -- ** InvalidKmsKeyIdException
    _InvalidKmsKeyIdException,

    -- ** MaximumNumberOfTrailsExceededException
    _MaximumNumberOfTrailsExceededException,

    -- ** TrailAlreadyExistsException
    _TrailAlreadyExistsException,

    -- ** InvalidEventSelectorsException
    _InvalidEventSelectorsException,

    -- ** InvalidSnsTopicNameException
    _InvalidSnsTopicNameException,

    -- ** NotOrganizationMasterAccountException
    _NotOrganizationMasterAccountException,

    -- ** KmsKeyDisabledException
    _KmsKeyDisabledException,

    -- ** OrganizationsNotInUseException
    _OrganizationsNotInUseException,

    -- * Waiters
    -- $waiters

    -- * Operations
    -- $operations

    -- ** AddTags
    AddTags (AddTags'),
    newAddTags,
    AddTagsResponse (AddTagsResponse'),
    newAddTagsResponse,

    -- ** CreateTrail
    CreateTrail (CreateTrail'),
    newCreateTrail,
    CreateTrailResponse (CreateTrailResponse'),
    newCreateTrailResponse,

    -- ** DeleteTrail
    DeleteTrail (DeleteTrail'),
    newDeleteTrail,
    DeleteTrailResponse (DeleteTrailResponse'),
    newDeleteTrailResponse,

    -- ** DescribeTrails
    DescribeTrails (DescribeTrails'),
    newDescribeTrails,
    DescribeTrailsResponse (DescribeTrailsResponse'),
    newDescribeTrailsResponse,

    -- ** GetEventSelectors
    GetEventSelectors (GetEventSelectors'),
    newGetEventSelectors,
    GetEventSelectorsResponse (GetEventSelectorsResponse'),
    newGetEventSelectorsResponse,

    -- ** GetInsightSelectors
    GetInsightSelectors (GetInsightSelectors'),
    newGetInsightSelectors,
    GetInsightSelectorsResponse (GetInsightSelectorsResponse'),
    newGetInsightSelectorsResponse,

    -- ** GetTrail
    GetTrail (GetTrail'),
    newGetTrail,
    GetTrailResponse (GetTrailResponse'),
    newGetTrailResponse,

    -- ** GetTrailStatus
    GetTrailStatus (GetTrailStatus'),
    newGetTrailStatus,
    GetTrailStatusResponse (GetTrailStatusResponse'),
    newGetTrailStatusResponse,

    -- ** ListPublicKeys (Paginated)
    ListPublicKeys (ListPublicKeys'),
    newListPublicKeys,
    ListPublicKeysResponse (ListPublicKeysResponse'),
    newListPublicKeysResponse,

    -- ** ListTags (Paginated)
    ListTags (ListTags'),
    newListTags,
    ListTagsResponse (ListTagsResponse'),
    newListTagsResponse,

    -- ** ListTrails (Paginated)
    ListTrails (ListTrails'),
    newListTrails,
    ListTrailsResponse (ListTrailsResponse'),
    newListTrailsResponse,

    -- ** LookupEvents (Paginated)
    LookupEvents (LookupEvents'),
    newLookupEvents,
    LookupEventsResponse (LookupEventsResponse'),
    newLookupEventsResponse,

    -- ** PutEventSelectors
    PutEventSelectors (PutEventSelectors'),
    newPutEventSelectors,
    PutEventSelectorsResponse (PutEventSelectorsResponse'),
    newPutEventSelectorsResponse,

    -- ** PutInsightSelectors
    PutInsightSelectors (PutInsightSelectors'),
    newPutInsightSelectors,
    PutInsightSelectorsResponse (PutInsightSelectorsResponse'),
    newPutInsightSelectorsResponse,

    -- ** RemoveTags
    RemoveTags (RemoveTags'),
    newRemoveTags,
    RemoveTagsResponse (RemoveTagsResponse'),
    newRemoveTagsResponse,

    -- ** StartLogging
    StartLogging (StartLogging'),
    newStartLogging,
    StartLoggingResponse (StartLoggingResponse'),
    newStartLoggingResponse,

    -- ** StopLogging
    StopLogging (StopLogging'),
    newStopLogging,
    StopLoggingResponse (StopLoggingResponse'),
    newStopLoggingResponse,

    -- ** UpdateTrail
    UpdateTrail (UpdateTrail'),
    newUpdateTrail,
    UpdateTrailResponse (UpdateTrailResponse'),
    newUpdateTrailResponse,

    -- * Types

    -- ** EventCategory
    EventCategory (..),

    -- ** InsightType
    InsightType (..),

    -- ** LookupAttributeKey
    LookupAttributeKey (..),

    -- ** ReadWriteType
    ReadWriteType (..),

    -- ** AdvancedEventSelector
    AdvancedEventSelector (AdvancedEventSelector'),
    newAdvancedEventSelector,

    -- ** AdvancedFieldSelector
    AdvancedFieldSelector (AdvancedFieldSelector'),
    newAdvancedFieldSelector,

    -- ** DataResource
    DataResource (DataResource'),
    newDataResource,

    -- ** Event
    Event (Event'),
    newEvent,

    -- ** EventSelector
    EventSelector (EventSelector'),
    newEventSelector,

    -- ** InsightSelector
    InsightSelector (InsightSelector'),
    newInsightSelector,

    -- ** LookupAttribute
    LookupAttribute (LookupAttribute'),
    newLookupAttribute,

    -- ** PublicKey
    PublicKey (PublicKey'),
    newPublicKey,

    -- ** Resource
    Resource (Resource'),
    newResource,

    -- ** ResourceTag
    ResourceTag (ResourceTag'),
    newResourceTag,

    -- ** Tag
    Tag (Tag'),
    newTag,

    -- ** Trail
    Trail (Trail'),
    newTrail,

    -- ** TrailInfo
    TrailInfo (TrailInfo'),
    newTrailInfo,
  )
where

import Amazonka.CloudTrail.AddTags
import Amazonka.CloudTrail.CreateTrail
import Amazonka.CloudTrail.DeleteTrail
import Amazonka.CloudTrail.DescribeTrails
import Amazonka.CloudTrail.GetEventSelectors
import Amazonka.CloudTrail.GetInsightSelectors
import Amazonka.CloudTrail.GetTrail
import Amazonka.CloudTrail.GetTrailStatus
import Amazonka.CloudTrail.Lens
import Amazonka.CloudTrail.ListPublicKeys
import Amazonka.CloudTrail.ListTags
import Amazonka.CloudTrail.ListTrails
import Amazonka.CloudTrail.LookupEvents
import Amazonka.CloudTrail.PutEventSelectors
import Amazonka.CloudTrail.PutInsightSelectors
import Amazonka.CloudTrail.RemoveTags
import Amazonka.CloudTrail.StartLogging
import Amazonka.CloudTrail.StopLogging
import Amazonka.CloudTrail.Types
import Amazonka.CloudTrail.UpdateTrail
import Amazonka.CloudTrail.Waiters

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'CloudTrail'.

-- $operations
-- Some AWS operations return results that are incomplete and require subsequent
-- requests in order to obtain the entire result set. The process of sending
-- subsequent requests to continue where a previous request left off is called
-- pagination. For example, the 'ListObjects' operation of Amazon S3 returns up to
-- 1000 objects at a time, and you must send subsequent requests with the
-- appropriate Marker in order to retrieve the next page of results.
--
-- Operations that have an 'AWSPager' instance can transparently perform subsequent
-- requests, correctly setting Markers and other request facets to iterate through
-- the entire result set of a truncated API operation. Operations which support
-- this have an additional note in the documentation.
--
-- Many operations have the ability to filter results on the server side. See the
-- individual operation parameters for details.

-- $waiters
-- Waiters poll by repeatedly sending a request until some remote success condition
-- configured by the 'Wait' specification is fulfilled. The 'Wait' specification
-- determines how many attempts should be made, in addition to delay and retry strategies.