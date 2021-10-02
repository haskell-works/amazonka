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
-- Module      : Network.AWS.QLDB.UpdateLedgerPermissionsMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the permissions mode of a ledger.
--
-- Before you switch to the @STANDARD@ permissions mode, you must first
-- create all required IAM policies and table tags to avoid disruption to
-- your users. To learn more, see
-- <https://docs.aws.amazon.com/qldb/latest/developerguide/ledger-management.basics.html#ledger-mgmt.basics.update-permissions.migrating Migrating to the standard permissions mode>
-- in the /Amazon QLDB Developer Guide/.
module Network.AWS.QLDB.UpdateLedgerPermissionsMode
  ( -- * Creating a Request
    UpdateLedgerPermissionsMode (..),
    newUpdateLedgerPermissionsMode,

    -- * Request Lenses
    updateLedgerPermissionsMode_name,
    updateLedgerPermissionsMode_permissionsMode,

    -- * Destructuring the Response
    UpdateLedgerPermissionsModeResponse (..),
    newUpdateLedgerPermissionsModeResponse,

    -- * Response Lenses
    updateLedgerPermissionsModeResponse_permissionsMode,
    updateLedgerPermissionsModeResponse_arn,
    updateLedgerPermissionsModeResponse_name,
    updateLedgerPermissionsModeResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.QLDB.Types
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newUpdateLedgerPermissionsMode' smart constructor.
data UpdateLedgerPermissionsMode = UpdateLedgerPermissionsMode'
  { -- | The name of the ledger.
    name :: Prelude.Text,
    -- | The permissions mode to assign to the ledger. This parameter can have
    -- one of the following values:
    --
    -- -   @ALLOW_ALL@: A legacy permissions mode that enables access control
    --     with API-level granularity for ledgers.
    --
    --     This mode allows users who have the @SendCommand@ API permission for
    --     this ledger to run all PartiQL commands (hence, @ALLOW_ALL@) on any
    --     tables in the specified ledger. This mode disregards any table-level
    --     or command-level IAM permissions policies that you create for the
    --     ledger.
    --
    -- -   @STANDARD@: (/Recommended/) A permissions mode that enables access
    --     control with finer granularity for ledgers, tables, and PartiQL
    --     commands.
    --
    --     By default, this mode denies all user requests to run any PartiQL
    --     commands on any tables in this ledger. To allow PartiQL commands to
    --     run, you must create IAM permissions policies for specific table
    --     resources and PartiQL actions, in addition to the @SendCommand@ API
    --     permission for the ledger. For information, see
    --     <https://docs.aws.amazon.com/qldb/latest/developerguide/getting-started-standard-mode.html Getting started with the standard permissions mode>
    --     in the /Amazon QLDB Developer Guide/.
    --
    -- We strongly recommend using the @STANDARD@ permissions mode to maximize
    -- the security of your ledger data.
    permissionsMode :: PermissionsMode
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateLedgerPermissionsMode' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'updateLedgerPermissionsMode_name' - The name of the ledger.
--
-- 'permissionsMode', 'updateLedgerPermissionsMode_permissionsMode' - The permissions mode to assign to the ledger. This parameter can have
-- one of the following values:
--
-- -   @ALLOW_ALL@: A legacy permissions mode that enables access control
--     with API-level granularity for ledgers.
--
--     This mode allows users who have the @SendCommand@ API permission for
--     this ledger to run all PartiQL commands (hence, @ALLOW_ALL@) on any
--     tables in the specified ledger. This mode disregards any table-level
--     or command-level IAM permissions policies that you create for the
--     ledger.
--
-- -   @STANDARD@: (/Recommended/) A permissions mode that enables access
--     control with finer granularity for ledgers, tables, and PartiQL
--     commands.
--
--     By default, this mode denies all user requests to run any PartiQL
--     commands on any tables in this ledger. To allow PartiQL commands to
--     run, you must create IAM permissions policies for specific table
--     resources and PartiQL actions, in addition to the @SendCommand@ API
--     permission for the ledger. For information, see
--     <https://docs.aws.amazon.com/qldb/latest/developerguide/getting-started-standard-mode.html Getting started with the standard permissions mode>
--     in the /Amazon QLDB Developer Guide/.
--
-- We strongly recommend using the @STANDARD@ permissions mode to maximize
-- the security of your ledger data.
newUpdateLedgerPermissionsMode ::
  -- | 'name'
  Prelude.Text ->
  -- | 'permissionsMode'
  PermissionsMode ->
  UpdateLedgerPermissionsMode
newUpdateLedgerPermissionsMode
  pName_
  pPermissionsMode_ =
    UpdateLedgerPermissionsMode'
      { name = pName_,
        permissionsMode = pPermissionsMode_
      }

-- | The name of the ledger.
updateLedgerPermissionsMode_name :: Lens.Lens' UpdateLedgerPermissionsMode Prelude.Text
updateLedgerPermissionsMode_name = Lens.lens (\UpdateLedgerPermissionsMode' {name} -> name) (\s@UpdateLedgerPermissionsMode' {} a -> s {name = a} :: UpdateLedgerPermissionsMode)

-- | The permissions mode to assign to the ledger. This parameter can have
-- one of the following values:
--
-- -   @ALLOW_ALL@: A legacy permissions mode that enables access control
--     with API-level granularity for ledgers.
--
--     This mode allows users who have the @SendCommand@ API permission for
--     this ledger to run all PartiQL commands (hence, @ALLOW_ALL@) on any
--     tables in the specified ledger. This mode disregards any table-level
--     or command-level IAM permissions policies that you create for the
--     ledger.
--
-- -   @STANDARD@: (/Recommended/) A permissions mode that enables access
--     control with finer granularity for ledgers, tables, and PartiQL
--     commands.
--
--     By default, this mode denies all user requests to run any PartiQL
--     commands on any tables in this ledger. To allow PartiQL commands to
--     run, you must create IAM permissions policies for specific table
--     resources and PartiQL actions, in addition to the @SendCommand@ API
--     permission for the ledger. For information, see
--     <https://docs.aws.amazon.com/qldb/latest/developerguide/getting-started-standard-mode.html Getting started with the standard permissions mode>
--     in the /Amazon QLDB Developer Guide/.
--
-- We strongly recommend using the @STANDARD@ permissions mode to maximize
-- the security of your ledger data.
updateLedgerPermissionsMode_permissionsMode :: Lens.Lens' UpdateLedgerPermissionsMode PermissionsMode
updateLedgerPermissionsMode_permissionsMode = Lens.lens (\UpdateLedgerPermissionsMode' {permissionsMode} -> permissionsMode) (\s@UpdateLedgerPermissionsMode' {} a -> s {permissionsMode = a} :: UpdateLedgerPermissionsMode)

instance Core.AWSRequest UpdateLedgerPermissionsMode where
  type
    AWSResponse UpdateLedgerPermissionsMode =
      UpdateLedgerPermissionsModeResponse
  request = Request.patchJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateLedgerPermissionsModeResponse'
            Prelude.<$> (x Core..?> "PermissionsMode")
            Prelude.<*> (x Core..?> "Arn")
            Prelude.<*> (x Core..?> "Name")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdateLedgerPermissionsMode

instance Prelude.NFData UpdateLedgerPermissionsMode

instance Core.ToHeaders UpdateLedgerPermissionsMode where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.0" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateLedgerPermissionsMode where
  toJSON UpdateLedgerPermissionsMode' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("PermissionsMode" Core..= permissionsMode)
          ]
      )

