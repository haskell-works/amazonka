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
-- Module      : Amazonka.MechanicalTurk.Types.Qualification
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.MechanicalTurk.Types.Qualification where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import Amazonka.MechanicalTurk.Types.Locale
import Amazonka.MechanicalTurk.Types.QualificationStatus
import qualified Amazonka.Prelude as Prelude

-- | The Qualification data structure represents a Qualification assigned to
-- a user, including the Qualification type and the value (score).
--
-- /See:/ 'newQualification' smart constructor.
data Qualification = Qualification'
  { -- | The ID of the Qualification type for the Qualification.
    qualificationTypeId :: Prelude.Maybe Prelude.Text,
    -- | The value (score) of the Qualification, if the Qualification has an
    -- integer value.
    integerValue :: Prelude.Maybe Prelude.Int,
    -- | The ID of the Worker who possesses the Qualification.
    workerId :: Prelude.Maybe Prelude.Text,
    -- | The status of the Qualification. Valid values are Granted | Revoked.
    status :: Prelude.Maybe QualificationStatus,
    -- | The date and time the Qualification was granted to the Worker. If the
    -- Worker\'s Qualification was revoked, and then re-granted based on a new
    -- Qualification request, GrantTime is the date and time of the last call
    -- to the AcceptQualificationRequest operation.
    grantTime :: Prelude.Maybe Core.POSIX,
    localeValue :: Prelude.Maybe Locale
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Qualification' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'qualificationTypeId', 'qualification_qualificationTypeId' - The ID of the Qualification type for the Qualification.
--
-- 'integerValue', 'qualification_integerValue' - The value (score) of the Qualification, if the Qualification has an
-- integer value.
--
-- 'workerId', 'qualification_workerId' - The ID of the Worker who possesses the Qualification.
--
-- 'status', 'qualification_status' - The status of the Qualification. Valid values are Granted | Revoked.
--
-- 'grantTime', 'qualification_grantTime' - The date and time the Qualification was granted to the Worker. If the
-- Worker\'s Qualification was revoked, and then re-granted based on a new
-- Qualification request, GrantTime is the date and time of the last call
-- to the AcceptQualificationRequest operation.
--
-- 'localeValue', 'qualification_localeValue' - Undocumented member.
newQualification ::
  Qualification
newQualification =
  Qualification'
    { qualificationTypeId =
        Prelude.Nothing,
      integerValue = Prelude.Nothing,
      workerId = Prelude.Nothing,
      status = Prelude.Nothing,
      grantTime = Prelude.Nothing,
      localeValue = Prelude.Nothing
    }

-- | The ID of the Qualification type for the Qualification.
qualification_qualificationTypeId :: Lens.Lens' Qualification (Prelude.Maybe Prelude.Text)
qualification_qualificationTypeId = Lens.lens (\Qualification' {qualificationTypeId} -> qualificationTypeId) (\s@Qualification' {} a -> s {qualificationTypeId = a} :: Qualification)

-- | The value (score) of the Qualification, if the Qualification has an
-- integer value.
qualification_integerValue :: Lens.Lens' Qualification (Prelude.Maybe Prelude.Int)
qualification_integerValue = Lens.lens (\Qualification' {integerValue} -> integerValue) (\s@Qualification' {} a -> s {integerValue = a} :: Qualification)

-- | The ID of the Worker who possesses the Qualification.
qualification_workerId :: Lens.Lens' Qualification (Prelude.Maybe Prelude.Text)
qualification_workerId = Lens.lens (\Qualification' {workerId} -> workerId) (\s@Qualification' {} a -> s {workerId = a} :: Qualification)

-- | The status of the Qualification. Valid values are Granted | Revoked.
qualification_status :: Lens.Lens' Qualification (Prelude.Maybe QualificationStatus)
qualification_status = Lens.lens (\Qualification' {status} -> status) (\s@Qualification' {} a -> s {status = a} :: Qualification)

-- | The date and time the Qualification was granted to the Worker. If the
-- Worker\'s Qualification was revoked, and then re-granted based on a new
-- Qualification request, GrantTime is the date and time of the last call
-- to the AcceptQualificationRequest operation.
qualification_grantTime :: Lens.Lens' Qualification (Prelude.Maybe Prelude.UTCTime)
qualification_grantTime = Lens.lens (\Qualification' {grantTime} -> grantTime) (\s@Qualification' {} a -> s {grantTime = a} :: Qualification) Prelude.. Lens.mapping Core._Time

-- | Undocumented member.
qualification_localeValue :: Lens.Lens' Qualification (Prelude.Maybe Locale)
qualification_localeValue = Lens.lens (\Qualification' {localeValue} -> localeValue) (\s@Qualification' {} a -> s {localeValue = a} :: Qualification)

instance Core.FromJSON Qualification where
  parseJSON =
    Core.withObject
      "Qualification"
      ( \x ->
          Qualification'
            Prelude.<$> (x Core..:? "QualificationTypeId")
            Prelude.<*> (x Core..:? "IntegerValue")
            Prelude.<*> (x Core..:? "WorkerId")
            Prelude.<*> (x Core..:? "Status")
            Prelude.<*> (x Core..:? "GrantTime")
            Prelude.<*> (x Core..:? "LocaleValue")
      )

instance Prelude.Hashable Qualification where
  hashWithSalt _salt Qualification' {..} =
    _salt `Prelude.hashWithSalt` qualificationTypeId
      `Prelude.hashWithSalt` integerValue
      `Prelude.hashWithSalt` workerId
      `Prelude.hashWithSalt` status
      `Prelude.hashWithSalt` grantTime
      `Prelude.hashWithSalt` localeValue

instance Prelude.NFData Qualification where
  rnf Qualification' {..} =
    Prelude.rnf qualificationTypeId
      `Prelude.seq` Prelude.rnf integerValue
      `Prelude.seq` Prelude.rnf workerId
      `Prelude.seq` Prelude.rnf status
      `Prelude.seq` Prelude.rnf grantTime
      `Prelude.seq` Prelude.rnf localeValue
