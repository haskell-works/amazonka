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
-- Module      : Amazonka.LookoutEquipment.DescribeDataset
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provides a JSON description of the data that is in each time series
-- dataset, including names, column names, and data types.
module Amazonka.LookoutEquipment.DescribeDataset
  ( -- * Creating a Request
    DescribeDataset (..),
    newDescribeDataset,

    -- * Request Lenses
    describeDataset_datasetName,

    -- * Destructuring the Response
    DescribeDatasetResponse (..),
    newDescribeDatasetResponse,

    -- * Response Lenses
    describeDatasetResponse_serverSideKmsKeyId,
    describeDatasetResponse_lastUpdatedAt,
    describeDatasetResponse_datasetName,
    describeDatasetResponse_status,
    describeDatasetResponse_datasetArn,
    describeDatasetResponse_ingestionInputConfiguration,
    describeDatasetResponse_schema,
    describeDatasetResponse_createdAt,
    describeDatasetResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.LookoutEquipment.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newDescribeDataset' smart constructor.
data DescribeDataset = DescribeDataset'
  { -- | The name of the dataset to be described.
    datasetName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeDataset' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'datasetName', 'describeDataset_datasetName' - The name of the dataset to be described.
newDescribeDataset ::
  -- | 'datasetName'
  Prelude.Text ->
  DescribeDataset
newDescribeDataset pDatasetName_ =
  DescribeDataset' {datasetName = pDatasetName_}

-- | The name of the dataset to be described.
describeDataset_datasetName :: Lens.Lens' DescribeDataset Prelude.Text
describeDataset_datasetName = Lens.lens (\DescribeDataset' {datasetName} -> datasetName) (\s@DescribeDataset' {} a -> s {datasetName = a} :: DescribeDataset)

instance Core.AWSRequest DescribeDataset where
  type
    AWSResponse DescribeDataset =
      DescribeDatasetResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeDatasetResponse'
            Prelude.<$> (x Core..?> "ServerSideKmsKeyId")
            Prelude.<*> (x Core..?> "LastUpdatedAt")
            Prelude.<*> (x Core..?> "DatasetName")
            Prelude.<*> (x Core..?> "Status")
            Prelude.<*> (x Core..?> "DatasetArn")
            Prelude.<*> (x Core..?> "IngestionInputConfiguration")
            Prelude.<*> (x Core..?> "Schema")
            Prelude.<*> (x Core..?> "CreatedAt")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeDataset where
  hashWithSalt _salt DescribeDataset' {..} =
    _salt `Prelude.hashWithSalt` datasetName

instance Prelude.NFData DescribeDataset where
  rnf DescribeDataset' {..} = Prelude.rnf datasetName

instance Core.ToHeaders DescribeDataset where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSLookoutEquipmentFrontendService.DescribeDataset" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.0" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DescribeDataset where
  toJSON DescribeDataset' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("DatasetName" Core..= datasetName)]
      )

instance Core.ToPath DescribeDataset where
  toPath = Prelude.const "/"

instance Core.ToQuery DescribeDataset where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeDatasetResponse' smart constructor.
data DescribeDatasetResponse = DescribeDatasetResponse'
  { -- | Provides the identifier of the KMS key used to encrypt dataset data by
    -- Amazon Lookout for Equipment.
    serverSideKmsKeyId :: Prelude.Maybe Prelude.Text,
    -- | Specifies the time the dataset was last updated, if it was.
    lastUpdatedAt :: Prelude.Maybe Core.POSIX,
    -- | The name of the dataset being described.
    datasetName :: Prelude.Maybe Prelude.Text,
    -- | Indicates the status of the dataset.
    status :: Prelude.Maybe DatasetStatus,
    -- | The Amazon Resource Name (ARN) of the dataset being described.
    datasetArn :: Prelude.Maybe Prelude.Text,
    -- | Specifies the S3 location configuration for the data input for the data
    -- ingestion job.
    ingestionInputConfiguration :: Prelude.Maybe IngestionInputConfiguration,
    -- | A JSON description of the data that is in each time series dataset,
    -- including names, column names, and data types.
    schema :: Prelude.Maybe Prelude.Text,
    -- | Specifies the time the dataset was created in Amazon Lookout for
    -- Equipment.
    createdAt :: Prelude.Maybe Core.POSIX,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeDatasetResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'serverSideKmsKeyId', 'describeDatasetResponse_serverSideKmsKeyId' - Provides the identifier of the KMS key used to encrypt dataset data by
-- Amazon Lookout for Equipment.
--
-- 'lastUpdatedAt', 'describeDatasetResponse_lastUpdatedAt' - Specifies the time the dataset was last updated, if it was.
--
-- 'datasetName', 'describeDatasetResponse_datasetName' - The name of the dataset being described.
--
-- 'status', 'describeDatasetResponse_status' - Indicates the status of the dataset.
--
-- 'datasetArn', 'describeDatasetResponse_datasetArn' - The Amazon Resource Name (ARN) of the dataset being described.
--
-- 'ingestionInputConfiguration', 'describeDatasetResponse_ingestionInputConfiguration' - Specifies the S3 location configuration for the data input for the data
-- ingestion job.
--
-- 'schema', 'describeDatasetResponse_schema' - A JSON description of the data that is in each time series dataset,
-- including names, column names, and data types.
--
-- 'createdAt', 'describeDatasetResponse_createdAt' - Specifies the time the dataset was created in Amazon Lookout for
-- Equipment.
--
-- 'httpStatus', 'describeDatasetResponse_httpStatus' - The response's http status code.
newDescribeDatasetResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeDatasetResponse
newDescribeDatasetResponse pHttpStatus_ =
  DescribeDatasetResponse'
    { serverSideKmsKeyId =
        Prelude.Nothing,
      lastUpdatedAt = Prelude.Nothing,
      datasetName = Prelude.Nothing,
      status = Prelude.Nothing,
      datasetArn = Prelude.Nothing,
      ingestionInputConfiguration = Prelude.Nothing,
      schema = Prelude.Nothing,
      createdAt = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Provides the identifier of the KMS key used to encrypt dataset data by
-- Amazon Lookout for Equipment.
describeDatasetResponse_serverSideKmsKeyId :: Lens.Lens' DescribeDatasetResponse (Prelude.Maybe Prelude.Text)
describeDatasetResponse_serverSideKmsKeyId = Lens.lens (\DescribeDatasetResponse' {serverSideKmsKeyId} -> serverSideKmsKeyId) (\s@DescribeDatasetResponse' {} a -> s {serverSideKmsKeyId = a} :: DescribeDatasetResponse)

-- | Specifies the time the dataset was last updated, if it was.
describeDatasetResponse_lastUpdatedAt :: Lens.Lens' DescribeDatasetResponse (Prelude.Maybe Prelude.UTCTime)
describeDatasetResponse_lastUpdatedAt = Lens.lens (\DescribeDatasetResponse' {lastUpdatedAt} -> lastUpdatedAt) (\s@DescribeDatasetResponse' {} a -> s {lastUpdatedAt = a} :: DescribeDatasetResponse) Prelude.. Lens.mapping Core._Time

-- | The name of the dataset being described.
describeDatasetResponse_datasetName :: Lens.Lens' DescribeDatasetResponse (Prelude.Maybe Prelude.Text)
describeDatasetResponse_datasetName = Lens.lens (\DescribeDatasetResponse' {datasetName} -> datasetName) (\s@DescribeDatasetResponse' {} a -> s {datasetName = a} :: DescribeDatasetResponse)

-- | Indicates the status of the dataset.
describeDatasetResponse_status :: Lens.Lens' DescribeDatasetResponse (Prelude.Maybe DatasetStatus)
describeDatasetResponse_status = Lens.lens (\DescribeDatasetResponse' {status} -> status) (\s@DescribeDatasetResponse' {} a -> s {status = a} :: DescribeDatasetResponse)

-- | The Amazon Resource Name (ARN) of the dataset being described.
describeDatasetResponse_datasetArn :: Lens.Lens' DescribeDatasetResponse (Prelude.Maybe Prelude.Text)
describeDatasetResponse_datasetArn = Lens.lens (\DescribeDatasetResponse' {datasetArn} -> datasetArn) (\s@DescribeDatasetResponse' {} a -> s {datasetArn = a} :: DescribeDatasetResponse)

-- | Specifies the S3 location configuration for the data input for the data
-- ingestion job.
describeDatasetResponse_ingestionInputConfiguration :: Lens.Lens' DescribeDatasetResponse (Prelude.Maybe IngestionInputConfiguration)
describeDatasetResponse_ingestionInputConfiguration = Lens.lens (\DescribeDatasetResponse' {ingestionInputConfiguration} -> ingestionInputConfiguration) (\s@DescribeDatasetResponse' {} a -> s {ingestionInputConfiguration = a} :: DescribeDatasetResponse)

-- | A JSON description of the data that is in each time series dataset,
-- including names, column names, and data types.
describeDatasetResponse_schema :: Lens.Lens' DescribeDatasetResponse (Prelude.Maybe Prelude.Text)
describeDatasetResponse_schema = Lens.lens (\DescribeDatasetResponse' {schema} -> schema) (\s@DescribeDatasetResponse' {} a -> s {schema = a} :: DescribeDatasetResponse)

-- | Specifies the time the dataset was created in Amazon Lookout for
-- Equipment.
describeDatasetResponse_createdAt :: Lens.Lens' DescribeDatasetResponse (Prelude.Maybe Prelude.UTCTime)
describeDatasetResponse_createdAt = Lens.lens (\DescribeDatasetResponse' {createdAt} -> createdAt) (\s@DescribeDatasetResponse' {} a -> s {createdAt = a} :: DescribeDatasetResponse) Prelude.. Lens.mapping Core._Time

-- | The response's http status code.
describeDatasetResponse_httpStatus :: Lens.Lens' DescribeDatasetResponse Prelude.Int
describeDatasetResponse_httpStatus = Lens.lens (\DescribeDatasetResponse' {httpStatus} -> httpStatus) (\s@DescribeDatasetResponse' {} a -> s {httpStatus = a} :: DescribeDatasetResponse)

instance Prelude.NFData DescribeDatasetResponse where
  rnf DescribeDatasetResponse' {..} =
    Prelude.rnf serverSideKmsKeyId
      `Prelude.seq` Prelude.rnf lastUpdatedAt
      `Prelude.seq` Prelude.rnf datasetName
      `Prelude.seq` Prelude.rnf status
      `Prelude.seq` Prelude.rnf datasetArn
      `Prelude.seq` Prelude.rnf ingestionInputConfiguration
      `Prelude.seq` Prelude.rnf schema
      `Prelude.seq` Prelude.rnf createdAt
      `Prelude.seq` Prelude.rnf httpStatus