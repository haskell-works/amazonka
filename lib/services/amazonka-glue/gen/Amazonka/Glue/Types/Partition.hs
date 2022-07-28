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
-- Module      : Amazonka.Glue.Types.Partition
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Glue.Types.Partition where

import qualified Amazonka.Core as Core
import Amazonka.Glue.Types.StorageDescriptor
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Represents a slice of table data.
--
-- /See:/ 'newPartition' smart constructor.
data Partition = Partition'
  { -- | The name of the database table in which to create the partition.
    tableName :: Prelude.Maybe Prelude.Text,
    -- | The last time at which the partition was accessed.
    lastAccessTime :: Prelude.Maybe Core.POSIX,
    -- | The name of the catalog database in which to create the partition.
    databaseName :: Prelude.Maybe Prelude.Text,
    -- | The ID of the Data Catalog in which the partition resides.
    catalogId :: Prelude.Maybe Prelude.Text,
    -- | The time at which the partition was created.
    creationTime :: Prelude.Maybe Core.POSIX,
    -- | Provides information about the physical location where the partition is
    -- stored.
    storageDescriptor :: Prelude.Maybe StorageDescriptor,
    -- | The values of the partition.
    values :: Prelude.Maybe [Prelude.Text],
    -- | The last time at which column statistics were computed for this
    -- partition.
    lastAnalyzedTime :: Prelude.Maybe Core.POSIX,
    -- | These key-value pairs define partition parameters.
    parameters :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text)
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Partition' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tableName', 'partition_tableName' - The name of the database table in which to create the partition.
--
-- 'lastAccessTime', 'partition_lastAccessTime' - The last time at which the partition was accessed.
--
-- 'databaseName', 'partition_databaseName' - The name of the catalog database in which to create the partition.
--
-- 'catalogId', 'partition_catalogId' - The ID of the Data Catalog in which the partition resides.
--
-- 'creationTime', 'partition_creationTime' - The time at which the partition was created.
--
-- 'storageDescriptor', 'partition_storageDescriptor' - Provides information about the physical location where the partition is
-- stored.
--
-- 'values', 'partition_values' - The values of the partition.
--
-- 'lastAnalyzedTime', 'partition_lastAnalyzedTime' - The last time at which column statistics were computed for this
-- partition.
--
-- 'parameters', 'partition_parameters' - These key-value pairs define partition parameters.
newPartition ::
  Partition
newPartition =
  Partition'
    { tableName = Prelude.Nothing,
      lastAccessTime = Prelude.Nothing,
      databaseName = Prelude.Nothing,
      catalogId = Prelude.Nothing,
      creationTime = Prelude.Nothing,
      storageDescriptor = Prelude.Nothing,
      values = Prelude.Nothing,
      lastAnalyzedTime = Prelude.Nothing,
      parameters = Prelude.Nothing
    }

-- | The name of the database table in which to create the partition.
partition_tableName :: Lens.Lens' Partition (Prelude.Maybe Prelude.Text)
partition_tableName = Lens.lens (\Partition' {tableName} -> tableName) (\s@Partition' {} a -> s {tableName = a} :: Partition)

-- | The last time at which the partition was accessed.
partition_lastAccessTime :: Lens.Lens' Partition (Prelude.Maybe Prelude.UTCTime)
partition_lastAccessTime = Lens.lens (\Partition' {lastAccessTime} -> lastAccessTime) (\s@Partition' {} a -> s {lastAccessTime = a} :: Partition) Prelude.. Lens.mapping Core._Time

-- | The name of the catalog database in which to create the partition.
partition_databaseName :: Lens.Lens' Partition (Prelude.Maybe Prelude.Text)
partition_databaseName = Lens.lens (\Partition' {databaseName} -> databaseName) (\s@Partition' {} a -> s {databaseName = a} :: Partition)

-- | The ID of the Data Catalog in which the partition resides.
partition_catalogId :: Lens.Lens' Partition (Prelude.Maybe Prelude.Text)
partition_catalogId = Lens.lens (\Partition' {catalogId} -> catalogId) (\s@Partition' {} a -> s {catalogId = a} :: Partition)

-- | The time at which the partition was created.
partition_creationTime :: Lens.Lens' Partition (Prelude.Maybe Prelude.UTCTime)
partition_creationTime = Lens.lens (\Partition' {creationTime} -> creationTime) (\s@Partition' {} a -> s {creationTime = a} :: Partition) Prelude.. Lens.mapping Core._Time

-- | Provides information about the physical location where the partition is
-- stored.
partition_storageDescriptor :: Lens.Lens' Partition (Prelude.Maybe StorageDescriptor)
partition_storageDescriptor = Lens.lens (\Partition' {storageDescriptor} -> storageDescriptor) (\s@Partition' {} a -> s {storageDescriptor = a} :: Partition)

-- | The values of the partition.
partition_values :: Lens.Lens' Partition (Prelude.Maybe [Prelude.Text])
partition_values = Lens.lens (\Partition' {values} -> values) (\s@Partition' {} a -> s {values = a} :: Partition) Prelude.. Lens.mapping Lens.coerced

-- | The last time at which column statistics were computed for this
-- partition.
partition_lastAnalyzedTime :: Lens.Lens' Partition (Prelude.Maybe Prelude.UTCTime)
partition_lastAnalyzedTime = Lens.lens (\Partition' {lastAnalyzedTime} -> lastAnalyzedTime) (\s@Partition' {} a -> s {lastAnalyzedTime = a} :: Partition) Prelude.. Lens.mapping Core._Time

-- | These key-value pairs define partition parameters.
partition_parameters :: Lens.Lens' Partition (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
partition_parameters = Lens.lens (\Partition' {parameters} -> parameters) (\s@Partition' {} a -> s {parameters = a} :: Partition) Prelude.. Lens.mapping Lens.coerced

instance Core.FromJSON Partition where
  parseJSON =
    Core.withObject
      "Partition"
      ( \x ->
          Partition'
            Prelude.<$> (x Core..:? "TableName")
            Prelude.<*> (x Core..:? "LastAccessTime")
            Prelude.<*> (x Core..:? "DatabaseName")
            Prelude.<*> (x Core..:? "CatalogId")
            Prelude.<*> (x Core..:? "CreationTime")
            Prelude.<*> (x Core..:? "StorageDescriptor")
            Prelude.<*> (x Core..:? "Values" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "LastAnalyzedTime")
            Prelude.<*> (x Core..:? "Parameters" Core..!= Prelude.mempty)
      )

instance Prelude.Hashable Partition where
  hashWithSalt _salt Partition' {..} =
    _salt `Prelude.hashWithSalt` tableName
      `Prelude.hashWithSalt` lastAccessTime
      `Prelude.hashWithSalt` databaseName
      `Prelude.hashWithSalt` catalogId
      `Prelude.hashWithSalt` creationTime
      `Prelude.hashWithSalt` storageDescriptor
      `Prelude.hashWithSalt` values
      `Prelude.hashWithSalt` lastAnalyzedTime
      `Prelude.hashWithSalt` parameters

instance Prelude.NFData Partition where
  rnf Partition' {..} =
    Prelude.rnf tableName
      `Prelude.seq` Prelude.rnf lastAccessTime
      `Prelude.seq` Prelude.rnf databaseName
      `Prelude.seq` Prelude.rnf catalogId
      `Prelude.seq` Prelude.rnf creationTime
      `Prelude.seq` Prelude.rnf storageDescriptor
      `Prelude.seq` Prelude.rnf values
      `Prelude.seq` Prelude.rnf lastAnalyzedTime
      `Prelude.seq` Prelude.rnf parameters