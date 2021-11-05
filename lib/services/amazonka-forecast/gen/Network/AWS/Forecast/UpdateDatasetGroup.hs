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
-- Module      : Network.AWS.Forecast.UpdateDatasetGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Replaces the datasets in a dataset group with the specified datasets.
--
-- The @Status@ of the dataset group must be @ACTIVE@ before you can use
-- the dataset group to create a predictor. Use the DescribeDatasetGroup
-- operation to get the status.
module Network.AWS.Forecast.UpdateDatasetGroup
  ( -- * Creating a Request
    UpdateDatasetGroup (..),
    newUpdateDatasetGroup,

    -- * Request Lenses
    updateDatasetGroup_datasetGroupArn,
    updateDatasetGroup_datasetArns,

    -- * Destructuring the Response
    UpdateDatasetGroupResponse (..),
    newUpdateDatasetGroupResponse,

    -- * Response Lenses
    updateDatasetGroupResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.Forecast.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newUpdateDatasetGroup' smart constructor.
data UpdateDatasetGroup = UpdateDatasetGroup'
  { -- | The ARN of the dataset group.
    datasetGroupArn :: Prelude.Text,
    -- | An array of the Amazon Resource Names (ARNs) of the datasets to add to
    -- the dataset group.
    datasetArns :: [Prelude.Text]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateDatasetGroup' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'datasetGroupArn', 'updateDatasetGroup_datasetGroupArn' - The ARN of the dataset group.
--
-- 'datasetArns', 'updateDatasetGroup_datasetArns' - An array of the Amazon Resource Names (ARNs) of the datasets to add to
-- the dataset group.
newUpdateDatasetGroup ::
  -- | 'datasetGroupArn'
  Prelude.Text ->
  UpdateDatasetGroup
newUpdateDatasetGroup pDatasetGroupArn_ =
  UpdateDatasetGroup'
    { datasetGroupArn =
        pDatasetGroupArn_,
      datasetArns = Prelude.mempty
    }

-- | The ARN of the dataset group.
updateDatasetGroup_datasetGroupArn :: Lens.Lens' UpdateDatasetGroup Prelude.Text
updateDatasetGroup_datasetGroupArn = Lens.lens (\UpdateDatasetGroup' {datasetGroupArn} -> datasetGroupArn) (\s@UpdateDatasetGroup' {} a -> s {datasetGroupArn = a} :: UpdateDatasetGroup)

-- | An array of the Amazon Resource Names (ARNs) of the datasets to add to
-- the dataset group.
updateDatasetGroup_datasetArns :: Lens.Lens' UpdateDatasetGroup [Prelude.Text]
updateDatasetGroup_datasetArns = Lens.lens (\UpdateDatasetGroup' {datasetArns} -> datasetArns) (\s@UpdateDatasetGroup' {} a -> s {datasetArns = a} :: UpdateDatasetGroup) Prelude.. Lens.coerced

instance Core.AWSRequest UpdateDatasetGroup where
  type
    AWSResponse UpdateDatasetGroup =
      UpdateDatasetGroupResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          UpdateDatasetGroupResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdateDatasetGroup

instance Prelude.NFData UpdateDatasetGroup

instance Core.ToHeaders UpdateDatasetGroup where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AmazonForecast.UpdateDatasetGroup" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateDatasetGroup where
  toJSON UpdateDatasetGroup' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("DatasetGroupArn" Core..= datasetGroupArn),
            Prelude.Just ("DatasetArns" Core..= datasetArns)
          ]
      )

instance Core.ToPath UpdateDatasetGroup where
  toPath = Prelude.const "/"

instance Core.ToQuery UpdateDatasetGroup where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateDatasetGroupResponse' smart constructor.
data UpdateDatasetGroupResponse = UpdateDatasetGroupResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateDatasetGroupResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'updateDatasetGroupResponse_httpStatus' - The response's http status code.
newUpdateDatasetGroupResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateDatasetGroupResponse
newUpdateDatasetGroupResponse pHttpStatus_ =
  UpdateDatasetGroupResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
updateDatasetGroupResponse_httpStatus :: Lens.Lens' UpdateDatasetGroupResponse Prelude.Int
updateDatasetGroupResponse_httpStatus = Lens.lens (\UpdateDatasetGroupResponse' {httpStatus} -> httpStatus) (\s@UpdateDatasetGroupResponse' {} a -> s {httpStatus = a} :: UpdateDatasetGroupResponse)

instance Prelude.NFData UpdateDatasetGroupResponse