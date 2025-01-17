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
-- Module      : Amazonka.SSMSAP.Types.ComponentSummary
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SSMSAP.Types.ComponentSummary where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.SSMSAP.Types.ComponentType

-- |
--
-- /See:/ 'newComponentSummary' smart constructor.
data ComponentSummary = ComponentSummary'
  { tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    componentId :: Prelude.Maybe Prelude.Text,
    applicationId :: Prelude.Maybe Prelude.Text,
    componentType :: Prelude.Maybe ComponentType
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ComponentSummary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'componentSummary_tags' -
--
-- 'componentId', 'componentSummary_componentId' -
--
-- 'applicationId', 'componentSummary_applicationId' -
--
-- 'componentType', 'componentSummary_componentType' -
newComponentSummary ::
  ComponentSummary
newComponentSummary =
  ComponentSummary'
    { tags = Prelude.Nothing,
      componentId = Prelude.Nothing,
      applicationId = Prelude.Nothing,
      componentType = Prelude.Nothing
    }

-- |
componentSummary_tags :: Lens.Lens' ComponentSummary (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
componentSummary_tags = Lens.lens (\ComponentSummary' {tags} -> tags) (\s@ComponentSummary' {} a -> s {tags = a} :: ComponentSummary) Prelude.. Lens.mapping Lens.coerced

-- |
componentSummary_componentId :: Lens.Lens' ComponentSummary (Prelude.Maybe Prelude.Text)
componentSummary_componentId = Lens.lens (\ComponentSummary' {componentId} -> componentId) (\s@ComponentSummary' {} a -> s {componentId = a} :: ComponentSummary)

-- |
componentSummary_applicationId :: Lens.Lens' ComponentSummary (Prelude.Maybe Prelude.Text)
componentSummary_applicationId = Lens.lens (\ComponentSummary' {applicationId} -> applicationId) (\s@ComponentSummary' {} a -> s {applicationId = a} :: ComponentSummary)

-- |
componentSummary_componentType :: Lens.Lens' ComponentSummary (Prelude.Maybe ComponentType)
componentSummary_componentType = Lens.lens (\ComponentSummary' {componentType} -> componentType) (\s@ComponentSummary' {} a -> s {componentType = a} :: ComponentSummary)

instance Core.FromJSON ComponentSummary where
  parseJSON =
    Core.withObject
      "ComponentSummary"
      ( \x ->
          ComponentSummary'
            Prelude.<$> (x Core..:? "Tags" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "ComponentId")
            Prelude.<*> (x Core..:? "ApplicationId")
            Prelude.<*> (x Core..:? "ComponentType")
      )

instance Prelude.Hashable ComponentSummary where
  hashWithSalt _salt ComponentSummary' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` componentId
      `Prelude.hashWithSalt` applicationId
      `Prelude.hashWithSalt` componentType

instance Prelude.NFData ComponentSummary where
  rnf ComponentSummary' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf componentId
      `Prelude.seq` Prelude.rnf applicationId
      `Prelude.seq` Prelude.rnf componentType
