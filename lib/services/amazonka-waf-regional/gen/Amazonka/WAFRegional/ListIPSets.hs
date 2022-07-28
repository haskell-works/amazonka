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
-- Module      : Amazonka.WAFRegional.ListIPSets
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This is __AWS WAF Classic__ documentation. For more information, see
-- <https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html AWS WAF Classic>
-- in the developer guide.
--
-- __For the latest version of AWS WAF__, use the AWS WAFV2 API and see the
-- <https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html AWS WAF Developer Guide>.
-- With the latest version, AWS WAF has a single set of endpoints for
-- regional and global use.
--
-- Returns an array of IPSetSummary objects in the response.
module Amazonka.WAFRegional.ListIPSets
  ( -- * Creating a Request
    ListIPSets (..),
    newListIPSets,

    -- * Request Lenses
    listIPSets_limit,
    listIPSets_nextMarker,

    -- * Destructuring the Response
    ListIPSetsResponse (..),
    newListIPSetsResponse,

    -- * Response Lenses
    listIPSetsResponse_iPSets,
    listIPSetsResponse_nextMarker,
    listIPSetsResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.WAFRegional.Types

-- | /See:/ 'newListIPSets' smart constructor.
data ListIPSets = ListIPSets'
  { -- | Specifies the number of @IPSet@ objects that you want AWS WAF to return
    -- for this request. If you have more @IPSet@ objects than the number you
    -- specify for @Limit@, the response includes a @NextMarker@ value that you
    -- can use to get another batch of @IPSet@ objects.
    limit :: Prelude.Maybe Prelude.Natural,
    -- | AWS WAF returns a @NextMarker@ value in the response that allows you to
    -- list another group of @IPSets@. For the second and subsequent
    -- @ListIPSets@ requests, specify the value of @NextMarker@ from the
    -- previous response to get information about another batch of @IPSets@.
    nextMarker :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListIPSets' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'limit', 'listIPSets_limit' - Specifies the number of @IPSet@ objects that you want AWS WAF to return
-- for this request. If you have more @IPSet@ objects than the number you
-- specify for @Limit@, the response includes a @NextMarker@ value that you
-- can use to get another batch of @IPSet@ objects.
--
-- 'nextMarker', 'listIPSets_nextMarker' - AWS WAF returns a @NextMarker@ value in the response that allows you to
-- list another group of @IPSets@. For the second and subsequent
-- @ListIPSets@ requests, specify the value of @NextMarker@ from the
-- previous response to get information about another batch of @IPSets@.
newListIPSets ::
  ListIPSets
newListIPSets =
  ListIPSets'
    { limit = Prelude.Nothing,
      nextMarker = Prelude.Nothing
    }

-- | Specifies the number of @IPSet@ objects that you want AWS WAF to return
-- for this request. If you have more @IPSet@ objects than the number you
-- specify for @Limit@, the response includes a @NextMarker@ value that you
-- can use to get another batch of @IPSet@ objects.
listIPSets_limit :: Lens.Lens' ListIPSets (Prelude.Maybe Prelude.Natural)
listIPSets_limit = Lens.lens (\ListIPSets' {limit} -> limit) (\s@ListIPSets' {} a -> s {limit = a} :: ListIPSets)

-- | AWS WAF returns a @NextMarker@ value in the response that allows you to
-- list another group of @IPSets@. For the second and subsequent
-- @ListIPSets@ requests, specify the value of @NextMarker@ from the
-- previous response to get information about another batch of @IPSets@.
listIPSets_nextMarker :: Lens.Lens' ListIPSets (Prelude.Maybe Prelude.Text)
listIPSets_nextMarker = Lens.lens (\ListIPSets' {nextMarker} -> nextMarker) (\s@ListIPSets' {} a -> s {nextMarker = a} :: ListIPSets)

instance Core.AWSRequest ListIPSets where
  type AWSResponse ListIPSets = ListIPSetsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListIPSetsResponse'
            Prelude.<$> (x Core..?> "IPSets" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "NextMarker")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListIPSets where
  hashWithSalt _salt ListIPSets' {..} =
    _salt `Prelude.hashWithSalt` limit
      `Prelude.hashWithSalt` nextMarker

instance Prelude.NFData ListIPSets where
  rnf ListIPSets' {..} =
    Prelude.rnf limit
      `Prelude.seq` Prelude.rnf nextMarker

instance Core.ToHeaders ListIPSets where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSWAF_Regional_20161128.ListIPSets" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ListIPSets where
  toJSON ListIPSets' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Limit" Core..=) Prelude.<$> limit,
            ("NextMarker" Core..=) Prelude.<$> nextMarker
          ]
      )

instance Core.ToPath ListIPSets where
  toPath = Prelude.const "/"

instance Core.ToQuery ListIPSets where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newListIPSetsResponse' smart constructor.
data ListIPSetsResponse = ListIPSetsResponse'
  { -- | An array of IPSetSummary objects.
    iPSets :: Prelude.Maybe [IPSetSummary],
    -- | To list more @IPSet@ objects, submit another @ListIPSets@ request, and
    -- in the next request use the @NextMarker@ response value as the
    -- @NextMarker@ value.
    nextMarker :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListIPSetsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'iPSets', 'listIPSetsResponse_iPSets' - An array of IPSetSummary objects.
--
-- 'nextMarker', 'listIPSetsResponse_nextMarker' - To list more @IPSet@ objects, submit another @ListIPSets@ request, and
-- in the next request use the @NextMarker@ response value as the
-- @NextMarker@ value.
--
-- 'httpStatus', 'listIPSetsResponse_httpStatus' - The response's http status code.
newListIPSetsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListIPSetsResponse
newListIPSetsResponse pHttpStatus_ =
  ListIPSetsResponse'
    { iPSets = Prelude.Nothing,
      nextMarker = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | An array of IPSetSummary objects.
listIPSetsResponse_iPSets :: Lens.Lens' ListIPSetsResponse (Prelude.Maybe [IPSetSummary])
listIPSetsResponse_iPSets = Lens.lens (\ListIPSetsResponse' {iPSets} -> iPSets) (\s@ListIPSetsResponse' {} a -> s {iPSets = a} :: ListIPSetsResponse) Prelude.. Lens.mapping Lens.coerced

-- | To list more @IPSet@ objects, submit another @ListIPSets@ request, and
-- in the next request use the @NextMarker@ response value as the
-- @NextMarker@ value.
listIPSetsResponse_nextMarker :: Lens.Lens' ListIPSetsResponse (Prelude.Maybe Prelude.Text)
listIPSetsResponse_nextMarker = Lens.lens (\ListIPSetsResponse' {nextMarker} -> nextMarker) (\s@ListIPSetsResponse' {} a -> s {nextMarker = a} :: ListIPSetsResponse)

-- | The response's http status code.
listIPSetsResponse_httpStatus :: Lens.Lens' ListIPSetsResponse Prelude.Int
listIPSetsResponse_httpStatus = Lens.lens (\ListIPSetsResponse' {httpStatus} -> httpStatus) (\s@ListIPSetsResponse' {} a -> s {httpStatus = a} :: ListIPSetsResponse)

instance Prelude.NFData ListIPSetsResponse where
  rnf ListIPSetsResponse' {..} =
    Prelude.rnf iPSets
      `Prelude.seq` Prelude.rnf nextMarker
      `Prelude.seq` Prelude.rnf httpStatus