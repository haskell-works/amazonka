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
-- Module      : Network.AWS.MGN.StartTest
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lauches a Test Instance for specific Source Servers. This command starts
-- a LAUNCH job whose initiatedBy property is StartTest and changes the
-- SourceServer.lifeCycle.state property to TESTING.
module Network.AWS.MGN.StartTest
  ( -- * Creating a Request
    StartTest (..),
    newStartTest,

    -- * Request Lenses
    startTest_tags,
    startTest_sourceServerIDs,

    -- * Destructuring the Response
    StartTestResponse (..),
    newStartTestResponse,

    -- * Response Lenses
    startTestResponse_job,
    startTestResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.MGN.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newStartTest' smart constructor.
data StartTest = StartTest'
  { -- | Start Test by Tags.
    tags :: Prelude.Maybe (Core.Sensitive (Prelude.HashMap Prelude.Text Prelude.Text)),
    -- | Start Test for Source Server IDs.
    sourceServerIDs :: Prelude.NonEmpty Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'StartTest' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'startTest_tags' - Start Test by Tags.
--
-- 'sourceServerIDs', 'startTest_sourceServerIDs' - Start Test for Source Server IDs.
newStartTest ::
  -- | 'sourceServerIDs'
  Prelude.NonEmpty Prelude.Text ->
  StartTest
newStartTest pSourceServerIDs_ =
  StartTest'
    { tags = Prelude.Nothing,
      sourceServerIDs =
        Lens.coerced Lens.# pSourceServerIDs_
    }

-- | Start Test by Tags.
startTest_tags :: Lens.Lens' StartTest (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
startTest_tags = Lens.lens (\StartTest' {tags} -> tags) (\s@StartTest' {} a -> s {tags = a} :: StartTest) Prelude.. Lens.mapping (Core._Sensitive Prelude.. Lens.coerced)

-- | Start Test for Source Server IDs.
startTest_sourceServerIDs :: Lens.Lens' StartTest (Prelude.NonEmpty Prelude.Text)
startTest_sourceServerIDs = Lens.lens (\StartTest' {sourceServerIDs} -> sourceServerIDs) (\s@StartTest' {} a -> s {sourceServerIDs = a} :: StartTest) Prelude.. Lens.coerced

instance Core.AWSRequest StartTest where
  type AWSResponse StartTest = StartTestResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          StartTestResponse'
            Prelude.<$> (x Core..?> "job")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable StartTest

instance Prelude.NFData StartTest

instance Core.ToHeaders StartTest where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON StartTest where
  toJSON StartTest' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("tags" Core..=) Prelude.<$> tags,
            Prelude.Just
              ("sourceServerIDs" Core..= sourceServerIDs)
          ]
      )

instance Core.ToPath StartTest where
  toPath = Prelude.const "/StartTest"

instance Core.ToQuery StartTest where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newStartTestResponse' smart constructor.
data StartTestResponse = StartTestResponse'
  { -- | Start Test Job response.
    job :: Prelude.Maybe Job,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'StartTestResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'job', 'startTestResponse_job' - Start Test Job response.
--
-- 'httpStatus', 'startTestResponse_httpStatus' - The response's http status code.
newStartTestResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  StartTestResponse
newStartTestResponse pHttpStatus_ =
  StartTestResponse'
    { job = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Start Test Job response.
startTestResponse_job :: Lens.Lens' StartTestResponse (Prelude.Maybe Job)
startTestResponse_job = Lens.lens (\StartTestResponse' {job} -> job) (\s@StartTestResponse' {} a -> s {job = a} :: StartTestResponse)

-- | The response's http status code.
startTestResponse_httpStatus :: Lens.Lens' StartTestResponse Prelude.Int
startTestResponse_httpStatus = Lens.lens (\StartTestResponse' {httpStatus} -> httpStatus) (\s@StartTestResponse' {} a -> s {httpStatus = a} :: StartTestResponse)

instance Prelude.NFData StartTestResponse