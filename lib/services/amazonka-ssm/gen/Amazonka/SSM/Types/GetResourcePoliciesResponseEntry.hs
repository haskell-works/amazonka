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
-- Module      : Amazonka.SSM.Types.GetResourcePoliciesResponseEntry
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SSM.Types.GetResourcePoliciesResponseEntry where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Prelude as Prelude

-- | A resource policy helps you to define the IAM entity (for example, an
-- Amazon Web Services account) that can manage your Systems Manager
-- resources. Currently, @OpsItemGroup@ is the only resource that supports
-- Systems Manager resource policies. The resource policy for
-- @OpsItemGroup@ enables Amazon Web Services accounts to view and interact
-- with OpsCenter operational work items (OpsItems).
--
-- /See:/ 'newGetResourcePoliciesResponseEntry' smart constructor.
data GetResourcePoliciesResponseEntry = GetResourcePoliciesResponseEntry'
  { -- | A policy ID.
    policyId :: Prelude.Maybe Prelude.Text,
    -- | A resource policy helps you to define the IAM entity (for example, an
    -- Amazon Web Services account) that can manage your Systems Manager
    -- resources. Currently, @OpsItemGroup@ is the only resource that supports
    -- Systems Manager resource policies. The resource policy for
    -- @OpsItemGroup@ enables Amazon Web Services accounts to view and interact
    -- with OpsCenter operational work items (OpsItems).
    policy :: Prelude.Maybe Prelude.Text,
    -- | ID of the current policy version. The hash helps to prevent a situation
    -- where multiple users attempt to overwrite a policy. You must provide
    -- this hash when updating or deleting a policy.
    policyHash :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetResourcePoliciesResponseEntry' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'policyId', 'getResourcePoliciesResponseEntry_policyId' - A policy ID.
--
-- 'policy', 'getResourcePoliciesResponseEntry_policy' - A resource policy helps you to define the IAM entity (for example, an
-- Amazon Web Services account) that can manage your Systems Manager
-- resources. Currently, @OpsItemGroup@ is the only resource that supports
-- Systems Manager resource policies. The resource policy for
-- @OpsItemGroup@ enables Amazon Web Services accounts to view and interact
-- with OpsCenter operational work items (OpsItems).
--
-- 'policyHash', 'getResourcePoliciesResponseEntry_policyHash' - ID of the current policy version. The hash helps to prevent a situation
-- where multiple users attempt to overwrite a policy. You must provide
-- this hash when updating or deleting a policy.
newGetResourcePoliciesResponseEntry ::
  GetResourcePoliciesResponseEntry
newGetResourcePoliciesResponseEntry =
  GetResourcePoliciesResponseEntry'
    { policyId =
        Prelude.Nothing,
      policy = Prelude.Nothing,
      policyHash = Prelude.Nothing
    }

-- | A policy ID.
getResourcePoliciesResponseEntry_policyId :: Lens.Lens' GetResourcePoliciesResponseEntry (Prelude.Maybe Prelude.Text)
getResourcePoliciesResponseEntry_policyId = Lens.lens (\GetResourcePoliciesResponseEntry' {policyId} -> policyId) (\s@GetResourcePoliciesResponseEntry' {} a -> s {policyId = a} :: GetResourcePoliciesResponseEntry)

-- | A resource policy helps you to define the IAM entity (for example, an
-- Amazon Web Services account) that can manage your Systems Manager
-- resources. Currently, @OpsItemGroup@ is the only resource that supports
-- Systems Manager resource policies. The resource policy for
-- @OpsItemGroup@ enables Amazon Web Services accounts to view and interact
-- with OpsCenter operational work items (OpsItems).
getResourcePoliciesResponseEntry_policy :: Lens.Lens' GetResourcePoliciesResponseEntry (Prelude.Maybe Prelude.Text)
getResourcePoliciesResponseEntry_policy = Lens.lens (\GetResourcePoliciesResponseEntry' {policy} -> policy) (\s@GetResourcePoliciesResponseEntry' {} a -> s {policy = a} :: GetResourcePoliciesResponseEntry)

-- | ID of the current policy version. The hash helps to prevent a situation
-- where multiple users attempt to overwrite a policy. You must provide
-- this hash when updating or deleting a policy.
getResourcePoliciesResponseEntry_policyHash :: Lens.Lens' GetResourcePoliciesResponseEntry (Prelude.Maybe Prelude.Text)
getResourcePoliciesResponseEntry_policyHash = Lens.lens (\GetResourcePoliciesResponseEntry' {policyHash} -> policyHash) (\s@GetResourcePoliciesResponseEntry' {} a -> s {policyHash = a} :: GetResourcePoliciesResponseEntry)

instance
  Core.FromJSON
    GetResourcePoliciesResponseEntry
  where
  parseJSON =
    Core.withObject
      "GetResourcePoliciesResponseEntry"
      ( \x ->
          GetResourcePoliciesResponseEntry'
            Prelude.<$> (x Core..:? "PolicyId")
            Prelude.<*> (x Core..:? "Policy")
            Prelude.<*> (x Core..:? "PolicyHash")
      )

instance
  Prelude.Hashable
    GetResourcePoliciesResponseEntry
  where
  hashWithSalt
    _salt
    GetResourcePoliciesResponseEntry' {..} =
      _salt `Prelude.hashWithSalt` policyId
        `Prelude.hashWithSalt` policy
        `Prelude.hashWithSalt` policyHash

instance
  Prelude.NFData
    GetResourcePoliciesResponseEntry
  where
  rnf GetResourcePoliciesResponseEntry' {..} =
    Prelude.rnf policyId
      `Prelude.seq` Prelude.rnf policy
      `Prelude.seq` Prelude.rnf policyHash
