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
-- Module      : Amazonka.EC2.Types.TotalLocalStorageGBRequest
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.EC2.Types.TotalLocalStorageGBRequest where

import qualified Amazonka.Core as Core
import Amazonka.EC2.Internal
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | The minimum and maximum amount of total local storage, in GB.
--
-- /See:/ 'newTotalLocalStorageGBRequest' smart constructor.
data TotalLocalStorageGBRequest = TotalLocalStorageGBRequest'
  { -- | The maximum amount of total local storage, in GB. To specify no maximum
    -- limit, omit this parameter.
    max :: Prelude.Maybe Prelude.Double,
    -- | The minimum amount of total local storage, in GB. To specify no minimum
    -- limit, omit this parameter.
    min :: Prelude.Maybe Prelude.Double
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'TotalLocalStorageGBRequest' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'max', 'totalLocalStorageGBRequest_max' - The maximum amount of total local storage, in GB. To specify no maximum
-- limit, omit this parameter.
--
-- 'min', 'totalLocalStorageGBRequest_min' - The minimum amount of total local storage, in GB. To specify no minimum
-- limit, omit this parameter.
newTotalLocalStorageGBRequest ::
  TotalLocalStorageGBRequest
newTotalLocalStorageGBRequest =
  TotalLocalStorageGBRequest'
    { max = Prelude.Nothing,
      min = Prelude.Nothing
    }

-- | The maximum amount of total local storage, in GB. To specify no maximum
-- limit, omit this parameter.
totalLocalStorageGBRequest_max :: Lens.Lens' TotalLocalStorageGBRequest (Prelude.Maybe Prelude.Double)
totalLocalStorageGBRequest_max = Lens.lens (\TotalLocalStorageGBRequest' {max} -> max) (\s@TotalLocalStorageGBRequest' {} a -> s {max = a} :: TotalLocalStorageGBRequest)

-- | The minimum amount of total local storage, in GB. To specify no minimum
-- limit, omit this parameter.
totalLocalStorageGBRequest_min :: Lens.Lens' TotalLocalStorageGBRequest (Prelude.Maybe Prelude.Double)
totalLocalStorageGBRequest_min = Lens.lens (\TotalLocalStorageGBRequest' {min} -> min) (\s@TotalLocalStorageGBRequest' {} a -> s {min = a} :: TotalLocalStorageGBRequest)

instance Prelude.Hashable TotalLocalStorageGBRequest where
  hashWithSalt _salt TotalLocalStorageGBRequest' {..} =
    _salt `Prelude.hashWithSalt` max
      `Prelude.hashWithSalt` min

instance Prelude.NFData TotalLocalStorageGBRequest where
  rnf TotalLocalStorageGBRequest' {..} =
    Prelude.rnf max `Prelude.seq` Prelude.rnf min

instance Core.ToQuery TotalLocalStorageGBRequest where
  toQuery TotalLocalStorageGBRequest' {..} =
    Prelude.mconcat
      ["Max" Core.=: max, "Min" Core.=: min]