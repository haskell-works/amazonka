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
-- Module      : Amazonka.Batch.Types.EksEmptyDir
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Batch.Types.EksEmptyDir where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Prelude as Prelude

-- | Specifies the configuration of a Kubernetes @emptyDir@ volume. An
-- @emptyDir@ volume is first created when a pod is assigned to a node. It
-- exists as long as that pod is running on that node. The @emptyDir@
-- volume is initially empty. All containers in the pod can read and write
-- the files in the @emptyDir@ volume. However, the @emptyDir@ volume can
-- be mounted at the same or different paths in each container. When a pod
-- is removed from a node for any reason, the data in the @emptyDir@ is
-- deleted permanently. For more information, see
-- <https://kubernetes.io/docs/concepts/storage/volumes/#emptydir emptyDir>
-- in the /Kubernetes documentation/.
--
-- /See:/ 'newEksEmptyDir' smart constructor.
data EksEmptyDir = EksEmptyDir'
  { -- | The maximum size of the volume. By default, there\'s no maximum size
    -- defined.
    sizeLimit :: Prelude.Maybe Prelude.Text,
    -- | The medium to store the volume. The default value is an empty string,
    -- which uses the storage of the node.
    --
    -- [\"\"]
    --     __(Default)__ Use the disk storage of the node.
    --
    -- [\"Memory\"]
    --     Use the @tmpfs@ volume that\'s backed by the RAM of the node.
    --     Contents of the volume are lost when the node reboots, and any
    --     storage on the volume counts against the container\'s memory limit.
    medium :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'EksEmptyDir' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'sizeLimit', 'eksEmptyDir_sizeLimit' - The maximum size of the volume. By default, there\'s no maximum size
-- defined.
--
-- 'medium', 'eksEmptyDir_medium' - The medium to store the volume. The default value is an empty string,
-- which uses the storage of the node.
--
-- [\"\"]
--     __(Default)__ Use the disk storage of the node.
--
-- [\"Memory\"]
--     Use the @tmpfs@ volume that\'s backed by the RAM of the node.
--     Contents of the volume are lost when the node reboots, and any
--     storage on the volume counts against the container\'s memory limit.
newEksEmptyDir ::
  EksEmptyDir
newEksEmptyDir =
  EksEmptyDir'
    { sizeLimit = Prelude.Nothing,
      medium = Prelude.Nothing
    }

-- | The maximum size of the volume. By default, there\'s no maximum size
-- defined.
eksEmptyDir_sizeLimit :: Lens.Lens' EksEmptyDir (Prelude.Maybe Prelude.Text)
eksEmptyDir_sizeLimit = Lens.lens (\EksEmptyDir' {sizeLimit} -> sizeLimit) (\s@EksEmptyDir' {} a -> s {sizeLimit = a} :: EksEmptyDir)

-- | The medium to store the volume. The default value is an empty string,
-- which uses the storage of the node.
--
-- [\"\"]
--     __(Default)__ Use the disk storage of the node.
--
-- [\"Memory\"]
--     Use the @tmpfs@ volume that\'s backed by the RAM of the node.
--     Contents of the volume are lost when the node reboots, and any
--     storage on the volume counts against the container\'s memory limit.
eksEmptyDir_medium :: Lens.Lens' EksEmptyDir (Prelude.Maybe Prelude.Text)
eksEmptyDir_medium = Lens.lens (\EksEmptyDir' {medium} -> medium) (\s@EksEmptyDir' {} a -> s {medium = a} :: EksEmptyDir)

instance Core.FromJSON EksEmptyDir where
  parseJSON =
    Core.withObject
      "EksEmptyDir"
      ( \x ->
          EksEmptyDir'
            Prelude.<$> (x Core..:? "sizeLimit")
            Prelude.<*> (x Core..:? "medium")
      )

instance Prelude.Hashable EksEmptyDir where
  hashWithSalt _salt EksEmptyDir' {..} =
    _salt `Prelude.hashWithSalt` sizeLimit
      `Prelude.hashWithSalt` medium

instance Prelude.NFData EksEmptyDir where
  rnf EksEmptyDir' {..} =
    Prelude.rnf sizeLimit
      `Prelude.seq` Prelude.rnf medium

instance Core.ToJSON EksEmptyDir where
  toJSON EksEmptyDir' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("sizeLimit" Core..=) Prelude.<$> sizeLimit,
            ("medium" Core..=) Prelude.<$> medium
          ]
      )
