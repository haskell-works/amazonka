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
-- Module      : Network.AWS.ComputeOptimizer.ExportAutoScalingGroupRecommendations
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Exports optimization recommendations for Auto Scaling groups.
--
-- Recommendations are exported in a comma-separated values (.csv) file,
-- and its metadata in a JavaScript Object Notation (JSON) (.json) file, to
-- an existing Amazon Simple Storage Service (Amazon S3) bucket that you
-- specify. For more information, see
-- <https://docs.aws.amazon.com/compute-optimizer/latest/ug/exporting-recommendations.html Exporting Recommendations>
-- in the /Compute Optimizer User Guide/.
--
-- You can have only one Auto Scaling group export job in progress per
-- Amazon Web Services Region.
module Network.AWS.ComputeOptimizer.ExportAutoScalingGroupRecommendations
  ( -- * Creating a Request
    ExportAutoScalingGroupRecommendations (..),
    newExportAutoScalingGroupRecommendations,

    -- * Request Lenses
    exportAutoScalingGroupRecommendations_accountIds,
    exportAutoScalingGroupRecommendations_fileFormat,
    exportAutoScalingGroupRecommendations_filters,
    exportAutoScalingGroupRecommendations_fieldsToExport,
    exportAutoScalingGroupRecommendations_includeMemberAccounts,
    exportAutoScalingGroupRecommendations_recommendationPreferences,
    exportAutoScalingGroupRecommendations_s3DestinationConfig,

    -- * Destructuring the Response
    ExportAutoScalingGroupRecommendationsResponse (..),
    newExportAutoScalingGroupRecommendationsResponse,

    -- * Response Lenses
    exportAutoScalingGroupRecommendationsResponse_jobId,
    exportAutoScalingGroupRecommendationsResponse_s3Destination,
    exportAutoScalingGroupRecommendationsResponse_httpStatus,
  )
where

