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
-- Module      : Amazonka.ResilienceHub.Types.AppComponentCompliance
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.ResilienceHub.Types.AppComponentCompliance where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.ResilienceHub.Types.ComplianceStatus
import Amazonka.ResilienceHub.Types.Cost
import Amazonka.ResilienceHub.Types.DisruptionCompliance
import Amazonka.ResilienceHub.Types.DisruptionType
import Amazonka.ResilienceHub.Types.ResiliencyScore

-- | Defines the compliance of an application component against the
-- resiliency policy.
--
-- /See:/ 'newAppComponentCompliance' smart constructor.
data AppComponentCompliance = AppComponentCompliance'
  { -- | The compliance message.
    message :: Prelude.Maybe Prelude.Text,
    -- | The current resiliency score for the application.
    resiliencyScore :: Prelude.Maybe ResiliencyScore,
    -- | The name of the application component.
    appComponentName :: Prelude.Maybe Prelude.Text,
    -- | The status of the action.
    status :: Prelude.Maybe ComplianceStatus,
    -- | The cost for the application.
    cost :: Prelude.Maybe Cost,
    -- | The compliance of the application component against the resiliency
    -- policy.
    compliance :: Prelude.Maybe (Prelude.HashMap DisruptionType DisruptionCompliance)
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AppComponentCompliance' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'message', 'appComponentCompliance_message' - The compliance message.
--
-- 'resiliencyScore', 'appComponentCompliance_resiliencyScore' - The current resiliency score for the application.
--
-- 'appComponentName', 'appComponentCompliance_appComponentName' - The name of the application component.
--
-- 'status', 'appComponentCompliance_status' - The status of the action.
--
-- 'cost', 'appComponentCompliance_cost' - The cost for the application.
--
-- 'compliance', 'appComponentCompliance_compliance' - The compliance of the application component against the resiliency
-- policy.
newAppComponentCompliance ::
  AppComponentCompliance
newAppComponentCompliance =
  AppComponentCompliance'
    { message = Prelude.Nothing,
      resiliencyScore = Prelude.Nothing,
      appComponentName = Prelude.Nothing,
      status = Prelude.Nothing,
      cost = Prelude.Nothing,
      compliance = Prelude.Nothing
    }

-- | The compliance message.
appComponentCompliance_message :: Lens.Lens' AppComponentCompliance (Prelude.Maybe Prelude.Text)
appComponentCompliance_message = Lens.lens (\AppComponentCompliance' {message} -> message) (\s@AppComponentCompliance' {} a -> s {message = a} :: AppComponentCompliance)

-- | The current resiliency score for the application.
appComponentCompliance_resiliencyScore :: Lens.Lens' AppComponentCompliance (Prelude.Maybe ResiliencyScore)
appComponentCompliance_resiliencyScore = Lens.lens (\AppComponentCompliance' {resiliencyScore} -> resiliencyScore) (\s@AppComponentCompliance' {} a -> s {resiliencyScore = a} :: AppComponentCompliance)

-- | The name of the application component.
appComponentCompliance_appComponentName :: Lens.Lens' AppComponentCompliance (Prelude.Maybe Prelude.Text)
appComponentCompliance_appComponentName = Lens.lens (\AppComponentCompliance' {appComponentName} -> appComponentName) (\s@AppComponentCompliance' {} a -> s {appComponentName = a} :: AppComponentCompliance)

-- | The status of the action.
appComponentCompliance_status :: Lens.Lens' AppComponentCompliance (Prelude.Maybe ComplianceStatus)
appComponentCompliance_status = Lens.lens (\AppComponentCompliance' {status} -> status) (\s@AppComponentCompliance' {} a -> s {status = a} :: AppComponentCompliance)

-- | The cost for the application.
appComponentCompliance_cost :: Lens.Lens' AppComponentCompliance (Prelude.Maybe Cost)
appComponentCompliance_cost = Lens.lens (\AppComponentCompliance' {cost} -> cost) (\s@AppComponentCompliance' {} a -> s {cost = a} :: AppComponentCompliance)

-- | The compliance of the application component against the resiliency
-- policy.
appComponentCompliance_compliance :: Lens.Lens' AppComponentCompliance (Prelude.Maybe (Prelude.HashMap DisruptionType DisruptionCompliance))
appComponentCompliance_compliance = Lens.lens (\AppComponentCompliance' {compliance} -> compliance) (\s@AppComponentCompliance' {} a -> s {compliance = a} :: AppComponentCompliance) Prelude.. Lens.mapping Lens.coerced

instance Core.FromJSON AppComponentCompliance where
  parseJSON =
    Core.withObject
      "AppComponentCompliance"
      ( \x ->
          AppComponentCompliance'
            Prelude.<$> (x Core..:? "message")
            Prelude.<*> (x Core..:? "resiliencyScore")
            Prelude.<*> (x Core..:? "appComponentName")
            Prelude.<*> (x Core..:? "status")
            Prelude.<*> (x Core..:? "cost")
            Prelude.<*> (x Core..:? "compliance" Core..!= Prelude.mempty)
      )

instance Prelude.Hashable AppComponentCompliance where
  hashWithSalt _salt AppComponentCompliance' {..} =
    _salt `Prelude.hashWithSalt` message
      `Prelude.hashWithSalt` resiliencyScore
      `Prelude.hashWithSalt` appComponentName
      `Prelude.hashWithSalt` status
      `Prelude.hashWithSalt` cost
      `Prelude.hashWithSalt` compliance

instance Prelude.NFData AppComponentCompliance where
  rnf AppComponentCompliance' {..} =
    Prelude.rnf message
      `Prelude.seq` Prelude.rnf resiliencyScore
      `Prelude.seq` Prelude.rnf appComponentName
      `Prelude.seq` Prelude.rnf status
      `Prelude.seq` Prelude.rnf cost
      `Prelude.seq` Prelude.rnf compliance
