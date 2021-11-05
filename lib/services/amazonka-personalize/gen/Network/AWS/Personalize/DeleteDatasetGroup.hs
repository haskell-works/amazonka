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
-- Module      : Network.AWS.Personalize.DeleteDatasetGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a dataset group. Before you delete a dataset group, you must
-- delete the following:
--
-- -   All associated event trackers.
--
-- -   All associated solutions.
--
-- -   All datasets in the dataset group.
module Network.AWS.Personalize.DeleteDatasetGroup
  ( -- * Creating a Request
    DeleteDatasetGroup (..),
    newDeleteDatasetGroup,

    -- * Request Lenses
    deleteDatasetGroup_datasetGroupArn,

    -- * Destructuring the Response
    DeleteDatasetGroupResponse (..),
    newDeleteDatasetGroupResponse,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.Personalize.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeleteDatasetGroup' smart constructor.
data DeleteDatasetGroup = DeleteDatasetGroup'
  { -- | The ARN of the dataset group to delete.
    datasetGroupArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteDatasetGroup' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'datasetGroupArn', 'deleteDatasetGroup_datasetGroupArn' - The ARN of the dataset group to delete.
newDeleteDatasetGroup ::
  -- | 'datasetGroupArn'
  Prelude.Text ->
  DeleteDatasetGroup
newDeleteDatasetGroup pDatasetGroupArn_ =
  DeleteDatasetGroup'
    { datasetGroupArn =
        pDatasetGroupArn_
    }

-- | The ARN of the dataset group to delete.
deleteDatasetGroup_datasetGroupArn :: Lens.Lens' DeleteDatasetGroup Prelude.Text
deleteDatasetGroup_datasetGroupArn = Lens.lens (\DeleteDatasetGroup' {datasetGroupArn} -> datasetGroupArn) (\s@DeleteDatasetGroup' {} a -> s {datasetGroupArn = a} :: DeleteDatasetGroup)

instance Core.AWSRequest DeleteDatasetGroup where
  type
    AWSResponse DeleteDatasetGroup =
      DeleteDatasetGroupResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveNull DeleteDatasetGroupResponse'

instance Prelude.Hashable DeleteDatasetGroup

instance Prelude.NFData DeleteDatasetGroup

instance Core.ToHeaders DeleteDatasetGroup where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AmazonPersonalize.DeleteDatasetGroup" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DeleteDatasetGroup where
  toJSON DeleteDatasetGroup' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("datasetGroupArn" Core..= datasetGroupArn)
          ]
      )

instance Core.ToPath DeleteDatasetGroup where
  toPath = Prelude.const "/"

instance Core.ToQuery DeleteDatasetGroup where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteDatasetGroupResponse' smart constructor.
data DeleteDatasetGroupResponse = DeleteDatasetGroupResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteDatasetGroupResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newDeleteDatasetGroupResponse ::
  DeleteDatasetGroupResponse
newDeleteDatasetGroupResponse =
  DeleteDatasetGroupResponse'

instance Prelude.NFData DeleteDatasetGroupResponse