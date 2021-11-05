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
-- Module      : Network.AWS.Location.UpdatePlaceIndex
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified properties of a given place index resource.
module Network.AWS.Location.UpdatePlaceIndex
  ( -- * Creating a Request
    UpdatePlaceIndex (..),
    newUpdatePlaceIndex,

    -- * Request Lenses
    updatePlaceIndex_pricingPlan,
    updatePlaceIndex_dataSourceConfiguration,
    updatePlaceIndex_description,
    updatePlaceIndex_indexName,

    -- * Destructuring the Response
    UpdatePlaceIndexResponse (..),
    newUpdatePlaceIndexResponse,

    -- * Response Lenses
    updatePlaceIndexResponse_httpStatus,
    updatePlaceIndexResponse_indexArn,
    updatePlaceIndexResponse_indexName,
    updatePlaceIndexResponse_updateTime,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.Location.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newUpdatePlaceIndex' smart constructor.
data UpdatePlaceIndex = UpdatePlaceIndex'
  { -- | Updates the pricing plan for the place index resource.
    --
    -- For more information about each pricing plan option restrictions, see
    -- <https://aws.amazon.com/location/pricing/ Amazon Location Service pricing>.
    pricingPlan :: Prelude.Maybe PricingPlan,
    -- | Updates the data storage option for the place index resource.
    dataSourceConfiguration :: Prelude.Maybe DataSourceConfiguration,
    -- | Updates the description for the place index resource.
    description :: Prelude.Maybe Prelude.Text,
    -- | The name of the place index resource to update.
    indexName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdatePlaceIndex' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'pricingPlan', 'updatePlaceIndex_pricingPlan' - Updates the pricing plan for the place index resource.
--
-- For more information about each pricing plan option restrictions, see
-- <https://aws.amazon.com/location/pricing/ Amazon Location Service pricing>.
--
-- 'dataSourceConfiguration', 'updatePlaceIndex_dataSourceConfiguration' - Updates the data storage option for the place index resource.
--
-- 'description', 'updatePlaceIndex_description' - Updates the description for the place index resource.
--
-- 'indexName', 'updatePlaceIndex_indexName' - The name of the place index resource to update.
newUpdatePlaceIndex ::
  -- | 'indexName'
  Prelude.Text ->
  UpdatePlaceIndex
newUpdatePlaceIndex pIndexName_ =
  UpdatePlaceIndex'
    { pricingPlan = Prelude.Nothing,
      dataSourceConfiguration = Prelude.Nothing,
      description = Prelude.Nothing,
      indexName = pIndexName_
    }

-- | Updates the pricing plan for the place index resource.
--
-- For more information about each pricing plan option restrictions, see
-- <https://aws.amazon.com/location/pricing/ Amazon Location Service pricing>.
updatePlaceIndex_pricingPlan :: Lens.Lens' UpdatePlaceIndex (Prelude.Maybe PricingPlan)
updatePlaceIndex_pricingPlan = Lens.lens (\UpdatePlaceIndex' {pricingPlan} -> pricingPlan) (\s@UpdatePlaceIndex' {} a -> s {pricingPlan = a} :: UpdatePlaceIndex)

-- | Updates the data storage option for the place index resource.
updatePlaceIndex_dataSourceConfiguration :: Lens.Lens' UpdatePlaceIndex (Prelude.Maybe DataSourceConfiguration)
updatePlaceIndex_dataSourceConfiguration = Lens.lens (\UpdatePlaceIndex' {dataSourceConfiguration} -> dataSourceConfiguration) (\s@UpdatePlaceIndex' {} a -> s {dataSourceConfiguration = a} :: UpdatePlaceIndex)

-- | Updates the description for the place index resource.
updatePlaceIndex_description :: Lens.Lens' UpdatePlaceIndex (Prelude.Maybe Prelude.Text)
updatePlaceIndex_description = Lens.lens (\UpdatePlaceIndex' {description} -> description) (\s@UpdatePlaceIndex' {} a -> s {description = a} :: UpdatePlaceIndex)

-- | The name of the place index resource to update.
updatePlaceIndex_indexName :: Lens.Lens' UpdatePlaceIndex Prelude.Text
updatePlaceIndex_indexName = Lens.lens (\UpdatePlaceIndex' {indexName} -> indexName) (\s@UpdatePlaceIndex' {} a -> s {indexName = a} :: UpdatePlaceIndex)

instance Core.AWSRequest UpdatePlaceIndex where
  type
    AWSResponse UpdatePlaceIndex =
      UpdatePlaceIndexResponse
  request = Request.patchJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdatePlaceIndexResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "IndexArn")
            Prelude.<*> (x Core..:> "IndexName")
            Prelude.<*> (x Core..:> "UpdateTime")
      )

instance Prelude.Hashable UpdatePlaceIndex

instance Prelude.NFData UpdatePlaceIndex

