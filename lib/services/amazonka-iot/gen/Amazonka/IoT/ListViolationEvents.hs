{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.IoT.ListViolationEvents
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the Device Defender security profile violations discovered during
-- the given time period. You can use filters to limit the results to those
-- alerts issued for a particular security profile, behavior, or thing
-- (device).
--
-- Requires permission to access the
-- <https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions ListViolationEvents>
-- action.
--
-- This operation returns paginated results.
module Amazonka.IoT.ListViolationEvents
  ( -- * Creating a Request
    ListViolationEvents (..),
    newListViolationEvents,

    -- * Request Lenses
    listViolationEvents_listSuppressedAlerts,
    listViolationEvents_behaviorCriteriaType,
    listViolationEvents_nextToken,
    listViolationEvents_thingName,
    listViolationEvents_securityProfileName,
    listViolationEvents_maxResults,
    listViolationEvents_verificationState,
    listViolationEvents_startTime,
    listViolationEvents_endTime,

    -- * Destructuring the Response
    ListViolationEventsResponse (..),
    newListViolationEventsResponse,

    -- * Response Lenses
    listViolationEventsResponse_nextToken,
    listViolationEventsResponse_violationEvents,
    listViolationEventsResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.IoT.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newListViolationEvents' smart constructor.
data ListViolationEvents = ListViolationEvents'
  { -- | A list of all suppressed alerts.
    listSuppressedAlerts :: Prelude.Maybe Prelude.Bool,
    -- | The criteria for a behavior.
    behaviorCriteriaType :: Prelude.Maybe BehaviorCriteriaType,
    -- | The token for the next set of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | A filter to limit results to those alerts caused by the specified thing.
    thingName :: Prelude.Maybe Prelude.Text,
    -- | A filter to limit results to those alerts generated by the specified
    -- security profile.
    securityProfileName :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of results to return at one time.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The verification state of the violation (detect alarm).
    verificationState :: Prelude.Maybe VerificationState,
    -- | The start time for the alerts to be listed.
    startTime :: Core.POSIX,
    -- | The end time for the alerts to be listed.
    endTime :: Core.POSIX
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListViolationEvents' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'listSuppressedAlerts', 'listViolationEvents_listSuppressedAlerts' - A list of all suppressed alerts.
--
-- 'behaviorCriteriaType', 'listViolationEvents_behaviorCriteriaType' - The criteria for a behavior.
--
-- 'nextToken', 'listViolationEvents_nextToken' - The token for the next set of results.
--
-- 'thingName', 'listViolationEvents_thingName' - A filter to limit results to those alerts caused by the specified thing.
--
-- 'securityProfileName', 'listViolationEvents_securityProfileName' - A filter to limit results to those alerts generated by the specified
-- security profile.
--
-- 'maxResults', 'listViolationEvents_maxResults' - The maximum number of results to return at one time.
--
-- 'verificationState', 'listViolationEvents_verificationState' - The verification state of the violation (detect alarm).
--
-- 'startTime', 'listViolationEvents_startTime' - The start time for the alerts to be listed.
--
-- 'endTime', 'listViolationEvents_endTime' - The end time for the alerts to be listed.
newListViolationEvents ::
  -- | 'startTime'
  Prelude.UTCTime ->
  -- | 'endTime'
  Prelude.UTCTime ->
  ListViolationEvents
newListViolationEvents pStartTime_ pEndTime_ =
  ListViolationEvents'
    { listSuppressedAlerts =
        Prelude.Nothing,
      behaviorCriteriaType = Prelude.Nothing,
      nextToken = Prelude.Nothing,
      thingName = Prelude.Nothing,
      securityProfileName = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      verificationState = Prelude.Nothing,
      startTime = Core._Time Lens.# pStartTime_,
      endTime = Core._Time Lens.# pEndTime_
    }

-- | A list of all suppressed alerts.
listViolationEvents_listSuppressedAlerts :: Lens.Lens' ListViolationEvents (Prelude.Maybe Prelude.Bool)
listViolationEvents_listSuppressedAlerts = Lens.lens (\ListViolationEvents' {listSuppressedAlerts} -> listSuppressedAlerts) (\s@ListViolationEvents' {} a -> s {listSuppressedAlerts = a} :: ListViolationEvents)

-- | The criteria for a behavior.
listViolationEvents_behaviorCriteriaType :: Lens.Lens' ListViolationEvents (Prelude.Maybe BehaviorCriteriaType)
listViolationEvents_behaviorCriteriaType = Lens.lens (\ListViolationEvents' {behaviorCriteriaType} -> behaviorCriteriaType) (\s@ListViolationEvents' {} a -> s {behaviorCriteriaType = a} :: ListViolationEvents)

-- | The token for the next set of results.
listViolationEvents_nextToken :: Lens.Lens' ListViolationEvents (Prelude.Maybe Prelude.Text)
listViolationEvents_nextToken = Lens.lens (\ListViolationEvents' {nextToken} -> nextToken) (\s@ListViolationEvents' {} a -> s {nextToken = a} :: ListViolationEvents)

-- | A filter to limit results to those alerts caused by the specified thing.
listViolationEvents_thingName :: Lens.Lens' ListViolationEvents (Prelude.Maybe Prelude.Text)
listViolationEvents_thingName = Lens.lens (\ListViolationEvents' {thingName} -> thingName) (\s@ListViolationEvents' {} a -> s {thingName = a} :: ListViolationEvents)

-- | A filter to limit results to those alerts generated by the specified
-- security profile.
listViolationEvents_securityProfileName :: Lens.Lens' ListViolationEvents (Prelude.Maybe Prelude.Text)
listViolationEvents_securityProfileName = Lens.lens (\ListViolationEvents' {securityProfileName} -> securityProfileName) (\s@ListViolationEvents' {} a -> s {securityProfileName = a} :: ListViolationEvents)

-- | The maximum number of results to return at one time.
listViolationEvents_maxResults :: Lens.Lens' ListViolationEvents (Prelude.Maybe Prelude.Natural)
listViolationEvents_maxResults = Lens.lens (\ListViolationEvents' {maxResults} -> maxResults) (\s@ListViolationEvents' {} a -> s {maxResults = a} :: ListViolationEvents)

-- | The verification state of the violation (detect alarm).
listViolationEvents_verificationState :: Lens.Lens' ListViolationEvents (Prelude.Maybe VerificationState)
listViolationEvents_verificationState = Lens.lens (\ListViolationEvents' {verificationState} -> verificationState) (\s@ListViolationEvents' {} a -> s {verificationState = a} :: ListViolationEvents)

-- | The start time for the alerts to be listed.
listViolationEvents_startTime :: Lens.Lens' ListViolationEvents Prelude.UTCTime
listViolationEvents_startTime = Lens.lens (\ListViolationEvents' {startTime} -> startTime) (\s@ListViolationEvents' {} a -> s {startTime = a} :: ListViolationEvents) Prelude.. Core._Time

-- | The end time for the alerts to be listed.
listViolationEvents_endTime :: Lens.Lens' ListViolationEvents Prelude.UTCTime
listViolationEvents_endTime = Lens.lens (\ListViolationEvents' {endTime} -> endTime) (\s@ListViolationEvents' {} a -> s {endTime = a} :: ListViolationEvents) Prelude.. Core._Time

instance Core.AWSPager ListViolationEvents where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listViolationEventsResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? listViolationEventsResponse_violationEvents
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listViolationEvents_nextToken
          Lens..~ rs
          Lens.^? listViolationEventsResponse_nextToken
            Prelude.. Lens._Just

instance Core.AWSRequest ListViolationEvents where
  type
    AWSResponse ListViolationEvents =
      ListViolationEventsResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListViolationEventsResponse'
            Prelude.<$> (x Core..?> "nextToken")
            Prelude.<*> ( x Core..?> "violationEvents"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListViolationEvents where
  hashWithSalt _salt ListViolationEvents' {..} =
    _salt `Prelude.hashWithSalt` listSuppressedAlerts
      `Prelude.hashWithSalt` behaviorCriteriaType
      `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` thingName
      `Prelude.hashWithSalt` securityProfileName
      `Prelude.hashWithSalt` maxResults
      `Prelude.hashWithSalt` verificationState
      `Prelude.hashWithSalt` startTime
      `Prelude.hashWithSalt` endTime

instance Prelude.NFData ListViolationEvents where
  rnf ListViolationEvents' {..} =
    Prelude.rnf listSuppressedAlerts
      `Prelude.seq` Prelude.rnf behaviorCriteriaType
      `Prelude.seq` Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf thingName
      `Prelude.seq` Prelude.rnf securityProfileName
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf verificationState
      `Prelude.seq` Prelude.rnf startTime
      `Prelude.seq` Prelude.rnf endTime

instance Core.ToHeaders ListViolationEvents where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath ListViolationEvents where
  toPath = Prelude.const "/violation-events"

instance Core.ToQuery ListViolationEvents where
  toQuery ListViolationEvents' {..} =
    Prelude.mconcat
      [ "listSuppressedAlerts" Core.=: listSuppressedAlerts,
        "behaviorCriteriaType" Core.=: behaviorCriteriaType,
        "nextToken" Core.=: nextToken,
        "thingName" Core.=: thingName,
        "securityProfileName" Core.=: securityProfileName,
        "maxResults" Core.=: maxResults,
        "verificationState" Core.=: verificationState,
        "startTime" Core.=: startTime,
        "endTime" Core.=: endTime
      ]

-- | /See:/ 'newListViolationEventsResponse' smart constructor.
data ListViolationEventsResponse = ListViolationEventsResponse'
  { -- | A token that can be used to retrieve the next set of results, or @null@
    -- if there are no additional results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The security profile violation alerts issued for this account during the
    -- given time period, potentially filtered by security profile, behavior
    -- violated, or thing (device) violating.
    violationEvents :: Prelude.Maybe [ViolationEvent],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListViolationEventsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listViolationEventsResponse_nextToken' - A token that can be used to retrieve the next set of results, or @null@
-- if there are no additional results.
--
-- 'violationEvents', 'listViolationEventsResponse_violationEvents' - The security profile violation alerts issued for this account during the
-- given time period, potentially filtered by security profile, behavior
-- violated, or thing (device) violating.
--
-- 'httpStatus', 'listViolationEventsResponse_httpStatus' - The response's http status code.
newListViolationEventsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListViolationEventsResponse
newListViolationEventsResponse pHttpStatus_ =
  ListViolationEventsResponse'
    { nextToken =
        Prelude.Nothing,
      violationEvents = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | A token that can be used to retrieve the next set of results, or @null@
-- if there are no additional results.
listViolationEventsResponse_nextToken :: Lens.Lens' ListViolationEventsResponse (Prelude.Maybe Prelude.Text)
listViolationEventsResponse_nextToken = Lens.lens (\ListViolationEventsResponse' {nextToken} -> nextToken) (\s@ListViolationEventsResponse' {} a -> s {nextToken = a} :: ListViolationEventsResponse)

-- | The security profile violation alerts issued for this account during the
-- given time period, potentially filtered by security profile, behavior
-- violated, or thing (device) violating.
listViolationEventsResponse_violationEvents :: Lens.Lens' ListViolationEventsResponse (Prelude.Maybe [ViolationEvent])
listViolationEventsResponse_violationEvents = Lens.lens (\ListViolationEventsResponse' {violationEvents} -> violationEvents) (\s@ListViolationEventsResponse' {} a -> s {violationEvents = a} :: ListViolationEventsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
listViolationEventsResponse_httpStatus :: Lens.Lens' ListViolationEventsResponse Prelude.Int
listViolationEventsResponse_httpStatus = Lens.lens (\ListViolationEventsResponse' {httpStatus} -> httpStatus) (\s@ListViolationEventsResponse' {} a -> s {httpStatus = a} :: ListViolationEventsResponse)

instance Prelude.NFData ListViolationEventsResponse where
  rnf ListViolationEventsResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf violationEvents
      `Prelude.seq` Prelude.rnf httpStatus