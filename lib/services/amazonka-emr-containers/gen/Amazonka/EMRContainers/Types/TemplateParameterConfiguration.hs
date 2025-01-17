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
-- Module      : Amazonka.EMRContainers.Types.TemplateParameterConfiguration
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.EMRContainers.Types.TemplateParameterConfiguration where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import Amazonka.EMRContainers.Types.TemplateParameterDataType
import qualified Amazonka.Prelude as Prelude

-- | The configuration of a job template parameter.
--
-- /See:/ 'newTemplateParameterConfiguration' smart constructor.
data TemplateParameterConfiguration = TemplateParameterConfiguration'
  { -- | The type of the job template parameter. Allowed values are: ‘String’,
    -- ‘Number’.
    type' :: Prelude.Maybe TemplateParameterDataType,
    -- | The default value for the job template parameter.
    defaultValue :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'TemplateParameterConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'type'', 'templateParameterConfiguration_type' - The type of the job template parameter. Allowed values are: ‘String’,
-- ‘Number’.
--
-- 'defaultValue', 'templateParameterConfiguration_defaultValue' - The default value for the job template parameter.
newTemplateParameterConfiguration ::
  TemplateParameterConfiguration
newTemplateParameterConfiguration =
  TemplateParameterConfiguration'
    { type' =
        Prelude.Nothing,
      defaultValue = Prelude.Nothing
    }

-- | The type of the job template parameter. Allowed values are: ‘String’,
-- ‘Number’.
templateParameterConfiguration_type :: Lens.Lens' TemplateParameterConfiguration (Prelude.Maybe TemplateParameterDataType)
templateParameterConfiguration_type = Lens.lens (\TemplateParameterConfiguration' {type'} -> type') (\s@TemplateParameterConfiguration' {} a -> s {type' = a} :: TemplateParameterConfiguration)

-- | The default value for the job template parameter.
templateParameterConfiguration_defaultValue :: Lens.Lens' TemplateParameterConfiguration (Prelude.Maybe Prelude.Text)
templateParameterConfiguration_defaultValue = Lens.lens (\TemplateParameterConfiguration' {defaultValue} -> defaultValue) (\s@TemplateParameterConfiguration' {} a -> s {defaultValue = a} :: TemplateParameterConfiguration)

instance Core.FromJSON TemplateParameterConfiguration where
  parseJSON =
    Core.withObject
      "TemplateParameterConfiguration"
      ( \x ->
          TemplateParameterConfiguration'
            Prelude.<$> (x Core..:? "type")
            Prelude.<*> (x Core..:? "defaultValue")
      )

instance
  Prelude.Hashable
    TemplateParameterConfiguration
  where
  hashWithSalt
    _salt
    TemplateParameterConfiguration' {..} =
      _salt `Prelude.hashWithSalt` type'
        `Prelude.hashWithSalt` defaultValue

instance
  Prelude.NFData
    TemplateParameterConfiguration
  where
  rnf TemplateParameterConfiguration' {..} =
    Prelude.rnf type'
      `Prelude.seq` Prelude.rnf defaultValue

instance Core.ToJSON TemplateParameterConfiguration where
  toJSON TemplateParameterConfiguration' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("type" Core..=) Prelude.<$> type',
            ("defaultValue" Core..=) Prelude.<$> defaultValue
          ]
      )
