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
-- Module      : Network.AWS.MacieV2.Types.UnprocessedAccount
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MacieV2.Types.UnprocessedAccount where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.MacieV2.Types.ErrorCode
import qualified Network.AWS.Prelude as Prelude

-- | Provides information about an account-related request that hasn\'t been
-- processed.
--
-- /See:/ 'newUnprocessedAccount' smart constructor.
data UnprocessedAccount = UnprocessedAccount'
  { -- | The Amazon Web Services account ID for the account that the request
    -- applies to.
    accountId :: Prelude.Maybe Prelude.Text,
    -- | The source of the issue or delay in processing the request.
    errorCode :: Prelude.Maybe ErrorCode,
    -- | The reason why the request hasn\'t been processed.
    errorMessage :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UnprocessedAccount' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'accountId', 'unprocessedAccount_accountId' - The Amazon Web Services account ID for the account that the request
-- applies to.
--
-- 'errorCode', 'unprocessedAccount_errorCode' - The source of the issue or delay in processing the request.
--
-- 'errorMessage', 'unprocessedAccount_errorMessage' - The reason why the request hasn\'t been processed.
newUnprocessedAccount ::
  UnprocessedAccount
newUnprocessedAccount =
  UnprocessedAccount'
    { accountId = Prelude.Nothing,
      errorCode = Prelude.Nothing,
      errorMessage = Prelude.Nothing
    }

-- | The Amazon Web Services account ID for the account that the request
-- applies to.
unprocessedAccount_accountId :: Lens.Lens' UnprocessedAccount (Prelude.Maybe Prelude.Text)
unprocessedAccount_accountId = Lens.lens (\UnprocessedAccount' {accountId} -> accountId) (\s@UnprocessedAccount' {} a -> s {accountId = a} :: UnprocessedAccount)

-- | The source of the issue or delay in processing the request.
unprocessedAccount_errorCode :: Lens.Lens' UnprocessedAccount (Prelude.Maybe ErrorCode)
unprocessedAccount_errorCode = Lens.lens (\UnprocessedAccount' {errorCode} -> errorCode) (\s@UnprocessedAccount' {} a -> s {errorCode = a} :: UnprocessedAccount)

-- | The reason why the request hasn\'t been processed.
unprocessedAccount_errorMessage :: Lens.Lens' UnprocessedAccount (Prelude.Maybe Prelude.Text)
unprocessedAccount_errorMessage = Lens.lens (\UnprocessedAccount' {errorMessage} -> errorMessage) (\s@UnprocessedAccount' {} a -> s {errorMessage = a} :: UnprocessedAccount)

instance Core.FromJSON UnprocessedAccount where
  parseJSON =
    Core.withObject
      "UnprocessedAccount"
      ( \x ->
          UnprocessedAccount'
            Prelude.<$> (x Core..:? "accountId")
            Prelude.<*> (x Core..:? "errorCode")
            Prelude.<*> (x Core..:? "errorMessage")
      )

instance Prelude.Hashable UnprocessedAccount

instance Prelude.NFData UnprocessedAccount