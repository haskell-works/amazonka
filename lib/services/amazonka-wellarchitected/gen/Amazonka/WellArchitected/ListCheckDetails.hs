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
-- Module      : Amazonka.WellArchitected.ListCheckDetails
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List of Trusted Advisor check details by account related to the
-- workload.
module Amazonka.WellArchitected.ListCheckDetails
  ( -- * Creating a Request
    ListCheckDetails (..),
    newListCheckDetails,

    -- * Request Lenses
    listCheckDetails_nextToken,
    listCheckDetails_maxResults,
    listCheckDetails_workloadId,
    listCheckDetails_lensArn,
    listCheckDetails_pillarId,
    listCheckDetails_questionId,
    listCheckDetails_choiceId,

    -- * Destructuring the Response
    ListCheckDetailsResponse (..),
    newListCheckDetailsResponse,

    -- * Response Lenses
    listCheckDetailsResponse_nextToken,
    listCheckDetailsResponse_checkDetails,
    listCheckDetailsResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.WellArchitected.Types

-- | /See:/ 'newListCheckDetails' smart constructor.
data ListCheckDetails = ListCheckDetails'
  { nextToken :: Prelude.Maybe Prelude.Text,
    maxResults :: Prelude.Maybe Prelude.Natural,
    workloadId :: Prelude.Text,
    -- | Well-Architected Lens ARN.
    lensArn :: Prelude.Text,
    pillarId :: Prelude.Text,
    questionId :: Prelude.Text,
    choiceId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListCheckDetails' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listCheckDetails_nextToken' - Undocumented member.
--
-- 'maxResults', 'listCheckDetails_maxResults' - Undocumented member.
--
-- 'workloadId', 'listCheckDetails_workloadId' - Undocumented member.
--
-- 'lensArn', 'listCheckDetails_lensArn' - Well-Architected Lens ARN.
--
-- 'pillarId', 'listCheckDetails_pillarId' - Undocumented member.
--
-- 'questionId', 'listCheckDetails_questionId' - Undocumented member.
--
-- 'choiceId', 'listCheckDetails_choiceId' - Undocumented member.
newListCheckDetails ::
  -- | 'workloadId'
  Prelude.Text ->
  -- | 'lensArn'
  Prelude.Text ->
  -- | 'pillarId'
  Prelude.Text ->
  -- | 'questionId'
  Prelude.Text ->
  -- | 'choiceId'
  Prelude.Text ->
  ListCheckDetails
newListCheckDetails
  pWorkloadId_
  pLensArn_
  pPillarId_
  pQuestionId_
  pChoiceId_ =
    ListCheckDetails'
      { nextToken = Prelude.Nothing,
        maxResults = Prelude.Nothing,
        workloadId = pWorkloadId_,
        lensArn = pLensArn_,
        pillarId = pPillarId_,
        questionId = pQuestionId_,
        choiceId = pChoiceId_
      }

-- | Undocumented member.
listCheckDetails_nextToken :: Lens.Lens' ListCheckDetails (Prelude.Maybe Prelude.Text)
listCheckDetails_nextToken = Lens.lens (\ListCheckDetails' {nextToken} -> nextToken) (\s@ListCheckDetails' {} a -> s {nextToken = a} :: ListCheckDetails)

-- | Undocumented member.
listCheckDetails_maxResults :: Lens.Lens' ListCheckDetails (Prelude.Maybe Prelude.Natural)
listCheckDetails_maxResults = Lens.lens (\ListCheckDetails' {maxResults} -> maxResults) (\s@ListCheckDetails' {} a -> s {maxResults = a} :: ListCheckDetails)

-- | Undocumented member.
listCheckDetails_workloadId :: Lens.Lens' ListCheckDetails Prelude.Text
listCheckDetails_workloadId = Lens.lens (\ListCheckDetails' {workloadId} -> workloadId) (\s@ListCheckDetails' {} a -> s {workloadId = a} :: ListCheckDetails)

-- | Well-Architected Lens ARN.
listCheckDetails_lensArn :: Lens.Lens' ListCheckDetails Prelude.Text
listCheckDetails_lensArn = Lens.lens (\ListCheckDetails' {lensArn} -> lensArn) (\s@ListCheckDetails' {} a -> s {lensArn = a} :: ListCheckDetails)

-- | Undocumented member.
listCheckDetails_pillarId :: Lens.Lens' ListCheckDetails Prelude.Text
listCheckDetails_pillarId = Lens.lens (\ListCheckDetails' {pillarId} -> pillarId) (\s@ListCheckDetails' {} a -> s {pillarId = a} :: ListCheckDetails)

-- | Undocumented member.
listCheckDetails_questionId :: Lens.Lens' ListCheckDetails Prelude.Text
listCheckDetails_questionId = Lens.lens (\ListCheckDetails' {questionId} -> questionId) (\s@ListCheckDetails' {} a -> s {questionId = a} :: ListCheckDetails)

-- | Undocumented member.
listCheckDetails_choiceId :: Lens.Lens' ListCheckDetails Prelude.Text
listCheckDetails_choiceId = Lens.lens (\ListCheckDetails' {choiceId} -> choiceId) (\s@ListCheckDetails' {} a -> s {choiceId = a} :: ListCheckDetails)

instance Core.AWSRequest ListCheckDetails where
  type
    AWSResponse ListCheckDetails =
      ListCheckDetailsResponse
  request overrides =
    Request.postJSON (overrides defaultService)
  response =
    Response.receiveJSON
      ( \s h x ->
          ListCheckDetailsResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> (x Core..?> "CheckDetails" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListCheckDetails where
  hashWithSalt _salt ListCheckDetails' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` maxResults
      `Prelude.hashWithSalt` workloadId
      `Prelude.hashWithSalt` lensArn
      `Prelude.hashWithSalt` pillarId
      `Prelude.hashWithSalt` questionId
      `Prelude.hashWithSalt` choiceId

instance Prelude.NFData ListCheckDetails where
  rnf ListCheckDetails' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf workloadId
      `Prelude.seq` Prelude.rnf lensArn
      `Prelude.seq` Prelude.rnf pillarId
      `Prelude.seq` Prelude.rnf questionId
      `Prelude.seq` Prelude.rnf choiceId

instance Core.ToHeaders ListCheckDetails where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ListCheckDetails where
  toJSON ListCheckDetails' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("NextToken" Core..=) Prelude.<$> nextToken,
            ("MaxResults" Core..=) Prelude.<$> maxResults,
            Prelude.Just ("LensArn" Core..= lensArn),
            Prelude.Just ("PillarId" Core..= pillarId),
            Prelude.Just ("QuestionId" Core..= questionId),
            Prelude.Just ("ChoiceId" Core..= choiceId)
          ]
      )

instance Core.ToPath ListCheckDetails where
  toPath ListCheckDetails' {..} =
    Prelude.mconcat
      ["/workloads/", Core.toBS workloadId, "/checks"]

instance Core.ToQuery ListCheckDetails where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newListCheckDetailsResponse' smart constructor.
data ListCheckDetailsResponse = ListCheckDetailsResponse'
  { nextToken :: Prelude.Maybe Prelude.Text,
    -- | The details about the Trusted Advisor checks related to the
    -- Well-Architected best practice.
    checkDetails :: Prelude.Maybe [CheckDetail],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListCheckDetailsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listCheckDetailsResponse_nextToken' - Undocumented member.
--
-- 'checkDetails', 'listCheckDetailsResponse_checkDetails' - The details about the Trusted Advisor checks related to the
-- Well-Architected best practice.
--
-- 'httpStatus', 'listCheckDetailsResponse_httpStatus' - The response's http status code.
newListCheckDetailsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListCheckDetailsResponse
newListCheckDetailsResponse pHttpStatus_ =
  ListCheckDetailsResponse'
    { nextToken =
        Prelude.Nothing,
      checkDetails = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Undocumented member.
listCheckDetailsResponse_nextToken :: Lens.Lens' ListCheckDetailsResponse (Prelude.Maybe Prelude.Text)
listCheckDetailsResponse_nextToken = Lens.lens (\ListCheckDetailsResponse' {nextToken} -> nextToken) (\s@ListCheckDetailsResponse' {} a -> s {nextToken = a} :: ListCheckDetailsResponse)

-- | The details about the Trusted Advisor checks related to the
-- Well-Architected best practice.
listCheckDetailsResponse_checkDetails :: Lens.Lens' ListCheckDetailsResponse (Prelude.Maybe [CheckDetail])
listCheckDetailsResponse_checkDetails = Lens.lens (\ListCheckDetailsResponse' {checkDetails} -> checkDetails) (\s@ListCheckDetailsResponse' {} a -> s {checkDetails = a} :: ListCheckDetailsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
listCheckDetailsResponse_httpStatus :: Lens.Lens' ListCheckDetailsResponse Prelude.Int
listCheckDetailsResponse_httpStatus = Lens.lens (\ListCheckDetailsResponse' {httpStatus} -> httpStatus) (\s@ListCheckDetailsResponse' {} a -> s {httpStatus = a} :: ListCheckDetailsResponse)

instance Prelude.NFData ListCheckDetailsResponse where
  rnf ListCheckDetailsResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf checkDetails
      `Prelude.seq` Prelude.rnf httpStatus
