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
-- Module      : Amazonka.OpenSearch.Types.AutoTune
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.OpenSearch.Types.AutoTune where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import Amazonka.OpenSearch.Types.AutoTuneDetails
import Amazonka.OpenSearch.Types.AutoTuneType
import qualified Amazonka.Prelude as Prelude

-- | Information about an Auto-Tune action. For more information, see
-- <https://docs.aws.amazon.com/opensearch-service/latest/developerguide/auto-tune.html Auto-Tune for Amazon OpenSearch Service>.
--
-- /See:/ 'newAutoTune' smart constructor.
data AutoTune = AutoTune'
  { -- | The type of Auto-Tune action.
    autoTuneType :: Prelude.Maybe AutoTuneType,
    -- | Details about an Auto-Tune action.
    autoTuneDetails :: Prelude.Maybe AutoTuneDetails
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AutoTune' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'autoTuneType', 'autoTune_autoTuneType' - The type of Auto-Tune action.
--
-- 'autoTuneDetails', 'autoTune_autoTuneDetails' - Details about an Auto-Tune action.
newAutoTune ::
  AutoTune
newAutoTune =
  AutoTune'
    { autoTuneType = Prelude.Nothing,
      autoTuneDetails = Prelude.Nothing
    }

-- | The type of Auto-Tune action.
autoTune_autoTuneType :: Lens.Lens' AutoTune (Prelude.Maybe AutoTuneType)
autoTune_autoTuneType = Lens.lens (\AutoTune' {autoTuneType} -> autoTuneType) (\s@AutoTune' {} a -> s {autoTuneType = a} :: AutoTune)

-- | Details about an Auto-Tune action.
autoTune_autoTuneDetails :: Lens.Lens' AutoTune (Prelude.Maybe AutoTuneDetails)
autoTune_autoTuneDetails = Lens.lens (\AutoTune' {autoTuneDetails} -> autoTuneDetails) (\s@AutoTune' {} a -> s {autoTuneDetails = a} :: AutoTune)

instance Core.FromJSON AutoTune where
  parseJSON =
    Core.withObject
      "AutoTune"
      ( \x ->
          AutoTune'
            Prelude.<$> (x Core..:? "AutoTuneType")
            Prelude.<*> (x Core..:? "AutoTuneDetails")
      )

instance Prelude.Hashable AutoTune where
  hashWithSalt _salt AutoTune' {..} =
    _salt `Prelude.hashWithSalt` autoTuneType
      `Prelude.hashWithSalt` autoTuneDetails

instance Prelude.NFData AutoTune where
  rnf AutoTune' {..} =
    Prelude.rnf autoTuneType
      `Prelude.seq` Prelude.rnf autoTuneDetails
