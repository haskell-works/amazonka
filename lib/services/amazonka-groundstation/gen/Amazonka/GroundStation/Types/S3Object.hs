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
-- Module      : Amazonka.GroundStation.Types.S3Object
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.GroundStation.Types.S3Object where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Prelude as Prelude

-- | Object stored in S3 containing ephemeris data.
--
-- /See:/ 'newS3Object' smart constructor.
data S3Object = S3Object'
  { -- | An Amazon S3 key for the ephemeris.
    key :: Prelude.Maybe Prelude.Text,
    -- | An Amazon S3 Bucket name.
    bucket :: Prelude.Maybe Prelude.Text,
    -- | For versioned S3 objects, the version to use for the ephemeris.
    version :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'S3Object' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'key', 's3Object_key' - An Amazon S3 key for the ephemeris.
--
-- 'bucket', 's3Object_bucket' - An Amazon S3 Bucket name.
--
-- 'version', 's3Object_version' - For versioned S3 objects, the version to use for the ephemeris.
newS3Object ::
  S3Object
newS3Object =
  S3Object'
    { key = Prelude.Nothing,
      bucket = Prelude.Nothing,
      version = Prelude.Nothing
    }

-- | An Amazon S3 key for the ephemeris.
s3Object_key :: Lens.Lens' S3Object (Prelude.Maybe Prelude.Text)
s3Object_key = Lens.lens (\S3Object' {key} -> key) (\s@S3Object' {} a -> s {key = a} :: S3Object)

-- | An Amazon S3 Bucket name.
s3Object_bucket :: Lens.Lens' S3Object (Prelude.Maybe Prelude.Text)
s3Object_bucket = Lens.lens (\S3Object' {bucket} -> bucket) (\s@S3Object' {} a -> s {bucket = a} :: S3Object)

-- | For versioned S3 objects, the version to use for the ephemeris.
s3Object_version :: Lens.Lens' S3Object (Prelude.Maybe Prelude.Text)
s3Object_version = Lens.lens (\S3Object' {version} -> version) (\s@S3Object' {} a -> s {version = a} :: S3Object)

instance Core.FromJSON S3Object where
  parseJSON =
    Core.withObject
      "S3Object"
      ( \x ->
          S3Object'
            Prelude.<$> (x Core..:? "key")
            Prelude.<*> (x Core..:? "bucket")
            Prelude.<*> (x Core..:? "version")
      )

instance Prelude.Hashable S3Object where
  hashWithSalt _salt S3Object' {..} =
    _salt `Prelude.hashWithSalt` key
      `Prelude.hashWithSalt` bucket
      `Prelude.hashWithSalt` version

instance Prelude.NFData S3Object where
  rnf S3Object' {..} =
    Prelude.rnf key
      `Prelude.seq` Prelude.rnf bucket
      `Prelude.seq` Prelude.rnf version

instance Core.ToJSON S3Object where
  toJSON S3Object' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("key" Core..=) Prelude.<$> key,
            ("bucket" Core..=) Prelude.<$> bucket,
            ("version" Core..=) Prelude.<$> version
          ]
      )