import Network.AWS.ComputeOptimizer.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newExportAutoScalingGroupRecommendations' smart constructor.
data ExportAutoScalingGroupRecommendations = ExportAutoScalingGroupRecommendations'
  { -- | The IDs of the Amazon Web Services accounts for which to export Auto
    -- Scaling group recommendations.
    --
    -- If your account is the management account of an organization, use this
    -- parameter to specify the member account for which you want to export
    -- recommendations.
    --
    -- This parameter cannot be specified together with the include member
    -- accounts parameter. The parameters are mutually exclusive.
    --
    -- Recommendations for member accounts are not included in the export if
    -- this parameter, or the include member accounts parameter, is omitted.
    --
    -- You can specify multiple account IDs per request.
    accountIds :: Prelude.Maybe [Prelude.Text],
    -- | The format of the export file.
    --
    -- The only export file format currently supported is @Csv@.
    fileFormat :: Prelude.Maybe FileFormat,
    -- | An array of objects to specify a filter that exports a more specific set
    -- of Auto Scaling group recommendations.
    filters :: Prelude.Maybe [Filter],
    -- | The recommendations data to include in the export file. For more
    -- information about the fields that can be exported, see
    -- <https://docs.aws.amazon.com/compute-optimizer/latest/ug/exporting-recommendations.html#exported-files Exported files>
    -- in the /Compute Optimizer User Guide/.
    fieldsToExport :: Prelude.Maybe [ExportableAutoScalingGroupField],
    -- | Indicates whether to include recommendations for resources in all member
    -- accounts of the organization if your account is the management account
    -- of an organization.
    --
    -- The member accounts must also be opted in to Compute Optimizer, and
    -- trusted access for Compute Optimizer must be enabled in the organization
    -- account. For more information, see
    -- <https://docs.aws.amazon.com/compute-optimizer/latest/ug/security-iam.html#trusted-service-access Compute Optimizer and Amazon Web Services Organizations trusted access>
    -- in the /Compute Optimizer User Guide/.
    --
    -- Recommendations for member accounts of the organization are not included
    -- in the export file if this parameter is omitted.
    --
    -- This parameter cannot be specified together with the account IDs
    -- parameter. The parameters are mutually exclusive.
    --
    -- Recommendations for member accounts are not included in the export if
    -- this parameter, or the account IDs parameter, is omitted.
    includeMemberAccounts :: Prelude.Maybe Prelude.Bool,
    -- | An object to specify the preferences for the Auto Scaling group
    -- recommendations to export.
    recommendationPreferences :: Prelude.Maybe RecommendationPreferences,
    -- | An object to specify the destination Amazon Simple Storage Service
    -- (Amazon S3) bucket name and key prefix for the export job.
    --
    -- You must create the destination Amazon S3 bucket for your
    -- recommendations export before you create the export job. Compute
    -- Optimizer does not create the S3 bucket for you. After you create the S3
    -- bucket, ensure that it has the required permissions policy to allow
    -- Compute Optimizer to write the export file to it. If you plan to specify
    -- an object prefix when you create the export job, you must include the
    -- object prefix in the policy that you add to the S3 bucket. For more
    -- information, see
    -- <https://docs.aws.amazon.com/compute-optimizer/latest/ug/create-s3-bucket-policy-for-compute-optimizer.html Amazon S3 Bucket Policy for Compute Optimizer>
    -- in the /Compute Optimizer User Guide/.
    s3DestinationConfig :: S3DestinationConfig
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ExportAutoScalingGroupRecommendations' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'accountIds', 'exportAutoScalingGroupRecommendations_accountIds' - The IDs of the Amazon Web Services accounts for which to export Auto
-- Scaling group recommendations.
--
-- If your account is the management account of an organization, use this
-- parameter to specify the member account for which you want to export
-- recommendations.
--
-- This parameter cannot be specified together with the include member
-- accounts parameter. The parameters are mutually exclusive.
--
-- Recommendations for member accounts are not included in the export if
-- this parameter, or the include member accounts parameter, is omitted.
--
-- You can specify multiple account IDs per request.
--
-- 'fileFormat', 'exportAutoScalingGroupRecommendations_fileFormat' - The format of the export file.
--
-- The only export file format currently supported is @Csv@.
--
-- 'filters', 'exportAutoScalingGroupRecommendations_filters' - An array of objects to specify a filter that exports a more specific set
-- of Auto Scaling group recommendations.
--
-- 'fieldsToExport', 'exportAutoScalingGroupRecommendations_fieldsToExport' - The recommendations data to include in the export file. For more
-- information about the fields that can be exported, see
-- <https://docs.aws.amazon.com/compute-optimizer/latest/ug/exporting-recommendations.html#exported-files Exported files>
-- in the /Compute Optimizer User Guide/.
--
-- 'includeMemberAccounts', 'exportAutoScalingGroupRecommendations_includeMemberAccounts' - Indicates whether to include recommendations for resources in all member
-- accounts of the organization if your account is the management account
-- of an organization.
--
-- The member accounts must also be opted in to Compute Optimizer, and
-- trusted access for Compute Optimizer must be enabled in the organization
-- account. For more information, see
-- <https://docs.aws.amazon.com/compute-optimizer/latest/ug/security-iam.html#trusted-service-access Compute Optimizer and Amazon Web Services Organizations trusted access>
-- in the /Compute Optimizer User Guide/.
--
-- Recommendations for member accounts of the organization are not included
-- in the export file if this parameter is omitted.
--
-- This parameter cannot be specified together with the account IDs
-- parameter. The parameters are mutually exclusive.
--
-- Recommendations for member accounts are not included in the export if
-- this parameter, or the account IDs parameter, is omitted.
--
-- 'recommendationPreferences', 'exportAutoScalingGroupRecommendations_recommendationPreferences' - An object to specify the preferences for the Auto Scaling group
-- recommendations to export.
--
-- 's3DestinationConfig', 'exportAutoScalingGroupRecommendations_s3DestinationConfig' - An object to specify the destination Amazon Simple Storage Service
-- (Amazon S3) bucket name and key prefix for the export job.
--
-- You must create the destination Amazon S3 bucket for your
-- recommendations export before you create the export job. Compute
-- Optimizer does not create the S3 bucket for you. After you create the S3
-- bucket, ensure that it has the required permissions policy to allow
-- Compute Optimizer to write the export file to it. If you plan to specify
-- an object prefix when you create the export job, you must include the
-- object prefix in the policy that you add to the S3 bucket. For more
-- information, see
-- <https://docs.aws.amazon.com/compute-optimizer/latest/ug/create-s3-bucket-policy-for-compute-optimizer.html Amazon S3 Bucket Policy for Compute Optimizer>
-- in the /Compute Optimizer User Guide/.
newExportAutoScalingGroupRecommendations ::
  -- | 's3DestinationConfig'
  S3DestinationConfig ->
  ExportAutoScalingGroupRecommendations
newExportAutoScalingGroupRecommendations
  pS3DestinationConfig_ =
    ExportAutoScalingGroupRecommendations'
      { accountIds =
          Prelude.Nothing,
        fileFormat = Prelude.Nothing,
        filters = Prelude.Nothing,
        fieldsToExport = Prelude.Nothing,
        includeMemberAccounts =
          Prelude.Nothing,
        recommendationPreferences =
          Prelude.Nothing,
        s3DestinationConfig =
          pS3DestinationConfig_
      }

-- | The IDs of the Amazon Web Services accounts for which to export Auto
-- Scaling group recommendations.
--
-- If your account is the management account of an organization, use this
-- parameter to specify the member account for which you want to export
-- recommendations.
--
-- This parameter cannot be specified together with the include member
-- accounts parameter. The parameters are mutually exclusive.
--
-- Recommendations for member accounts are not included in the export if
-- this parameter, or the include member accounts parameter, is omitted.
--
-- You can specify multiple account IDs per request.
exportAutoScalingGroupRecommendations_accountIds :: Lens.Lens' ExportAutoScalingGroupRecommendations (Prelude.Maybe [Prelude.Text])
exportAutoScalingGroupRecommendations_accountIds = Lens.lens (\ExportAutoScalingGroupRecommendations' {accountIds} -> accountIds) (\s@ExportAutoScalingGroupRecommendations' {} a -> s {accountIds = a} :: ExportAutoScalingGroupRecommendations) Prelude.. Lens.mapping Lens.coerced

-- | The format of the export file.
--
-- The only export file format currently supported is @Csv@.
exportAutoScalingGroupRecommendations_fileFormat :: Lens.Lens' ExportAutoScalingGroupRecommendations (Prelude.Maybe FileFormat)
exportAutoScalingGroupRecommendations_fileFormat = Lens.lens (\ExportAutoScalingGroupRecommendations' {fileFormat} -> fileFormat) (\s@ExportAutoScalingGroupRecommendations' {} a -> s {fileFormat = a} :: ExportAutoScalingGroupRecommendations)

-- | An array of objects to specify a filter that exports a more specific set
-- of Auto Scaling group recommendations.
exportAutoScalingGroupRecommendations_filters :: Lens.Lens' ExportAutoScalingGroupRecommendations (Prelude.Maybe [Filter])
exportAutoScalingGroupRecommendations_filters = Lens.lens (\ExportAutoScalingGroupRecommendations' {filters} -> filters) (\s@ExportAutoScalingGroupRecommendations' {} a -> s {filters = a} :: ExportAutoScalingGroupRecommendations) Prelude.. Lens.mapping Lens.coerced

-- | The recommendations data to include in the export file. For more
-- information about the fields that can be exported, see
-- <https://docs.aws.amazon.com/compute-optimizer/latest/ug/exporting-recommendations.html#exported-files Exported files>
-- in the /Compute Optimizer User Guide/.
exportAutoScalingGroupRecommendations_fieldsToExport :: Lens.Lens' ExportAutoScalingGroupRecommendations (Prelude.Maybe [ExportableAutoScalingGroupField])
exportAutoScalingGroupRecommendations_fieldsToExport = Lens.lens (\ExportAutoScalingGroupRecommendations' {fieldsToExport} -> fieldsToExport) (\s@ExportAutoScalingGroupRecommendations' {} a -> s {fieldsToExport = a} :: ExportAutoScalingGroupRecommendations) Prelude.. Lens.mapping Lens.coerced

-- | Indicates whether to include recommendations for resources in all member
-- accounts of the organization if your account is the management account
-- of an organization.
--
-- The member accounts must also be opted in to Compute Optimizer, and
-- trusted access for Compute Optimizer must be enabled in the organization
-- account. For more information, see
-- <https://docs.aws.amazon.com/compute-optimizer/latest/ug/security-iam.html#trusted-service-access Compute Optimizer and Amazon Web Services Organizations trusted access>
-- in the /Compute Optimizer User Guide/.
--
-- Recommendations for member accounts of the organization are not included
-- in the export file if this parameter is omitted.
--
-- This parameter cannot be specified together with the account IDs
-- parameter. The parameters are mutually exclusive.
--
-- Recommendations for member accounts are not included in the export if
-- this parameter, or the account IDs parameter, is omitted.
exportAutoScalingGroupRecommendations_includeMemberAccounts :: Lens.Lens' ExportAutoScalingGroupRecommendations (Prelude.Maybe Prelude.Bool)
exportAutoScalingGroupRecommendations_includeMemberAccounts = Lens.lens (\ExportAutoScalingGroupRecommendations' {includeMemberAccounts} -> includeMemberAccounts) (\s@ExportAutoScalingGroupRecommendations' {} a -> s {includeMemberAccounts = a} :: ExportAutoScalingGroupRecommendations)

-- | An object to specify the preferences for the Auto Scaling group
-- recommendations to export.
exportAutoScalingGroupRecommendations_recommendationPreferences :: Lens.Lens' ExportAutoScalingGroupRecommendations (Prelude.Maybe RecommendationPreferences)
exportAutoScalingGroupRecommendations_recommendationPreferences = Lens.lens (\ExportAutoScalingGroupRecommendations' {recommendationPreferences} -> recommendationPreferences) (\s@ExportAutoScalingGroupRecommendations' {} a -> s {recommendationPreferences = a} :: ExportAutoScalingGroupRecommendations)

-- | An object to specify the destination Amazon Simple Storage Service
-- (Amazon S3) bucket name and key prefix for the export job.
--
-- You must create the destination Amazon S3 bucket for your
-- recommendations export before you create the export job. Compute
-- Optimizer does not create the S3 bucket for you. After you create the S3
-- bucket, ensure that it has the required permissions policy to allow
-- Compute Optimizer to write the export file to it. If you plan to specify
-- an object prefix when you create the export job, you must include the
-- object prefix in the policy that you add to the S3 bucket. For more
-- information, see
-- <https://docs.aws.amazon.com/compute-optimizer/latest/ug/create-s3-bucket-policy-for-compute-optimizer.html Amazon S3 Bucket Policy for Compute Optimizer>
-- in the /Compute Optimizer User Guide/.
exportAutoScalingGroupRecommendations_s3DestinationConfig :: Lens.Lens' ExportAutoScalingGroupRecommendations S3DestinationConfig
exportAutoScalingGroupRecommendations_s3DestinationConfig = Lens.lens (\ExportAutoScalingGroupRecommendations' {s3DestinationConfig} -> s3DestinationConfig) (\s@ExportAutoScalingGroupRecommendations' {} a -> s {s3DestinationConfig = a} :: ExportAutoScalingGroupRecommendations)

instance
  Core.AWSRequest
    ExportAutoScalingGroupRecommendations
  where
  type
    AWSResponse
      ExportAutoScalingGroupRecommendations =
      ExportAutoScalingGroupRecommendationsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ExportAutoScalingGroupRecommendationsResponse'
            Prelude.<$> (x Core..?> "jobId")
              Prelude.<*> (x Core..?> "s3Destination")
              Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    ExportAutoScalingGroupRecommendations

instance
  Prelude.NFData
    ExportAutoScalingGroupRecommendations

instance
  Core.ToHeaders
    ExportAutoScalingGroupRecommendations
  where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "ComputeOptimizerService.ExportAutoScalingGroupRecommendations" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.0" ::
                          Prelude.ByteString
                      )
          ]
      )

