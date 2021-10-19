{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Athena.Types.DataCatalog
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Athena.Types.DataCatalog where

import Network.AWS.Athena.Types.DataCatalogType
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Contains information about a data catalog in an Amazon Web Services
-- account.
--
-- /See:/ 'newDataCatalog' smart constructor.
data DataCatalog = DataCatalog'
  { -- | Specifies the Lambda function or functions to use for the data catalog.
    -- This is a mapping whose values depend on the catalog type.
    --
    -- -   For the @HIVE@ data catalog type, use the following syntax. The
    --     @metadata-function@ parameter is required. @The sdk-version@
    --     parameter is optional and defaults to the currently supported
    --     version.
    --
    --     @metadata-function=lambda_arn, sdk-version=version_number @
    --
    -- -   For the @LAMBDA@ data catalog type, use one of the following sets of
    --     required parameters, but not both.
    --
    --     -   If you have one Lambda function that processes metadata and
    --         another for reading the actual data, use the following syntax.
    --         Both parameters are required.
    --
    --         @metadata-function=lambda_arn, record-function=lambda_arn @
    --
    --     -   If you have a composite Lambda function that processes both
    --         metadata and data, use the following syntax to specify your
    --         Lambda function.
    --
    --         @function=lambda_arn @
    --
    -- -   The @GLUE@ type takes a catalog ID parameter and is required. The
    --     @ catalog_id @ is the account ID of the Amazon Web Services account
    --     to which the Glue catalog belongs.
    --
    --     @catalog-id=catalog_id @
    --
    --     -   The @GLUE@ data catalog type also applies to the default
    --         @AwsDataCatalog@ that already exists in your account, of which
    --         you can have only one and cannot modify.
    --
    --     -   Queries that specify a Glue Data Catalog other than the default
    --         @AwsDataCatalog@ must be run on Athena engine version 2.
    parameters :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | An optional description of the data catalog.
    description :: Prelude.Maybe Prelude.Text,
    -- | The name of the data catalog. The catalog name must be unique for the
    -- Amazon Web Services account and can use a maximum of 128 alphanumeric,
    -- underscore, at sign, or hyphen characters.
    name :: Prelude.Text,
    -- | The type of data catalog to create: @LAMBDA@ for a federated catalog,
    -- @HIVE@ for an external hive metastore, or @GLUE@ for an Glue Data
    -- Catalog.
    type' :: DataCatalogType
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DataCatalog' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'parameters', 'dataCatalog_parameters' - Specifies the Lambda function or functions to use for the data catalog.
-- This is a mapping whose values depend on the catalog type.
--
-- -   For the @HIVE@ data catalog type, use the following syntax. The
--     @metadata-function@ parameter is required. @The sdk-version@
--     parameter is optional and defaults to the currently supported
--     version.
--
--     @metadata-function=lambda_arn, sdk-version=version_number @
--
-- -   For the @LAMBDA@ data catalog type, use one of the following sets of
--     required parameters, but not both.
--
--     -   If you have one Lambda function that processes metadata and
--         another for reading the actual data, use the following syntax.
--         Both parameters are required.
--
--         @metadata-function=lambda_arn, record-function=lambda_arn @
--
--     -   If you have a composite Lambda function that processes both
--         metadata and data, use the following syntax to specify your
--         Lambda function.
--
--         @function=lambda_arn @
--
-- -   The @GLUE@ type takes a catalog ID parameter and is required. The
--     @ catalog_id @ is the account ID of the Amazon Web Services account
--     to which the Glue catalog belongs.
--
--     @catalog-id=catalog_id @
--
--     -   The @GLUE@ data catalog type also applies to the default
--         @AwsDataCatalog@ that already exists in your account, of which
--         you can have only one and cannot modify.
--
--     -   Queries that specify a Glue Data Catalog other than the default
--         @AwsDataCatalog@ must be run on Athena engine version 2.
--
-- 'description', 'dataCatalog_description' - An optional description of the data catalog.
--
-- 'name', 'dataCatalog_name' - The name of the data catalog. The catalog name must be unique for the
-- Amazon Web Services account and can use a maximum of 128 alphanumeric,
-- underscore, at sign, or hyphen characters.
--
-- 'type'', 'dataCatalog_type' - The type of data catalog to create: @LAMBDA@ for a federated catalog,
-- @HIVE@ for an external hive metastore, or @GLUE@ for an Glue Data
-- Catalog.
newDataCatalog ::
  -- | 'name'
  Prelude.Text ->
  -- | 'type''
  DataCatalogType ->
  DataCatalog
newDataCatalog pName_ pType_ =
  DataCatalog'
    { parameters = Prelude.Nothing,
      description = Prelude.Nothing,
      name = pName_,
      type' = pType_
    }

-- | Specifies the Lambda function or functions to use for the data catalog.
-- This is a mapping whose values depend on the catalog type.
--
-- -   For the @HIVE@ data catalog type, use the following syntax. The
--     @metadata-function@ parameter is required. @The sdk-version@
--     parameter is optional and defaults to the currently supported
--     version.
--
--     @metadata-function=lambda_arn, sdk-version=version_number @
--
-- -   For the @LAMBDA@ data catalog type, use one of the following sets of
--     required parameters, but not both.
--
--     -   If you have one Lambda function that processes metadata and
--         another for reading the actual data, use the following syntax.
--         Both parameters are required.
--
--         @metadata-function=lambda_arn, record-function=lambda_arn @
--
--     -   If you have a composite Lambda function that processes both
--         metadata and data, use the following syntax to specify your
--         Lambda function.
--
--         @function=lambda_arn @
--
-- -   The @GLUE@ type takes a catalog ID parameter and is required. The
--     @ catalog_id @ is the account ID of the Amazon Web Services account
--     to which the Glue catalog belongs.
--
--     @catalog-id=catalog_id @
--
--     -   The @GLUE@ data catalog type also applies to the default
--         @AwsDataCatalog@ that already exists in your account, of which
--         you can have only one and cannot modify.
--
--     -   Queries that specify a Glue Data Catalog other than the default
--         @AwsDataCatalog@ must be run on Athena engine version 2.
dataCatalog_parameters :: Lens.Lens' DataCatalog (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
dataCatalog_parameters = Lens.lens (\DataCatalog' {parameters} -> parameters) (\s@DataCatalog' {} a -> s {parameters = a} :: DataCatalog) Prelude.. Lens.mapping Lens.coerced

-- | An optional description of the data catalog.
dataCatalog_description :: Lens.Lens' DataCatalog (Prelude.Maybe Prelude.Text)
dataCatalog_description = Lens.lens (\DataCatalog' {description} -> description) (\s@DataCatalog' {} a -> s {description = a} :: DataCatalog)

-- | The name of the data catalog. The catalog name must be unique for the
-- Amazon Web Services account and can use a maximum of 128 alphanumeric,
-- underscore, at sign, or hyphen characters.
dataCatalog_name :: Lens.Lens' DataCatalog Prelude.Text
dataCatalog_name = Lens.lens (\DataCatalog' {name} -> name) (\s@DataCatalog' {} a -> s {name = a} :: DataCatalog)

-- | The type of data catalog to create: @LAMBDA@ for a federated catalog,
-- @HIVE@ for an external hive metastore, or @GLUE@ for an Glue Data
-- Catalog.
dataCatalog_type :: Lens.Lens' DataCatalog DataCatalogType
dataCatalog_type = Lens.lens (\DataCatalog' {type'} -> type') (\s@DataCatalog' {} a -> s {type' = a} :: DataCatalog)

instance Core.FromJSON DataCatalog where
  parseJSON =
    Core.withObject
      "DataCatalog"
      ( \x ->
          DataCatalog'
            Prelude.<$> (x Core..:? "Parameters" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "Description")
            Prelude.<*> (x Core..: "Name")
            Prelude.<*> (x Core..: "Type")
      )

instance Prelude.Hashable DataCatalog

instance Prelude.NFData DataCatalog