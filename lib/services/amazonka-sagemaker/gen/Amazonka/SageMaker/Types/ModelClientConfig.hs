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
-- Module      : Amazonka.SageMaker.Types.ModelClientConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SageMaker.Types.ModelClientConfig where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Configures the timeout and maximum number of retries for processing a
-- transform job invocation.
--
-- /See:/ 'newModelClientConfig' smart constructor.
data ModelClientConfig = ModelClientConfig'
  { -- | The maximum number of retries when invocation requests are failing.
    invocationsMaxRetries :: Prelude.Maybe Prelude.Natural,
    -- | The timeout value in seconds for an invocation request.
    invocationsTimeoutInSeconds :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ModelClientConfig' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'invocationsMaxRetries', 'modelClientConfig_invocationsMaxRetries' - The maximum number of retries when invocation requests are failing.
--
-- 'invocationsTimeoutInSeconds', 'modelClientConfig_invocationsTimeoutInSeconds' - The timeout value in seconds for an invocation request.
newModelClientConfig ::
  ModelClientConfig
newModelClientConfig =
  ModelClientConfig'
    { invocationsMaxRetries =
        Prelude.Nothing,
      invocationsTimeoutInSeconds = Prelude.Nothing
    }

-- | The maximum number of retries when invocation requests are failing.
modelClientConfig_invocationsMaxRetries :: Lens.Lens' ModelClientConfig (Prelude.Maybe Prelude.Natural)
modelClientConfig_invocationsMaxRetries = Lens.lens (\ModelClientConfig' {invocationsMaxRetries} -> invocationsMaxRetries) (\s@ModelClientConfig' {} a -> s {invocationsMaxRetries = a} :: ModelClientConfig)

-- | The timeout value in seconds for an invocation request.
modelClientConfig_invocationsTimeoutInSeconds :: Lens.Lens' ModelClientConfig (Prelude.Maybe Prelude.Natural)
modelClientConfig_invocationsTimeoutInSeconds = Lens.lens (\ModelClientConfig' {invocationsTimeoutInSeconds} -> invocationsTimeoutInSeconds) (\s@ModelClientConfig' {} a -> s {invocationsTimeoutInSeconds = a} :: ModelClientConfig)

instance Core.FromJSON ModelClientConfig where
  parseJSON =
    Core.withObject
      "ModelClientConfig"
      ( \x ->
          ModelClientConfig'
            Prelude.<$> (x Core..:? "InvocationsMaxRetries")
            Prelude.<*> (x Core..:? "InvocationsTimeoutInSeconds")
      )

instance Prelude.Hashable ModelClientConfig where
  hashWithSalt _salt ModelClientConfig' {..} =
    _salt `Prelude.hashWithSalt` invocationsMaxRetries
      `Prelude.hashWithSalt` invocationsTimeoutInSeconds

instance Prelude.NFData ModelClientConfig where
  rnf ModelClientConfig' {..} =
    Prelude.rnf invocationsMaxRetries
      `Prelude.seq` Prelude.rnf invocationsTimeoutInSeconds

instance Core.ToJSON ModelClientConfig where
  toJSON ModelClientConfig' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("InvocationsMaxRetries" Core..=)
              Prelude.<$> invocationsMaxRetries,
            ("InvocationsTimeoutInSeconds" Core..=)
              Prelude.<$> invocationsTimeoutInSeconds
          ]
      )