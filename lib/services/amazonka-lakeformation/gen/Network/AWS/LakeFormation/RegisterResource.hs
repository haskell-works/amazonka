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
-- Module      : Network.AWS.LakeFormation.RegisterResource
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Registers the resource as managed by the Data Catalog.
--
-- To add or update data, Lake Formation needs read\/write access to the
-- chosen Amazon S3 path. Choose a role that you know has permission to do
-- this, or choose the AWSServiceRoleForLakeFormationDataAccess
-- service-linked role. When you register the first Amazon S3 path, the
-- service-linked role and a new inline policy are created on your behalf.
-- Lake Formation adds the first path to the inline policy and attaches it
-- to the service-linked role. When you register subsequent paths, Lake
-- Formation adds the path to the existing policy.
--
-- The following request registers a new location and gives AWS Lake
-- Formation permission to use the service-linked role to access that
-- location.
--
-- @ResourceArn = arn:aws:s3:::my-bucket UseServiceLinkedRole = true@
--
-- If @UseServiceLinkedRole@ is not set to true, you must provide or set
-- the @RoleArn@:
--
-- @arn:aws:iam::12345:role\/my-data-access-role@
module Network.AWS.LakeFormation.RegisterResource
  ( -- * Creating a Request
    RegisterResource (..),
    newRegisterResource,

    -- * Request Lenses
    registerResource_useServiceLinkedRole,
    registerResource_roleArn,
    registerResource_resourceArn,

    -- * Destructuring the Response
    RegisterResourceResponse (..),
    newRegisterResourceResponse,

    -- * Response Lenses
    registerResourceResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.LakeFormation.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newRegisterResource' smart constructor.
data RegisterResource = RegisterResource'
  { -- | Designates an AWS Identity and Access Management (IAM) service-linked
    -- role by registering this role with the Data Catalog. A service-linked
    -- role is a unique type of IAM role that is linked directly to Lake
    -- Formation.
    --
    -- For more information, see
    -- <https://docs-aws.amazon.com/lake-formation/latest/dg/service-linked-roles.html Using Service-Linked Roles for Lake Formation>.
    useServiceLinkedRole :: Prelude.Maybe Prelude.Bool,
    -- | The identifier for the role that registers the resource.
    roleArn :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the resource that you want to
    -- register.
    resourceArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'RegisterResource' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'useServiceLinkedRole', 'registerResource_useServiceLinkedRole' - Designates an AWS Identity and Access Management (IAM) service-linked
-- role by registering this role with the Data Catalog. A service-linked
-- role is a unique type of IAM role that is linked directly to Lake
-- Formation.
--
-- For more information, see
-- <https://docs-aws.amazon.com/lake-formation/latest/dg/service-linked-roles.html Using Service-Linked Roles for Lake Formation>.
--
-- 'roleArn', 'registerResource_roleArn' - The identifier for the role that registers the resource.
--
-- 'resourceArn', 'registerResource_resourceArn' - The Amazon Resource Name (ARN) of the resource that you want to
-- register.
newRegisterResource ::
  -- | 'resourceArn'
  Prelude.Text ->
  RegisterResource
newRegisterResource pResourceArn_ =
  RegisterResource'
    { useServiceLinkedRole =
        Prelude.Nothing,
      roleArn = Prelude.Nothing,
      resourceArn = pResourceArn_
    }

-- | Designates an AWS Identity and Access Management (IAM) service-linked
-- role by registering this role with the Data Catalog. A service-linked
-- role is a unique type of IAM role that is linked directly to Lake
-- Formation.
--
-- For more information, see
-- <https://docs-aws.amazon.com/lake-formation/latest/dg/service-linked-roles.html Using Service-Linked Roles for Lake Formation>.
registerResource_useServiceLinkedRole :: Lens.Lens' RegisterResource (Prelude.Maybe Prelude.Bool)
registerResource_useServiceLinkedRole = Lens.lens (\RegisterResource' {useServiceLinkedRole} -> useServiceLinkedRole) (\s@RegisterResource' {} a -> s {useServiceLinkedRole = a} :: RegisterResource)

-- | The identifier for the role that registers the resource.
registerResource_roleArn :: Lens.Lens' RegisterResource (Prelude.Maybe Prelude.Text)
registerResource_roleArn = Lens.lens (\RegisterResource' {roleArn} -> roleArn) (\s@RegisterResource' {} a -> s {roleArn = a} :: RegisterResource)

-- | The Amazon Resource Name (ARN) of the resource that you want to
-- register.
registerResource_resourceArn :: Lens.Lens' RegisterResource Prelude.Text
registerResource_resourceArn = Lens.lens (\RegisterResource' {resourceArn} -> resourceArn) (\s@RegisterResource' {} a -> s {resourceArn = a} :: RegisterResource)

instance Core.AWSRequest RegisterResource where
  type
    AWSResponse RegisterResource =
      RegisterResourceResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          RegisterResourceResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable RegisterResource

instance Prelude.NFData RegisterResource

instance Core.ToHeaders RegisterResource where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSLakeFormation.RegisterResource" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON RegisterResource where
  toJSON RegisterResource' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("UseServiceLinkedRole" Core..=)
              Prelude.<$> useServiceLinkedRole,
            ("RoleArn" Core..=) Prelude.<$> roleArn,
            Prelude.Just ("ResourceArn" Core..= resourceArn)
          ]
      )

instance Core.ToPath RegisterResource where
  toPath = Prelude.const "/"

instance Core.ToQuery RegisterResource where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newRegisterResourceResponse' smart constructor.
data RegisterResourceResponse = RegisterResourceResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'RegisterResourceResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'registerResourceResponse_httpStatus' - The response's http status code.
newRegisterResourceResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  RegisterResourceResponse
newRegisterResourceResponse pHttpStatus_ =
  RegisterResourceResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
registerResourceResponse_httpStatus :: Lens.Lens' RegisterResourceResponse Prelude.Int
registerResourceResponse_httpStatus = Lens.lens (\RegisterResourceResponse' {httpStatus} -> httpStatus) (\s@RegisterResourceResponse' {} a -> s {httpStatus = a} :: RegisterResourceResponse)

instance Prelude.NFData RegisterResourceResponse