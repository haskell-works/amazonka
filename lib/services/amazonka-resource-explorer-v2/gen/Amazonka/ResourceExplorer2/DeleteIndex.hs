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
-- Module      : Amazonka.ResourceExplorer2.DeleteIndex
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified index and turns off Amazon Web Services Resource
-- Explorer in the specified Amazon Web Services Region. When you delete an
-- index, Resource Explorer stops discovering and indexing resources in
-- that Region. Resource Explorer also deletes all views in that Region.
-- These actions occur as asynchronous background tasks. You can check to
-- see when the actions are complete by using the GetIndex operation and
-- checking the @Status@ response value.
module Amazonka.ResourceExplorer2.DeleteIndex
  ( -- * Creating a Request
    DeleteIndex (..),
    newDeleteIndex,

    -- * Request Lenses
    deleteIndex_arn,

    -- * Destructuring the Response
    DeleteIndexResponse (..),
    newDeleteIndexResponse,

    -- * Response Lenses
    deleteIndexResponse_lastUpdatedAt,
    deleteIndexResponse_arn,
    deleteIndexResponse_state,
    deleteIndexResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import Amazonka.ResourceExplorer2.Types
import qualified Amazonka.Response as Response

-- | /See:/ 'newDeleteIndex' smart constructor.
data DeleteIndex = DeleteIndex'
  { -- | The
    -- <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon resource name (ARN)>
    -- of the index that you want to delete.
    arn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteIndex' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'arn', 'deleteIndex_arn' - The
-- <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon resource name (ARN)>
-- of the index that you want to delete.
newDeleteIndex ::
  -- | 'arn'
  Prelude.Text ->
  DeleteIndex
newDeleteIndex pArn_ = DeleteIndex' {arn = pArn_}

-- | The
-- <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon resource name (ARN)>
-- of the index that you want to delete.
deleteIndex_arn :: Lens.Lens' DeleteIndex Prelude.Text
deleteIndex_arn = Lens.lens (\DeleteIndex' {arn} -> arn) (\s@DeleteIndex' {} a -> s {arn = a} :: DeleteIndex)

instance Core.AWSRequest DeleteIndex where
  type AWSResponse DeleteIndex = DeleteIndexResponse
  request overrides =
    Request.postJSON (overrides defaultService)
  response =
    Response.receiveJSON
      ( \s h x ->
          DeleteIndexResponse'
            Prelude.<$> (x Core..?> "LastUpdatedAt")
            Prelude.<*> (x Core..?> "Arn")
            Prelude.<*> (x Core..?> "State")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DeleteIndex where
  hashWithSalt _salt DeleteIndex' {..} =
    _salt `Prelude.hashWithSalt` arn

instance Prelude.NFData DeleteIndex where
  rnf DeleteIndex' {..} = Prelude.rnf arn

instance Core.ToHeaders DeleteIndex where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DeleteIndex where
  toJSON DeleteIndex' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("Arn" Core..= arn)]
      )

instance Core.ToPath DeleteIndex where
  toPath = Prelude.const "/DeleteIndex"

instance Core.ToQuery DeleteIndex where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteIndexResponse' smart constructor.
data DeleteIndexResponse = DeleteIndexResponse'
  { -- | The date and time when you last updated this index.
    lastUpdatedAt :: Prelude.Maybe Core.POSIX,
    -- | The
    -- <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon resource name (ARN)>
    -- of the index that you successfully started the deletion process.
    --
    -- This operation is asynchronous. To check its status, call the GetIndex
    -- operation.
    arn :: Prelude.Maybe Prelude.Text,
    -- | Indicates the current state of the index.
    state :: Prelude.Maybe IndexState,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteIndexResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'lastUpdatedAt', 'deleteIndexResponse_lastUpdatedAt' - The date and time when you last updated this index.
--
-- 'arn', 'deleteIndexResponse_arn' - The
-- <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon resource name (ARN)>
-- of the index that you successfully started the deletion process.
--
-- This operation is asynchronous. To check its status, call the GetIndex
-- operation.
--
-- 'state', 'deleteIndexResponse_state' - Indicates the current state of the index.
--
-- 'httpStatus', 'deleteIndexResponse_httpStatus' - The response's http status code.
newDeleteIndexResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DeleteIndexResponse
newDeleteIndexResponse pHttpStatus_ =
  DeleteIndexResponse'
    { lastUpdatedAt =
        Prelude.Nothing,
      arn = Prelude.Nothing,
      state = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The date and time when you last updated this index.
deleteIndexResponse_lastUpdatedAt :: Lens.Lens' DeleteIndexResponse (Prelude.Maybe Prelude.UTCTime)
deleteIndexResponse_lastUpdatedAt = Lens.lens (\DeleteIndexResponse' {lastUpdatedAt} -> lastUpdatedAt) (\s@DeleteIndexResponse' {} a -> s {lastUpdatedAt = a} :: DeleteIndexResponse) Prelude.. Lens.mapping Core._Time

-- | The
-- <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon resource name (ARN)>
-- of the index that you successfully started the deletion process.
--
-- This operation is asynchronous. To check its status, call the GetIndex
-- operation.
deleteIndexResponse_arn :: Lens.Lens' DeleteIndexResponse (Prelude.Maybe Prelude.Text)
deleteIndexResponse_arn = Lens.lens (\DeleteIndexResponse' {arn} -> arn) (\s@DeleteIndexResponse' {} a -> s {arn = a} :: DeleteIndexResponse)

-- | Indicates the current state of the index.
deleteIndexResponse_state :: Lens.Lens' DeleteIndexResponse (Prelude.Maybe IndexState)
deleteIndexResponse_state = Lens.lens (\DeleteIndexResponse' {state} -> state) (\s@DeleteIndexResponse' {} a -> s {state = a} :: DeleteIndexResponse)

-- | The response's http status code.
deleteIndexResponse_httpStatus :: Lens.Lens' DeleteIndexResponse Prelude.Int
deleteIndexResponse_httpStatus = Lens.lens (\DeleteIndexResponse' {httpStatus} -> httpStatus) (\s@DeleteIndexResponse' {} a -> s {httpStatus = a} :: DeleteIndexResponse)

instance Prelude.NFData DeleteIndexResponse where
  rnf DeleteIndexResponse' {..} =
    Prelude.rnf lastUpdatedAt
      `Prelude.seq` Prelude.rnf arn
      `Prelude.seq` Prelude.rnf state
      `Prelude.seq` Prelude.rnf httpStatus
