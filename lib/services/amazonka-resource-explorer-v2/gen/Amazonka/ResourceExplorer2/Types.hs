{-# LANGUAGE DisambiguateRecordFields #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.ResourceExplorer2.Types
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.ResourceExplorer2.Types
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    _AccessDeniedException,
    _InternalServerException,
    _UnauthorizedException,
    _ServiceQuotaExceededException,
    _ResourceNotFoundException,
    _ConflictException,
    _ThrottlingException,
    _ValidationException,

    -- * IndexState
    IndexState (..),

    -- * IndexType
    IndexType (..),

    -- * BatchGetViewError
    BatchGetViewError (..),
    newBatchGetViewError,
    batchGetViewError_errorMessage,
    batchGetViewError_viewArn,

    -- * Document
    Document (..),
    newDocument,

    -- * IncludedProperty
    IncludedProperty (..),
    newIncludedProperty,
    includedProperty_name,

    -- * Index
    Index (..),
    newIndex,
    index_type,
    index_arn,
    index_region,

    -- * Resource
    Resource (..),
    newResource,
    resource_resourceType,
    resource_lastReportedAt,
    resource_properties,
    resource_arn,
    resource_service,
    resource_region,
    resource_owningAccountId,

    -- * ResourceCount
    ResourceCount (..),
    newResourceCount,
    resourceCount_complete,
    resourceCount_totalResources,

    -- * ResourceProperty
    ResourceProperty (..),
    newResourceProperty,
    resourceProperty_name,
    resourceProperty_lastReportedAt,
    resourceProperty_data,

    -- * SearchFilter
    SearchFilter (..),
    newSearchFilter,
    searchFilter_filterString,

    -- * SupportedResourceType
    SupportedResourceType (..),
    newSupportedResourceType,
    supportedResourceType_resourceType,
    supportedResourceType_service,

    -- * View
    View (..),
    newView,
    view_lastUpdatedAt,
    view_filters,
    view_includedProperties,
    view_owner,
    view_scope,
    view_viewArn,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.ResourceExplorer2.Types.BatchGetViewError
import Amazonka.ResourceExplorer2.Types.Document
import Amazonka.ResourceExplorer2.Types.IncludedProperty
import Amazonka.ResourceExplorer2.Types.Index
import Amazonka.ResourceExplorer2.Types.IndexState
import Amazonka.ResourceExplorer2.Types.IndexType
import Amazonka.ResourceExplorer2.Types.Resource
import Amazonka.ResourceExplorer2.Types.ResourceCount
import Amazonka.ResourceExplorer2.Types.ResourceProperty
import Amazonka.ResourceExplorer2.Types.SearchFilter
import Amazonka.ResourceExplorer2.Types.SupportedResourceType
import Amazonka.ResourceExplorer2.Types.View
import qualified Amazonka.Sign.V4 as Sign

-- | API version @2022-07-28@ of the Amazon Resource Explorer SDK configuration.
defaultService :: Core.Service
defaultService =
  Core.Service
    { Core.abbrev = "ResourceExplorer2",
      Core.signer = Sign.v4,
      Core.endpointPrefix = "resource-explorer-2",
      Core.signingName = "resource-explorer-2",
      Core.version = "2022-07-28",
      Core.s3AddressingStyle = Core.S3AddressingStyleAuto,
      Core.endpoint = Core.defaultEndpoint defaultService,
      Core.timeout = Prelude.Just 70,
      Core.check = Core.statusSuccess,
      Core.error = Core.parseJSONError "ResourceExplorer2",
      Core.retry = retry
    }
  where
    retry =
      Core.Exponential
        { Core.base = 5.0e-2,
          Core.growth = 2,
          Core.attempts = 5,
          Core.check = check
        }
    check e
      | Lens.has (Core.hasStatus 429) e =
        Prelude.Just "too_many_requests"
      | Lens.has
          ( Core.hasCode "RequestThrottledException"
              Prelude.. Core.hasStatus 400
          )
          e =
        Prelude.Just "request_throttled_exception"
      | Lens.has (Core.hasStatus 502) e =
        Prelude.Just "bad_gateway"
      | Lens.has (Core.hasStatus 500) e =
        Prelude.Just "general_server_error"
      | Lens.has
          ( Core.hasCode "Throttling"
              Prelude.. Core.hasStatus 400
          )
          e =
        Prelude.Just "throttling"
      | Lens.has (Core.hasStatus 503) e =
        Prelude.Just "service_unavailable"
      | Lens.has (Core.hasStatus 509) e =
        Prelude.Just "limit_exceeded"
      | Lens.has
          ( Core.hasCode "ThrottledException"
              Prelude.. Core.hasStatus 400
          )
          e =
        Prelude.Just "throttled_exception"
      | Lens.has
          ( Core.hasCode "ThrottlingException"
              Prelude.. Core.hasStatus 400
          )
          e =
        Prelude.Just "throttling_exception"
      | Lens.has (Core.hasStatus 504) e =
        Prelude.Just "gateway_timeout"
      | Lens.has
          ( Core.hasCode
              "ProvisionedThroughputExceededException"
              Prelude.. Core.hasStatus 400
          )
          e =
        Prelude.Just "throughput_exceeded"
      | Prelude.otherwise = Prelude.Nothing

-- | The credentials that you used to call this operation don\'t have the
-- minimum required permissions.
_AccessDeniedException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_AccessDeniedException =
  Core._MatchServiceError
    defaultService
    "AccessDeniedException"
    Prelude.. Core.hasStatus 403

-- | The request failed because of internal service error. Try your request
-- again later.
_InternalServerException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InternalServerException =
  Core._MatchServiceError
    defaultService
    "InternalServerException"
    Prelude.. Core.hasStatus 500

-- | The principal making the request isn\'t permitted to perform the
-- operation.
_UnauthorizedException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_UnauthorizedException =
  Core._MatchServiceError
    defaultService
    "UnauthorizedException"
    Prelude.. Core.hasStatus 401

-- | The request failed because it exceeds a service quota.
_ServiceQuotaExceededException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ServiceQuotaExceededException =
  Core._MatchServiceError
    defaultService
    "ServiceQuotaExceededException"
    Prelude.. Core.hasStatus 402

-- | You specified a resource that doesn\'t exist. Check the ID or ARN that
-- you used to identity the resource, and try again.
_ResourceNotFoundException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ResourceNotFoundException =
  Core._MatchServiceError
    defaultService
    "ResourceNotFoundException"
    Prelude.. Core.hasStatus 404

-- | You tried to create a new view or index when one already exists, and you
-- either didn\'t specify or specified a different idempotency token as the
-- original request.
_ConflictException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ConflictException =
  Core._MatchServiceError
    defaultService
    "ConflictException"
    Prelude.. Core.hasStatus 409

-- | The request failed because you exceeded a rate limit for this operation.
-- For more information, see
-- <https://docs.aws.amazon.com/arexug/mainline/quotas.html Quotas for Resource Explorer>.
_ThrottlingException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ThrottlingException =
  Core._MatchServiceError
    defaultService
    "ThrottlingException"
    Prelude.. Core.hasStatus 429

-- | You provided an invalid value for one of the operation\'s parameters.
-- Check the syntax for the operation, and try again.
_ValidationException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ValidationException =
  Core._MatchServiceError
    defaultService
    "ValidationException"
    Prelude.. Core.hasStatus 400
