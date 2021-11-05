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
-- Module      : Network.AWS.Proton.GetEnvironment
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get detail data for an environment.
module Network.AWS.Proton.GetEnvironment
  ( -- * Creating a Request
    GetEnvironment (..),
    newGetEnvironment,

    -- * Request Lenses
    getEnvironment_name,

    -- * Destructuring the Response
    GetEnvironmentResponse (..),
    newGetEnvironmentResponse,

    -- * Response Lenses
    getEnvironmentResponse_httpStatus,
    getEnvironmentResponse_environment,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.Proton.Types
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetEnvironment' smart constructor.
data GetEnvironment = GetEnvironment'
  { -- | The name of the environment that you want to get the detail data for.
    name :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetEnvironment' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'getEnvironment_name' - The name of the environment that you want to get the detail data for.
newGetEnvironment ::
  -- | 'name'
  Prelude.Text ->
  GetEnvironment
newGetEnvironment pName_ =
  GetEnvironment' {name = pName_}

-- | The name of the environment that you want to get the detail data for.
getEnvironment_name :: Lens.Lens' GetEnvironment Prelude.Text
getEnvironment_name = Lens.lens (\GetEnvironment' {name} -> name) (\s@GetEnvironment' {} a -> s {name = a} :: GetEnvironment)

instance Core.AWSRequest GetEnvironment where
  type
    AWSResponse GetEnvironment =
      GetEnvironmentResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetEnvironmentResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "environment")
      )

instance Prelude.Hashable GetEnvironment

instance Prelude.NFData GetEnvironment

instance Core.ToHeaders GetEnvironment where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AwsProton20200720.GetEnvironment" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.0" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON GetEnvironment where
  toJSON GetEnvironment' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("name" Core..= name)]
      )

instance Core.ToPath GetEnvironment where
  toPath = Prelude.const "/"

instance Core.ToQuery GetEnvironment where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetEnvironmentResponse' smart constructor.
data GetEnvironmentResponse = GetEnvironmentResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The environment detail data that\'s returned by AWS Proton.
    environment :: Environment
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetEnvironmentResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'getEnvironmentResponse_httpStatus' - The response's http status code.
--
-- 'environment', 'getEnvironmentResponse_environment' - The environment detail data that\'s returned by AWS Proton.
newGetEnvironmentResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'environment'
  Environment ->
  GetEnvironmentResponse
newGetEnvironmentResponse pHttpStatus_ pEnvironment_ =
  GetEnvironmentResponse'
    { httpStatus = pHttpStatus_,
      environment = pEnvironment_
    }

-- | The response's http status code.
getEnvironmentResponse_httpStatus :: Lens.Lens' GetEnvironmentResponse Prelude.Int
getEnvironmentResponse_httpStatus = Lens.lens (\GetEnvironmentResponse' {httpStatus} -> httpStatus) (\s@GetEnvironmentResponse' {} a -> s {httpStatus = a} :: GetEnvironmentResponse)

-- | The environment detail data that\'s returned by AWS Proton.
getEnvironmentResponse_environment :: Lens.Lens' GetEnvironmentResponse Environment
getEnvironmentResponse_environment = Lens.lens (\GetEnvironmentResponse' {environment} -> environment) (\s@GetEnvironmentResponse' {} a -> s {environment = a} :: GetEnvironmentResponse)

instance Prelude.NFData GetEnvironmentResponse