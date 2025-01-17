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
-- Module      : Amazonka.ServiceCatalog.Types.LastSync
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.ServiceCatalog.Types.LastSync where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.ServiceCatalog.Types.LastSyncStatus

-- | Provides details about the product\'s connection sync and contains the
-- following sub-fields.
--
-- -   @LastSyncTime@
--
-- -   @LastSyncStatus@
--
-- -   @LastSyncStatusMessage@
--
-- -   @LastSuccessfulSyncTime@
--
-- -   @LastSuccessfulSyncProvisioningArtifactID@
--
-- /See:/ 'newLastSync' smart constructor.
data LastSync = LastSync'
  { -- | The time of the last attempted sync from the repository to the Service
    -- Catalog product.
    lastSyncTime :: Prelude.Maybe Core.POSIX,
    -- | The time of the latest successful sync from the source repo artifact to
    -- the Service Catalog product.
    lastSuccessfulSyncTime :: Prelude.Maybe Core.POSIX,
    -- | The ProvisioningArtifactID of the ProvisioningArtifact created from the
    -- latest successful sync.
    lastSuccessfulSyncProvisioningArtifactId :: Prelude.Maybe Prelude.Text,
    -- | The current status of the sync. Responses include @SUCCEEDED@ or
    -- @FAILED@.
    lastSyncStatus :: Prelude.Maybe LastSyncStatus,
    -- | The sync\'s status message.
    lastSyncStatusMessage :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'LastSync' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'lastSyncTime', 'lastSync_lastSyncTime' - The time of the last attempted sync from the repository to the Service
-- Catalog product.
--
-- 'lastSuccessfulSyncTime', 'lastSync_lastSuccessfulSyncTime' - The time of the latest successful sync from the source repo artifact to
-- the Service Catalog product.
--
-- 'lastSuccessfulSyncProvisioningArtifactId', 'lastSync_lastSuccessfulSyncProvisioningArtifactId' - The ProvisioningArtifactID of the ProvisioningArtifact created from the
-- latest successful sync.
--
-- 'lastSyncStatus', 'lastSync_lastSyncStatus' - The current status of the sync. Responses include @SUCCEEDED@ or
-- @FAILED@.
--
-- 'lastSyncStatusMessage', 'lastSync_lastSyncStatusMessage' - The sync\'s status message.
newLastSync ::
  LastSync
newLastSync =
  LastSync'
    { lastSyncTime = Prelude.Nothing,
      lastSuccessfulSyncTime = Prelude.Nothing,
      lastSuccessfulSyncProvisioningArtifactId =
        Prelude.Nothing,
      lastSyncStatus = Prelude.Nothing,
      lastSyncStatusMessage = Prelude.Nothing
    }

-- | The time of the last attempted sync from the repository to the Service
-- Catalog product.
lastSync_lastSyncTime :: Lens.Lens' LastSync (Prelude.Maybe Prelude.UTCTime)
lastSync_lastSyncTime = Lens.lens (\LastSync' {lastSyncTime} -> lastSyncTime) (\s@LastSync' {} a -> s {lastSyncTime = a} :: LastSync) Prelude.. Lens.mapping Core._Time

-- | The time of the latest successful sync from the source repo artifact to
-- the Service Catalog product.
lastSync_lastSuccessfulSyncTime :: Lens.Lens' LastSync (Prelude.Maybe Prelude.UTCTime)
lastSync_lastSuccessfulSyncTime = Lens.lens (\LastSync' {lastSuccessfulSyncTime} -> lastSuccessfulSyncTime) (\s@LastSync' {} a -> s {lastSuccessfulSyncTime = a} :: LastSync) Prelude.. Lens.mapping Core._Time

-- | The ProvisioningArtifactID of the ProvisioningArtifact created from the
-- latest successful sync.
lastSync_lastSuccessfulSyncProvisioningArtifactId :: Lens.Lens' LastSync (Prelude.Maybe Prelude.Text)
lastSync_lastSuccessfulSyncProvisioningArtifactId = Lens.lens (\LastSync' {lastSuccessfulSyncProvisioningArtifactId} -> lastSuccessfulSyncProvisioningArtifactId) (\s@LastSync' {} a -> s {lastSuccessfulSyncProvisioningArtifactId = a} :: LastSync)

-- | The current status of the sync. Responses include @SUCCEEDED@ or
-- @FAILED@.
lastSync_lastSyncStatus :: Lens.Lens' LastSync (Prelude.Maybe LastSyncStatus)
lastSync_lastSyncStatus = Lens.lens (\LastSync' {lastSyncStatus} -> lastSyncStatus) (\s@LastSync' {} a -> s {lastSyncStatus = a} :: LastSync)

-- | The sync\'s status message.
lastSync_lastSyncStatusMessage :: Lens.Lens' LastSync (Prelude.Maybe Prelude.Text)
lastSync_lastSyncStatusMessage = Lens.lens (\LastSync' {lastSyncStatusMessage} -> lastSyncStatusMessage) (\s@LastSync' {} a -> s {lastSyncStatusMessage = a} :: LastSync)

instance Core.FromJSON LastSync where
  parseJSON =
    Core.withObject
      "LastSync"
      ( \x ->
          LastSync'
            Prelude.<$> (x Core..:? "LastSyncTime")
            Prelude.<*> (x Core..:? "LastSuccessfulSyncTime")
            Prelude.<*> ( x
                            Core..:? "LastSuccessfulSyncProvisioningArtifactId"
                        )
            Prelude.<*> (x Core..:? "LastSyncStatus")
            Prelude.<*> (x Core..:? "LastSyncStatusMessage")
      )

instance Prelude.Hashable LastSync where
  hashWithSalt _salt LastSync' {..} =
    _salt `Prelude.hashWithSalt` lastSyncTime
      `Prelude.hashWithSalt` lastSuccessfulSyncTime
      `Prelude.hashWithSalt` lastSuccessfulSyncProvisioningArtifactId
      `Prelude.hashWithSalt` lastSyncStatus
      `Prelude.hashWithSalt` lastSyncStatusMessage

instance Prelude.NFData LastSync where
  rnf LastSync' {..} =
    Prelude.rnf lastSyncTime
      `Prelude.seq` Prelude.rnf lastSuccessfulSyncTime
      `Prelude.seq` Prelude.rnf lastSuccessfulSyncProvisioningArtifactId
      `Prelude.seq` Prelude.rnf lastSyncStatus
      `Prelude.seq` Prelude.rnf lastSyncStatusMessage
