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
-- Module      : Network.AWS.MechanicalTurk.ListAssignmentsForHIT
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The @ListAssignmentsForHIT@ operation retrieves completed assignments
-- for a HIT. You can use this operation to retrieve the results for a HIT.
--
-- You can get assignments for a HIT at any time, even if the HIT is not
-- yet Reviewable. If a HIT requested multiple assignments, and has
-- received some results but has not yet become Reviewable, you can still
-- retrieve the partial results with this operation.
--
-- Use the AssignmentStatus parameter to control which set of assignments
-- for a HIT are returned. The ListAssignmentsForHIT operation can return
-- submitted assignments awaiting approval, or it can return assignments
-- that have already been approved or rejected. You can set
-- AssignmentStatus=Approved,Rejected to get assignments that have already
-- been approved and rejected together in one result set.
--
-- Only the Requester who created the HIT can retrieve the assignments for
-- that HIT.
--
-- Results are sorted and divided into numbered pages and the operation
-- returns a single page of results. You can use the parameters of the
-- operation to control sorting and pagination.
--
-- This operation returns paginated results.
module Network.AWS.MechanicalTurk.ListAssignmentsForHIT
  ( -- * Creating a Request
    ListAssignmentsForHIT (..),
    newListAssignmentsForHIT,

    -- * Request Lenses
    listAssignmentsForHIT_assignmentStatuses,
    listAssignmentsForHIT_nextToken,
    listAssignmentsForHIT_maxResults,
    listAssignmentsForHIT_hITId,

    -- * Destructuring the Response
    ListAssignmentsForHITResponse (..),
    newListAssignmentsForHITResponse,

    -- * Response Lenses
    listAssignmentsForHITResponse_nextToken,
    listAssignmentsForHITResponse_numResults,
    listAssignmentsForHITResponse_assignments,
    listAssignmentsForHITResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.MechanicalTurk.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newListAssignmentsForHIT' smart constructor.
data ListAssignmentsForHIT = ListAssignmentsForHIT'
  { -- | The status of the assignments to return: Submitted | Approved | Rejected
    assignmentStatuses :: Prelude.Maybe [AssignmentStatus],
    -- | Pagination token
    nextToken :: Prelude.Maybe Prelude.Text,
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The ID of the HIT.
    hITId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListAssignmentsForHIT' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'assignmentStatuses', 'listAssignmentsForHIT_assignmentStatuses' - The status of the assignments to return: Submitted | Approved | Rejected
--
-- 'nextToken', 'listAssignmentsForHIT_nextToken' - Pagination token
--
-- 'maxResults', 'listAssignmentsForHIT_maxResults' - Undocumented member.
--
-- 'hITId', 'listAssignmentsForHIT_hITId' - The ID of the HIT.
newListAssignmentsForHIT ::
  -- | 'hITId'
  Prelude.Text ->
  ListAssignmentsForHIT
newListAssignmentsForHIT pHITId_ =
  ListAssignmentsForHIT'
    { assignmentStatuses =
        Prelude.Nothing,
      nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      hITId = pHITId_
    }

-- | The status of the assignments to return: Submitted | Approved | Rejected
listAssignmentsForHIT_assignmentStatuses :: Lens.Lens' ListAssignmentsForHIT (Prelude.Maybe [AssignmentStatus])
listAssignmentsForHIT_assignmentStatuses = Lens.lens (\ListAssignmentsForHIT' {assignmentStatuses} -> assignmentStatuses) (\s@ListAssignmentsForHIT' {} a -> s {assignmentStatuses = a} :: ListAssignmentsForHIT) Prelude.. Lens.mapping Lens.coerced

-- | Pagination token
listAssignmentsForHIT_nextToken :: Lens.Lens' ListAssignmentsForHIT (Prelude.Maybe Prelude.Text)
listAssignmentsForHIT_nextToken = Lens.lens (\ListAssignmentsForHIT' {nextToken} -> nextToken) (\s@ListAssignmentsForHIT' {} a -> s {nextToken = a} :: ListAssignmentsForHIT)

-- | Undocumented member.
listAssignmentsForHIT_maxResults :: Lens.Lens' ListAssignmentsForHIT (Prelude.Maybe Prelude.Natural)
listAssignmentsForHIT_maxResults = Lens.lens (\ListAssignmentsForHIT' {maxResults} -> maxResults) (\s@ListAssignmentsForHIT' {} a -> s {maxResults = a} :: ListAssignmentsForHIT)

-- | The ID of the HIT.
listAssignmentsForHIT_hITId :: Lens.Lens' ListAssignmentsForHIT Prelude.Text
listAssignmentsForHIT_hITId = Lens.lens (\ListAssignmentsForHIT' {hITId} -> hITId) (\s@ListAssignmentsForHIT' {} a -> s {hITId = a} :: ListAssignmentsForHIT)

instance Core.AWSPager ListAssignmentsForHIT where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listAssignmentsForHITResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? listAssignmentsForHITResponse_assignments
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listAssignmentsForHIT_nextToken
          Lens..~ rs
          Lens.^? listAssignmentsForHITResponse_nextToken
            Prelude.. Lens._Just

instance Core.AWSRequest ListAssignmentsForHIT where
  type
    AWSResponse ListAssignmentsForHIT =
      ListAssignmentsForHITResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListAssignmentsForHITResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> (x Core..?> "NumResults")
            Prelude.<*> (x Core..?> "Assignments" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListAssignmentsForHIT

instance Prelude.NFData ListAssignmentsForHIT

instance Core.ToHeaders ListAssignmentsForHIT where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "MTurkRequesterServiceV20170117.ListAssignmentsForHIT" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ListAssignmentsForHIT where
  toJSON ListAssignmentsForHIT' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("AssignmentStatuses" Core..=)
              Prelude.<$> assignmentStatuses,
            ("NextToken" Core..=) Prelude.<$> nextToken,
            ("MaxResults" Core..=) Prelude.<$> maxResults,
            Prelude.Just ("HITId" Core..= hITId)
          ]
      )

instance Core.ToPath ListAssignmentsForHIT where
  toPath = Prelude.const "/"

instance Core.ToQuery ListAssignmentsForHIT where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newListAssignmentsForHITResponse' smart constructor.
data ListAssignmentsForHITResponse = ListAssignmentsForHITResponse'
  { nextToken :: Prelude.Maybe Prelude.Text,
    -- | The number of assignments on the page in the filtered results list,
    -- equivalent to the number of assignments returned by this call.
    numResults :: Prelude.Maybe Prelude.Int,
    -- | The collection of Assignment data structures returned by this call.
    assignments :: Prelude.Maybe [Assignment],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListAssignmentsForHITResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listAssignmentsForHITResponse_nextToken' - Undocumented member.
--
-- 'numResults', 'listAssignmentsForHITResponse_numResults' - The number of assignments on the page in the filtered results list,
-- equivalent to the number of assignments returned by this call.
--
-- 'assignments', 'listAssignmentsForHITResponse_assignments' - The collection of Assignment data structures returned by this call.
--
-- 'httpStatus', 'listAssignmentsForHITResponse_httpStatus' - The response's http status code.
newListAssignmentsForHITResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListAssignmentsForHITResponse
newListAssignmentsForHITResponse pHttpStatus_ =
  ListAssignmentsForHITResponse'
    { nextToken =
        Prelude.Nothing,
      numResults = Prelude.Nothing,
      assignments = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Undocumented member.
listAssignmentsForHITResponse_nextToken :: Lens.Lens' ListAssignmentsForHITResponse (Prelude.Maybe Prelude.Text)
listAssignmentsForHITResponse_nextToken = Lens.lens (\ListAssignmentsForHITResponse' {nextToken} -> nextToken) (\s@ListAssignmentsForHITResponse' {} a -> s {nextToken = a} :: ListAssignmentsForHITResponse)

-- | The number of assignments on the page in the filtered results list,
-- equivalent to the number of assignments returned by this call.
listAssignmentsForHITResponse_numResults :: Lens.Lens' ListAssignmentsForHITResponse (Prelude.Maybe Prelude.Int)
listAssignmentsForHITResponse_numResults = Lens.lens (\ListAssignmentsForHITResponse' {numResults} -> numResults) (\s@ListAssignmentsForHITResponse' {} a -> s {numResults = a} :: ListAssignmentsForHITResponse)

-- | The collection of Assignment data structures returned by this call.
listAssignmentsForHITResponse_assignments :: Lens.Lens' ListAssignmentsForHITResponse (Prelude.Maybe [Assignment])
listAssignmentsForHITResponse_assignments = Lens.lens (\ListAssignmentsForHITResponse' {assignments} -> assignments) (\s@ListAssignmentsForHITResponse' {} a -> s {assignments = a} :: ListAssignmentsForHITResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
listAssignmentsForHITResponse_httpStatus :: Lens.Lens' ListAssignmentsForHITResponse Prelude.Int
listAssignmentsForHITResponse_httpStatus = Lens.lens (\ListAssignmentsForHITResponse' {httpStatus} -> httpStatus) (\s@ListAssignmentsForHITResponse' {} a -> s {httpStatus = a} :: ListAssignmentsForHITResponse)

instance Prelude.NFData ListAssignmentsForHITResponse