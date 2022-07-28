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
-- Module      : Amazonka.QuickSight.DescribeIpRestriction
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provides a summary and status of IP Rules.
module Amazonka.QuickSight.DescribeIpRestriction
  ( -- * Creating a Request
    DescribeIpRestriction (..),
    newDescribeIpRestriction,

    -- * Request Lenses
    describeIpRestriction_awsAccountId,

    -- * Destructuring the Response
    DescribeIpRestrictionResponse (..),
    newDescribeIpRestrictionResponse,

    -- * Response Lenses
    describeIpRestrictionResponse_awsAccountId,
    describeIpRestrictionResponse_ipRestrictionRuleMap,
    describeIpRestrictionResponse_requestId,
    describeIpRestrictionResponse_enabled,
    describeIpRestrictionResponse_status,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.QuickSight.Types
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newDescribeIpRestriction' smart constructor.
data DescribeIpRestriction = DescribeIpRestriction'
  { -- | Your AWS account ID.
    awsAccountId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeIpRestriction' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'awsAccountId', 'describeIpRestriction_awsAccountId' - Your AWS account ID.
newDescribeIpRestriction ::
  -- | 'awsAccountId'
  Prelude.Text ->
  DescribeIpRestriction
newDescribeIpRestriction pAwsAccountId_ =
  DescribeIpRestriction'
    { awsAccountId =
        pAwsAccountId_
    }

-- | Your AWS account ID.
describeIpRestriction_awsAccountId :: Lens.Lens' DescribeIpRestriction Prelude.Text
describeIpRestriction_awsAccountId = Lens.lens (\DescribeIpRestriction' {awsAccountId} -> awsAccountId) (\s@DescribeIpRestriction' {} a -> s {awsAccountId = a} :: DescribeIpRestriction)

instance Core.AWSRequest DescribeIpRestriction where
  type
    AWSResponse DescribeIpRestriction =
      DescribeIpRestrictionResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeIpRestrictionResponse'
            Prelude.<$> (x Core..?> "AwsAccountId")
            Prelude.<*> ( x Core..?> "IpRestrictionRuleMap"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (x Core..?> "RequestId")
            Prelude.<*> (x Core..?> "Enabled")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeIpRestriction where
  hashWithSalt _salt DescribeIpRestriction' {..} =
    _salt `Prelude.hashWithSalt` awsAccountId

instance Prelude.NFData DescribeIpRestriction where
  rnf DescribeIpRestriction' {..} =
    Prelude.rnf awsAccountId

instance Core.ToHeaders DescribeIpRestriction where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.0" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath DescribeIpRestriction where
  toPath DescribeIpRestriction' {..} =
    Prelude.mconcat
      [ "/accounts/",
        Core.toBS awsAccountId,
        "/ip-restriction"
      ]

instance Core.ToQuery DescribeIpRestriction where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeIpRestrictionResponse' smart constructor.
data DescribeIpRestrictionResponse = DescribeIpRestrictionResponse'
  { -- | Your AWS account ID.
    awsAccountId :: Prelude.Maybe Prelude.Text,
    -- | Describes the IP rules with CIDR range and description.
    ipRestrictionRuleMap :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The ID of the describe request.
    requestId :: Prelude.Maybe Prelude.Text,
    -- | Whether or not IP rules are enabled.
    enabled :: Prelude.Maybe Prelude.Bool,
    -- | The status of a set of IP restrictions. A successful request returns a
    -- 200 status code.
    status :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeIpRestrictionResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'awsAccountId', 'describeIpRestrictionResponse_awsAccountId' - Your AWS account ID.
--
-- 'ipRestrictionRuleMap', 'describeIpRestrictionResponse_ipRestrictionRuleMap' - Describes the IP rules with CIDR range and description.
--
-- 'requestId', 'describeIpRestrictionResponse_requestId' - The ID of the describe request.
--
-- 'enabled', 'describeIpRestrictionResponse_enabled' - Whether or not IP rules are enabled.
--
-- 'status', 'describeIpRestrictionResponse_status' - The status of a set of IP restrictions. A successful request returns a
-- 200 status code.
newDescribeIpRestrictionResponse ::
  -- | 'status'
  Prelude.Int ->
  DescribeIpRestrictionResponse
newDescribeIpRestrictionResponse pStatus_ =
  DescribeIpRestrictionResponse'
    { awsAccountId =
        Prelude.Nothing,
      ipRestrictionRuleMap = Prelude.Nothing,
      requestId = Prelude.Nothing,
      enabled = Prelude.Nothing,
      status = pStatus_
    }

-- | Your AWS account ID.
describeIpRestrictionResponse_awsAccountId :: Lens.Lens' DescribeIpRestrictionResponse (Prelude.Maybe Prelude.Text)
describeIpRestrictionResponse_awsAccountId = Lens.lens (\DescribeIpRestrictionResponse' {awsAccountId} -> awsAccountId) (\s@DescribeIpRestrictionResponse' {} a -> s {awsAccountId = a} :: DescribeIpRestrictionResponse)

-- | Describes the IP rules with CIDR range and description.
describeIpRestrictionResponse_ipRestrictionRuleMap :: Lens.Lens' DescribeIpRestrictionResponse (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
describeIpRestrictionResponse_ipRestrictionRuleMap = Lens.lens (\DescribeIpRestrictionResponse' {ipRestrictionRuleMap} -> ipRestrictionRuleMap) (\s@DescribeIpRestrictionResponse' {} a -> s {ipRestrictionRuleMap = a} :: DescribeIpRestrictionResponse) Prelude.. Lens.mapping Lens.coerced

-- | The ID of the describe request.
describeIpRestrictionResponse_requestId :: Lens.Lens' DescribeIpRestrictionResponse (Prelude.Maybe Prelude.Text)
describeIpRestrictionResponse_requestId = Lens.lens (\DescribeIpRestrictionResponse' {requestId} -> requestId) (\s@DescribeIpRestrictionResponse' {} a -> s {requestId = a} :: DescribeIpRestrictionResponse)

-- | Whether or not IP rules are enabled.
describeIpRestrictionResponse_enabled :: Lens.Lens' DescribeIpRestrictionResponse (Prelude.Maybe Prelude.Bool)
describeIpRestrictionResponse_enabled = Lens.lens (\DescribeIpRestrictionResponse' {enabled} -> enabled) (\s@DescribeIpRestrictionResponse' {} a -> s {enabled = a} :: DescribeIpRestrictionResponse)

-- | The status of a set of IP restrictions. A successful request returns a
-- 200 status code.
describeIpRestrictionResponse_status :: Lens.Lens' DescribeIpRestrictionResponse Prelude.Int
describeIpRestrictionResponse_status = Lens.lens (\DescribeIpRestrictionResponse' {status} -> status) (\s@DescribeIpRestrictionResponse' {} a -> s {status = a} :: DescribeIpRestrictionResponse)

instance Prelude.NFData DescribeIpRestrictionResponse where
  rnf DescribeIpRestrictionResponse' {..} =
    Prelude.rnf awsAccountId
      `Prelude.seq` Prelude.rnf ipRestrictionRuleMap
      `Prelude.seq` Prelude.rnf requestId
      `Prelude.seq` Prelude.rnf enabled
      `Prelude.seq` Prelude.rnf status