instance Core.ToPath UpdateLedgerPermissionsMode where
  toPath UpdateLedgerPermissionsMode' {..} =
    Prelude.mconcat
      ["/ledgers/", Core.toBS name, "/permissions-mode"]

instance Core.ToQuery UpdateLedgerPermissionsMode where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateLedgerPermissionsModeResponse' smart constructor.
data UpdateLedgerPermissionsModeResponse = UpdateLedgerPermissionsModeResponse'
  { -- | The current permissions mode of the ledger.
    permissionsMode :: Prelude.Maybe PermissionsMode,
    -- | The Amazon Resource Name (ARN) for the ledger.
    arn :: Prelude.Maybe Prelude.Text,
    -- | The name of the ledger.
    name :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateLedgerPermissionsModeResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'permissionsMode', 'updateLedgerPermissionsModeResponse_permissionsMode' - The current permissions mode of the ledger.
--
-- 'arn', 'updateLedgerPermissionsModeResponse_arn' - The Amazon Resource Name (ARN) for the ledger.
--
-- 'name', 'updateLedgerPermissionsModeResponse_name' - The name of the ledger.
--
-- 'httpStatus', 'updateLedgerPermissionsModeResponse_httpStatus' - The response's http status code.
newUpdateLedgerPermissionsModeResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateLedgerPermissionsModeResponse
newUpdateLedgerPermissionsModeResponse pHttpStatus_ =
  UpdateLedgerPermissionsModeResponse'
    { permissionsMode =
        Prelude.Nothing,
      arn = Prelude.Nothing,
      name = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The current permissions mode of the ledger.
updateLedgerPermissionsModeResponse_permissionsMode :: Lens.Lens' UpdateLedgerPermissionsModeResponse (Prelude.Maybe PermissionsMode)
updateLedgerPermissionsModeResponse_permissionsMode = Lens.lens (\UpdateLedgerPermissionsModeResponse' {permissionsMode} -> permissionsMode) (\s@UpdateLedgerPermissionsModeResponse' {} a -> s {permissionsMode = a} :: UpdateLedgerPermissionsModeResponse)

-- | The Amazon Resource Name (ARN) for the ledger.
updateLedgerPermissionsModeResponse_arn :: Lens.Lens' UpdateLedgerPermissionsModeResponse (Prelude.Maybe Prelude.Text)
updateLedgerPermissionsModeResponse_arn = Lens.lens (\UpdateLedgerPermissionsModeResponse' {arn} -> arn) (\s@UpdateLedgerPermissionsModeResponse' {} a -> s {arn = a} :: UpdateLedgerPermissionsModeResponse)

-- | The name of the ledger.
updateLedgerPermissionsModeResponse_name :: Lens.Lens' UpdateLedgerPermissionsModeResponse (Prelude.Maybe Prelude.Text)
updateLedgerPermissionsModeResponse_name = Lens.lens (\UpdateLedgerPermissionsModeResponse' {name} -> name) (\s@UpdateLedgerPermissionsModeResponse' {} a -> s {name = a} :: UpdateLedgerPermissionsModeResponse)

-- | The response's http status code.
updateLedgerPermissionsModeResponse_httpStatus :: Lens.Lens' UpdateLedgerPermissionsModeResponse Prelude.Int
updateLedgerPermissionsModeResponse_httpStatus = Lens.lens (\UpdateLedgerPermissionsModeResponse' {httpStatus} -> httpStatus) (\s@UpdateLedgerPermissionsModeResponse' {} a -> s {httpStatus = a} :: UpdateLedgerPermissionsModeResponse)

instance
  Prelude.NFData
    UpdateLedgerPermissionsModeResponse