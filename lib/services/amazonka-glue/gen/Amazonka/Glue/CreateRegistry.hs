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
-- Module      : Amazonka.Glue.CreateRegistry
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new registry which may be used to hold a collection of
-- schemas.
module Amazonka.Glue.CreateRegistry
  ( -- * Creating a Request
    CreateRegistry (..),
    newCreateRegistry,

    -- * Request Lenses
    createRegistry_description,
    createRegistry_tags,
    createRegistry_registryName,

    -- * Destructuring the Response
    CreateRegistryResponse (..),
    newCreateRegistryResponse,

    -- * Response Lenses
    createRegistryResponse_registryName,
    createRegistryResponse_registryArn,
    createRegistryResponse_description,
    createRegistryResponse_tags,
    createRegistryResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.Glue.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newCreateRegistry' smart constructor.
data CreateRegistry = CreateRegistry'
  { -- | A description of the registry. If description is not provided, there
    -- will not be any default value for this.
    description :: Prelude.Maybe Prelude.Text,
    -- | Amazon Web Services tags that contain a key value pair and may be
    -- searched by console, command line, or API.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | Name of the registry to be created of max length of 255, and may only
    -- contain letters, numbers, hyphen, underscore, dollar sign, or hash mark.
    -- No whitespace.
    registryName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateRegistry' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'description', 'createRegistry_description' - A description of the registry. If description is not provided, there
-- will not be any default value for this.
--
-- 'tags', 'createRegistry_tags' - Amazon Web Services tags that contain a key value pair and may be
-- searched by console, command line, or API.
--
-- 'registryName', 'createRegistry_registryName' - Name of the registry to be created of max length of 255, and may only
-- contain letters, numbers, hyphen, underscore, dollar sign, or hash mark.
-- No whitespace.
newCreateRegistry ::
  -- | 'registryName'
  Prelude.Text ->
  CreateRegistry
newCreateRegistry pRegistryName_ =
  CreateRegistry'
    { description = Prelude.Nothing,
      tags = Prelude.Nothing,
      registryName = pRegistryName_
    }

-- | A description of the registry. If description is not provided, there
-- will not be any default value for this.
createRegistry_description :: Lens.Lens' CreateRegistry (Prelude.Maybe Prelude.Text)
createRegistry_description = Lens.lens (\CreateRegistry' {description} -> description) (\s@CreateRegistry' {} a -> s {description = a} :: CreateRegistry)

-- | Amazon Web Services tags that contain a key value pair and may be
-- searched by console, command line, or API.
createRegistry_tags :: Lens.Lens' CreateRegistry (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
createRegistry_tags = Lens.lens (\CreateRegistry' {tags} -> tags) (\s@CreateRegistry' {} a -> s {tags = a} :: CreateRegistry) Prelude.. Lens.mapping Lens.coerced

-- | Name of the registry to be created of max length of 255, and may only
-- contain letters, numbers, hyphen, underscore, dollar sign, or hash mark.
-- No whitespace.
createRegistry_registryName :: Lens.Lens' CreateRegistry Prelude.Text
createRegistry_registryName = Lens.lens (\CreateRegistry' {registryName} -> registryName) (\s@CreateRegistry' {} a -> s {registryName = a} :: CreateRegistry)

instance Core.AWSRequest CreateRegistry where
  type
    AWSResponse CreateRegistry =
      CreateRegistryResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateRegistryResponse'
            Prelude.<$> (x Core..?> "RegistryName")
            Prelude.<*> (x Core..?> "RegistryArn")
            Prelude.<*> (x Core..?> "Description")
            Prelude.<*> (x Core..?> "Tags" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateRegistry where
  hashWithSalt _salt CreateRegistry' {..} =
    _salt `Prelude.hashWithSalt` description
      `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` registryName

instance Prelude.NFData CreateRegistry where
  rnf CreateRegistry' {..} =
    Prelude.rnf description
      `Prelude.seq` Prelude.rnf tags
      `Prelude.seq` Prelude.rnf registryName

instance Core.ToHeaders CreateRegistry where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ("AWSGlue.CreateRegistry" :: Prelude.ByteString),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateRegistry where
  toJSON CreateRegistry' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Description" Core..=) Prelude.<$> description,
            ("Tags" Core..=) Prelude.<$> tags,
            Prelude.Just ("RegistryName" Core..= registryName)
          ]
      )

instance Core.ToPath CreateRegistry where
  toPath = Prelude.const "/"

instance Core.ToQuery CreateRegistry where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateRegistryResponse' smart constructor.
data CreateRegistryResponse = CreateRegistryResponse'
  { -- | The name of the registry.
    registryName :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the newly created registry.
    registryArn :: Prelude.Maybe Prelude.Text,
    -- | A description of the registry.
    description :: Prelude.Maybe Prelude.Text,
    -- | The tags for the registry.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateRegistryResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'registryName', 'createRegistryResponse_registryName' - The name of the registry.
--
-- 'registryArn', 'createRegistryResponse_registryArn' - The Amazon Resource Name (ARN) of the newly created registry.
--
-- 'description', 'createRegistryResponse_description' - A description of the registry.
--
-- 'tags', 'createRegistryResponse_tags' - The tags for the registry.
--
-- 'httpStatus', 'createRegistryResponse_httpStatus' - The response's http status code.
newCreateRegistryResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateRegistryResponse
newCreateRegistryResponse pHttpStatus_ =
  CreateRegistryResponse'
    { registryName =
        Prelude.Nothing,
      registryArn = Prelude.Nothing,
      description = Prelude.Nothing,
      tags = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The name of the registry.
createRegistryResponse_registryName :: Lens.Lens' CreateRegistryResponse (Prelude.Maybe Prelude.Text)
createRegistryResponse_registryName = Lens.lens (\CreateRegistryResponse' {registryName} -> registryName) (\s@CreateRegistryResponse' {} a -> s {registryName = a} :: CreateRegistryResponse)

-- | The Amazon Resource Name (ARN) of the newly created registry.
createRegistryResponse_registryArn :: Lens.Lens' CreateRegistryResponse (Prelude.Maybe Prelude.Text)
createRegistryResponse_registryArn = Lens.lens (\CreateRegistryResponse' {registryArn} -> registryArn) (\s@CreateRegistryResponse' {} a -> s {registryArn = a} :: CreateRegistryResponse)

-- | A description of the registry.
createRegistryResponse_description :: Lens.Lens' CreateRegistryResponse (Prelude.Maybe Prelude.Text)
createRegistryResponse_description = Lens.lens (\CreateRegistryResponse' {description} -> description) (\s@CreateRegistryResponse' {} a -> s {description = a} :: CreateRegistryResponse)

-- | The tags for the registry.
createRegistryResponse_tags :: Lens.Lens' CreateRegistryResponse (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
createRegistryResponse_tags = Lens.lens (\CreateRegistryResponse' {tags} -> tags) (\s@CreateRegistryResponse' {} a -> s {tags = a} :: CreateRegistryResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
createRegistryResponse_httpStatus :: Lens.Lens' CreateRegistryResponse Prelude.Int
createRegistryResponse_httpStatus = Lens.lens (\CreateRegistryResponse' {httpStatus} -> httpStatus) (\s@CreateRegistryResponse' {} a -> s {httpStatus = a} :: CreateRegistryResponse)

instance Prelude.NFData CreateRegistryResponse where
  rnf CreateRegistryResponse' {..} =
    Prelude.rnf registryName
      `Prelude.seq` Prelude.rnf registryArn
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf tags
      `Prelude.seq` Prelude.rnf httpStatus