instance
  Core.ToJSON
    ExportAutoScalingGroupRecommendations
  where
  toJSON ExportAutoScalingGroupRecommendations' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("accountIds" Core..=) Prelude.<$> accountIds,
            ("fileFormat" Core..=) Prelude.<$> fileFormat,
            ("filters" Core..=) Prelude.<$> filters,
            ("fieldsToExport" Core..=)
              Prelude.<$> fieldsToExport,
            ("includeMemberAccounts" Core..=)
              Prelude.<$> includeMemberAccounts,
            ("recommendationPreferences" Core..=)
              Prelude.<$> recommendationPreferences,
            Prelude.Just
              ("s3DestinationConfig" Core..= s3DestinationConfig)
          ]
      )

instance
  Core.ToPath
    ExportAutoScalingGroupRecommendations
  where
  toPath = Prelude.const "/"

instance
  Core.ToQuery
    ExportAutoScalingGroupRecommendations
  where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newExportAutoScalingGroupRecommendationsResponse' smart constructor.
data ExportAutoScalingGroupRecommendationsResponse = ExportAutoScalingGroupRecommendationsResponse'
  { -- | The identification number of the export job.
    --
    -- Use the DescribeRecommendationExportJobs action, and specify the job ID
    -- to view the status of an export job.
    jobId :: Prelude.Maybe Prelude.Text,
    -- | An object that describes the destination Amazon S3 bucket of a
    -- recommendations export file.
    s3Destination :: Prelude.Maybe S3Destination,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ExportAutoScalingGroupRecommendationsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'jobId', 'exportAutoScalingGroupRecommendationsResponse_jobId' - The identification number of the export job.
--
-- Use the DescribeRecommendationExportJobs action, and specify the job ID
-- to view the status of an export job.
--
-- 's3Destination', 'exportAutoScalingGroupRecommendationsResponse_s3Destination' - An object that describes the destination Amazon S3 bucket of a
-- recommendations export file.
--
-- 'httpStatus', 'exportAutoScalingGroupRecommendationsResponse_httpStatus' - The response's http status code.
newExportAutoScalingGroupRecommendationsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ExportAutoScalingGroupRecommendationsResponse
newExportAutoScalingGroupRecommendationsResponse
  pHttpStatus_ =
    ExportAutoScalingGroupRecommendationsResponse'
      { jobId =
          Prelude.Nothing,
        s3Destination =
          Prelude.Nothing,
        httpStatus = pHttpStatus_
      }

-- | The identification number of the export job.
--
-- Use the DescribeRecommendationExportJobs action, and specify the job ID
-- to view the status of an export job.
exportAutoScalingGroupRecommendationsResponse_jobId :: Lens.Lens' ExportAutoScalingGroupRecommendationsResponse (Prelude.Maybe Prelude.Text)
exportAutoScalingGroupRecommendationsResponse_jobId = Lens.lens (\ExportAutoScalingGroupRecommendationsResponse' {jobId} -> jobId) (\s@ExportAutoScalingGroupRecommendationsResponse' {} a -> s {jobId = a} :: ExportAutoScalingGroupRecommendationsResponse)

-- | An object that describes the destination Amazon S3 bucket of a
-- recommendations export file.
exportAutoScalingGroupRecommendationsResponse_s3Destination :: Lens.Lens' ExportAutoScalingGroupRecommendationsResponse (Prelude.Maybe S3Destination)
exportAutoScalingGroupRecommendationsResponse_s3Destination = Lens.lens (\ExportAutoScalingGroupRecommendationsResponse' {s3Destination} -> s3Destination) (\s@ExportAutoScalingGroupRecommendationsResponse' {} a -> s {s3Destination = a} :: ExportAutoScalingGroupRecommendationsResponse)

-- | The response's http status code.
exportAutoScalingGroupRecommendationsResponse_httpStatus :: Lens.Lens' ExportAutoScalingGroupRecommendationsResponse Prelude.Int
exportAutoScalingGroupRecommendationsResponse_httpStatus = Lens.lens (\ExportAutoScalingGroupRecommendationsResponse' {httpStatus} -> httpStatus) (\s@ExportAutoScalingGroupRecommendationsResponse' {} a -> s {httpStatus = a} :: ExportAutoScalingGroupRecommendationsResponse)

instance
  Prelude.NFData
    ExportAutoScalingGroupRecommendationsResponse