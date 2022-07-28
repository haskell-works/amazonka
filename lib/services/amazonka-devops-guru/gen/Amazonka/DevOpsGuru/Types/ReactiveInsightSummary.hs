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
-- Module      : Amazonka.DevOpsGuru.Types.ReactiveInsightSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.DevOpsGuru.Types.ReactiveInsightSummary where

import qualified Amazonka.Core as Core
import Amazonka.DevOpsGuru.Types.InsightSeverity
import Amazonka.DevOpsGuru.Types.InsightStatus
import Amazonka.DevOpsGuru.Types.InsightTimeRange
import Amazonka.DevOpsGuru.Types.ResourceCollection
import Amazonka.DevOpsGuru.Types.ServiceCollection
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Information about a reactive insight. This object is returned by
-- @DescribeInsight.@
--
-- /See:/ 'newReactiveInsightSummary' smart constructor.
data ReactiveInsightSummary = ReactiveInsightSummary'
  { -- | The severity of a reactive insight.
    severity :: Prelude.Maybe InsightSeverity,
    -- | The name of a reactive insight.
    name :: Prelude.Maybe Prelude.Text,
    resourceCollection :: Prelude.Maybe ResourceCollection,
    -- | A collection of the names of AWS services.
    serviceCollection :: Prelude.Maybe ServiceCollection,
    -- | The status of a reactive insight.
    status :: Prelude.Maybe InsightStatus,
    -- | The ID of a reactive summary.
    id :: Prelude.Maybe Prelude.Text,
    insightTimeRange :: Prelude.Maybe InsightTimeRange
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ReactiveInsightSummary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'severity', 'reactiveInsightSummary_severity' - The severity of a reactive insight.
--
-- 'name', 'reactiveInsightSummary_name' - The name of a reactive insight.
--
-- 'resourceCollection', 'reactiveInsightSummary_resourceCollection' - Undocumented member.
--
-- 'serviceCollection', 'reactiveInsightSummary_serviceCollection' - A collection of the names of AWS services.
--
-- 'status', 'reactiveInsightSummary_status' - The status of a reactive insight.
--
-- 'id', 'reactiveInsightSummary_id' - The ID of a reactive summary.
--
-- 'insightTimeRange', 'reactiveInsightSummary_insightTimeRange' - Undocumented member.
newReactiveInsightSummary ::
  ReactiveInsightSummary
newReactiveInsightSummary =
  ReactiveInsightSummary'
    { severity = Prelude.Nothing,
      name = Prelude.Nothing,
      resourceCollection = Prelude.Nothing,
      serviceCollection = Prelude.Nothing,
      status = Prelude.Nothing,
      id = Prelude.Nothing,
      insightTimeRange = Prelude.Nothing
    }

-- | The severity of a reactive insight.
reactiveInsightSummary_severity :: Lens.Lens' ReactiveInsightSummary (Prelude.Maybe InsightSeverity)
reactiveInsightSummary_severity = Lens.lens (\ReactiveInsightSummary' {severity} -> severity) (\s@ReactiveInsightSummary' {} a -> s {severity = a} :: ReactiveInsightSummary)

-- | The name of a reactive insight.
reactiveInsightSummary_name :: Lens.Lens' ReactiveInsightSummary (Prelude.Maybe Prelude.Text)
reactiveInsightSummary_name = Lens.lens (\ReactiveInsightSummary' {name} -> name) (\s@ReactiveInsightSummary' {} a -> s {name = a} :: ReactiveInsightSummary)

-- | Undocumented member.
reactiveInsightSummary_resourceCollection :: Lens.Lens' ReactiveInsightSummary (Prelude.Maybe ResourceCollection)
reactiveInsightSummary_resourceCollection = Lens.lens (\ReactiveInsightSummary' {resourceCollection} -> resourceCollection) (\s@ReactiveInsightSummary' {} a -> s {resourceCollection = a} :: ReactiveInsightSummary)

-- | A collection of the names of AWS services.
reactiveInsightSummary_serviceCollection :: Lens.Lens' ReactiveInsightSummary (Prelude.Maybe ServiceCollection)
reactiveInsightSummary_serviceCollection = Lens.lens (\ReactiveInsightSummary' {serviceCollection} -> serviceCollection) (\s@ReactiveInsightSummary' {} a -> s {serviceCollection = a} :: ReactiveInsightSummary)

-- | The status of a reactive insight.
reactiveInsightSummary_status :: Lens.Lens' ReactiveInsightSummary (Prelude.Maybe InsightStatus)
reactiveInsightSummary_status = Lens.lens (\ReactiveInsightSummary' {status} -> status) (\s@ReactiveInsightSummary' {} a -> s {status = a} :: ReactiveInsightSummary)

-- | The ID of a reactive summary.
reactiveInsightSummary_id :: Lens.Lens' ReactiveInsightSummary (Prelude.Maybe Prelude.Text)
reactiveInsightSummary_id = Lens.lens (\ReactiveInsightSummary' {id} -> id) (\s@ReactiveInsightSummary' {} a -> s {id = a} :: ReactiveInsightSummary)

-- | Undocumented member.
reactiveInsightSummary_insightTimeRange :: Lens.Lens' ReactiveInsightSummary (Prelude.Maybe InsightTimeRange)
reactiveInsightSummary_insightTimeRange = Lens.lens (\ReactiveInsightSummary' {insightTimeRange} -> insightTimeRange) (\s@ReactiveInsightSummary' {} a -> s {insightTimeRange = a} :: ReactiveInsightSummary)

instance Core.FromJSON ReactiveInsightSummary where
  parseJSON =
    Core.withObject
      "ReactiveInsightSummary"
      ( \x ->
          ReactiveInsightSummary'
            Prelude.<$> (x Core..:? "Severity")
            Prelude.<*> (x Core..:? "Name")
            Prelude.<*> (x Core..:? "ResourceCollection")
            Prelude.<*> (x Core..:? "ServiceCollection")
            Prelude.<*> (x Core..:? "Status")
            Prelude.<*> (x Core..:? "Id")
            Prelude.<*> (x Core..:? "InsightTimeRange")
      )

instance Prelude.Hashable ReactiveInsightSummary where
  hashWithSalt _salt ReactiveInsightSummary' {..} =
    _salt `Prelude.hashWithSalt` severity
      `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` resourceCollection
      `Prelude.hashWithSalt` serviceCollection
      `Prelude.hashWithSalt` status
      `Prelude.hashWithSalt` id
      `Prelude.hashWithSalt` insightTimeRange

instance Prelude.NFData ReactiveInsightSummary where
  rnf ReactiveInsightSummary' {..} =
    Prelude.rnf severity
      `Prelude.seq` Prelude.rnf name
      `Prelude.seq` Prelude.rnf resourceCollection
      `Prelude.seq` Prelude.rnf serviceCollection
      `Prelude.seq` Prelude.rnf status
      `Prelude.seq` Prelude.rnf id
      `Prelude.seq` Prelude.rnf insightTimeRange