instance Core.ToHeaders UpdatePlaceIndex where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdatePlaceIndex where
  toJSON UpdatePlaceIndex' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("PricingPlan" Core..=) Prelude.<$> pricingPlan,
            ("DataSourceConfiguration" Core..=)
              Prelude.<$> dataSourceConfiguration,
            ("Description" Core..=) Prelude.<$> description
          ]
      )

instance Core.ToPath UpdatePlaceIndex where
  toPath UpdatePlaceIndex' {..} =
    Prelude.mconcat
      ["/places/v0/indexes/", Core.toBS indexName]

instance Core.ToQuery UpdatePlaceIndex where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdatePlaceIndexResponse' smart constructor.
data UpdatePlaceIndexResponse = UpdatePlaceIndexResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The Amazon Resource Name (ARN) of the upated place index resource. Used
    -- to specify a resource across AWS.
    --
    -- -   Format example:
    --     @arn:aws:geo:region:account-id:place- index\/ExamplePlaceIndex@
    indexArn :: Prelude.Text,
    -- | The name of the updated place index resource.
    indexName :: Prelude.Text,
    -- | The timestamp for when the place index resource was last updated in
    -- <https://www.iso.org/iso-8601-date-and-time-format.html ISO 8601>
    -- format: @YYYY-MM-DDThh:mm:ss.sssZ@.
    updateTime :: Core.POSIX
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdatePlaceIndexResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'updatePlaceIndexResponse_httpStatus' - The response's http status code.
--
-- 'indexArn', 'updatePlaceIndexResponse_indexArn' - The Amazon Resource Name (ARN) of the upated place index resource. Used
-- to specify a resource across AWS.
--
-- -   Format example:
--     @arn:aws:geo:region:account-id:place- index\/ExamplePlaceIndex@
--
-- 'indexName', 'updatePlaceIndexResponse_indexName' - The name of the updated place index resource.
--
-- 'updateTime', 'updatePlaceIndexResponse_updateTime' - The timestamp for when the place index resource was last updated in
-- <https://www.iso.org/iso-8601-date-and-time-format.html ISO 8601>
-- format: @YYYY-MM-DDThh:mm:ss.sssZ@.
newUpdatePlaceIndexResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'indexArn'
  Prelude.Text ->
  -- | 'indexName'
  Prelude.Text ->
  -- | 'updateTime'
  Prelude.UTCTime ->
  UpdatePlaceIndexResponse
newUpdatePlaceIndexResponse
  pHttpStatus_
  pIndexArn_
  pIndexName_
  pUpdateTime_ =
    UpdatePlaceIndexResponse'
      { httpStatus =
          pHttpStatus_,
        indexArn = pIndexArn_,
        indexName = pIndexName_,
        updateTime = Core._Time Lens.# pUpdateTime_
      }

-- | The response's http status code.
updatePlaceIndexResponse_httpStatus :: Lens.Lens' UpdatePlaceIndexResponse Prelude.Int
updatePlaceIndexResponse_httpStatus = Lens.lens (\UpdatePlaceIndexResponse' {httpStatus} -> httpStatus) (\s@UpdatePlaceIndexResponse' {} a -> s {httpStatus = a} :: UpdatePlaceIndexResponse)

-- | The Amazon Resource Name (ARN) of the upated place index resource. Used
-- to specify a resource across AWS.
--
-- -   Format example:
--     @arn:aws:geo:region:account-id:place- index\/ExamplePlaceIndex@
updatePlaceIndexResponse_indexArn :: Lens.Lens' UpdatePlaceIndexResponse Prelude.Text
updatePlaceIndexResponse_indexArn = Lens.lens (\UpdatePlaceIndexResponse' {indexArn} -> indexArn) (\s@UpdatePlaceIndexResponse' {} a -> s {indexArn = a} :: UpdatePlaceIndexResponse)

-- | The name of the updated place index resource.
updatePlaceIndexResponse_indexName :: Lens.Lens' UpdatePlaceIndexResponse Prelude.Text
updatePlaceIndexResponse_indexName = Lens.lens (\UpdatePlaceIndexResponse' {indexName} -> indexName) (\s@UpdatePlaceIndexResponse' {} a -> s {indexName = a} :: UpdatePlaceIndexResponse)

-- | The timestamp for when the place index resource was last updated in
-- <https://www.iso.org/iso-8601-date-and-time-format.html ISO 8601>
-- format: @YYYY-MM-DDThh:mm:ss.sssZ@.
updatePlaceIndexResponse_updateTime :: Lens.Lens' UpdatePlaceIndexResponse Prelude.UTCTime
updatePlaceIndexResponse_updateTime = Lens.lens (\UpdatePlaceIndexResponse' {updateTime} -> updateTime) (\s@UpdatePlaceIndexResponse' {} a -> s {updateTime = a} :: UpdatePlaceIndexResponse) Prelude.. Core._Time

instance Prelude.NFData UpdatePlaceIndexResponse