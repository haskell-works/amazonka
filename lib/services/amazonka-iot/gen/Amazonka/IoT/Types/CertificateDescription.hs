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
-- Module      : Amazonka.IoT.Types.CertificateDescription
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.IoT.Types.CertificateDescription where

import qualified Amazonka.Core as Core
import Amazonka.IoT.Types.CertificateMode
import Amazonka.IoT.Types.CertificateStatus
import Amazonka.IoT.Types.CertificateValidity
import Amazonka.IoT.Types.TransferData
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Describes a certificate.
--
-- /See:/ 'newCertificateDescription' smart constructor.
data CertificateDescription = CertificateDescription'
  { -- | The customer version of the certificate.
    customerVersion :: Prelude.Maybe Prelude.Natural,
    -- | The date and time the certificate was last modified.
    lastModifiedDate :: Prelude.Maybe Core.POSIX,
    -- | The date and time the certificate was created.
    creationDate :: Prelude.Maybe Core.POSIX,
    -- | The status of the certificate.
    status :: Prelude.Maybe CertificateStatus,
    -- | The certificate ID of the CA certificate used to sign this certificate.
    caCertificateId :: Prelude.Maybe Prelude.Text,
    -- | The ARN of the certificate.
    certificateArn :: Prelude.Maybe Prelude.Text,
    -- | The ID of the certificate.
    certificateId :: Prelude.Maybe Prelude.Text,
    -- | The certificate data, in PEM format.
    certificatePem :: Prelude.Maybe Prelude.Text,
    -- | The transfer data.
    transferData :: Prelude.Maybe TransferData,
    -- | The generation ID of the certificate.
    generationId :: Prelude.Maybe Prelude.Text,
    -- | The ID of the Amazon Web Services account of the previous owner of the
    -- certificate.
    previousOwnedBy :: Prelude.Maybe Prelude.Text,
    -- | The mode of the certificate.
    certificateMode :: Prelude.Maybe CertificateMode,
    -- | The ID of the Amazon Web Services account that owns the certificate.
    ownedBy :: Prelude.Maybe Prelude.Text,
    -- | When the certificate is valid.
    validity :: Prelude.Maybe CertificateValidity
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CertificateDescription' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'customerVersion', 'certificateDescription_customerVersion' - The customer version of the certificate.
--
-- 'lastModifiedDate', 'certificateDescription_lastModifiedDate' - The date and time the certificate was last modified.
--
-- 'creationDate', 'certificateDescription_creationDate' - The date and time the certificate was created.
--
-- 'status', 'certificateDescription_status' - The status of the certificate.
--
-- 'caCertificateId', 'certificateDescription_caCertificateId' - The certificate ID of the CA certificate used to sign this certificate.
--
-- 'certificateArn', 'certificateDescription_certificateArn' - The ARN of the certificate.
--
-- 'certificateId', 'certificateDescription_certificateId' - The ID of the certificate.
--
-- 'certificatePem', 'certificateDescription_certificatePem' - The certificate data, in PEM format.
--
-- 'transferData', 'certificateDescription_transferData' - The transfer data.
--
-- 'generationId', 'certificateDescription_generationId' - The generation ID of the certificate.
--
-- 'previousOwnedBy', 'certificateDescription_previousOwnedBy' - The ID of the Amazon Web Services account of the previous owner of the
-- certificate.
--
-- 'certificateMode', 'certificateDescription_certificateMode' - The mode of the certificate.
--
-- 'ownedBy', 'certificateDescription_ownedBy' - The ID of the Amazon Web Services account that owns the certificate.
--
-- 'validity', 'certificateDescription_validity' - When the certificate is valid.
newCertificateDescription ::
  CertificateDescription
newCertificateDescription =
  CertificateDescription'
    { customerVersion =
        Prelude.Nothing,
      lastModifiedDate = Prelude.Nothing,
      creationDate = Prelude.Nothing,
      status = Prelude.Nothing,
      caCertificateId = Prelude.Nothing,
      certificateArn = Prelude.Nothing,
      certificateId = Prelude.Nothing,
      certificatePem = Prelude.Nothing,
      transferData = Prelude.Nothing,
      generationId = Prelude.Nothing,
      previousOwnedBy = Prelude.Nothing,
      certificateMode = Prelude.Nothing,
      ownedBy = Prelude.Nothing,
      validity = Prelude.Nothing
    }

-- | The customer version of the certificate.
certificateDescription_customerVersion :: Lens.Lens' CertificateDescription (Prelude.Maybe Prelude.Natural)
certificateDescription_customerVersion = Lens.lens (\CertificateDescription' {customerVersion} -> customerVersion) (\s@CertificateDescription' {} a -> s {customerVersion = a} :: CertificateDescription)

-- | The date and time the certificate was last modified.
certificateDescription_lastModifiedDate :: Lens.Lens' CertificateDescription (Prelude.Maybe Prelude.UTCTime)
certificateDescription_lastModifiedDate = Lens.lens (\CertificateDescription' {lastModifiedDate} -> lastModifiedDate) (\s@CertificateDescription' {} a -> s {lastModifiedDate = a} :: CertificateDescription) Prelude.. Lens.mapping Core._Time

-- | The date and time the certificate was created.
certificateDescription_creationDate :: Lens.Lens' CertificateDescription (Prelude.Maybe Prelude.UTCTime)
certificateDescription_creationDate = Lens.lens (\CertificateDescription' {creationDate} -> creationDate) (\s@CertificateDescription' {} a -> s {creationDate = a} :: CertificateDescription) Prelude.. Lens.mapping Core._Time

-- | The status of the certificate.
certificateDescription_status :: Lens.Lens' CertificateDescription (Prelude.Maybe CertificateStatus)
certificateDescription_status = Lens.lens (\CertificateDescription' {status} -> status) (\s@CertificateDescription' {} a -> s {status = a} :: CertificateDescription)

-- | The certificate ID of the CA certificate used to sign this certificate.
certificateDescription_caCertificateId :: Lens.Lens' CertificateDescription (Prelude.Maybe Prelude.Text)
certificateDescription_caCertificateId = Lens.lens (\CertificateDescription' {caCertificateId} -> caCertificateId) (\s@CertificateDescription' {} a -> s {caCertificateId = a} :: CertificateDescription)

-- | The ARN of the certificate.
certificateDescription_certificateArn :: Lens.Lens' CertificateDescription (Prelude.Maybe Prelude.Text)
certificateDescription_certificateArn = Lens.lens (\CertificateDescription' {certificateArn} -> certificateArn) (\s@CertificateDescription' {} a -> s {certificateArn = a} :: CertificateDescription)

-- | The ID of the certificate.
certificateDescription_certificateId :: Lens.Lens' CertificateDescription (Prelude.Maybe Prelude.Text)
certificateDescription_certificateId = Lens.lens (\CertificateDescription' {certificateId} -> certificateId) (\s@CertificateDescription' {} a -> s {certificateId = a} :: CertificateDescription)

-- | The certificate data, in PEM format.
certificateDescription_certificatePem :: Lens.Lens' CertificateDescription (Prelude.Maybe Prelude.Text)
certificateDescription_certificatePem = Lens.lens (\CertificateDescription' {certificatePem} -> certificatePem) (\s@CertificateDescription' {} a -> s {certificatePem = a} :: CertificateDescription)

-- | The transfer data.
certificateDescription_transferData :: Lens.Lens' CertificateDescription (Prelude.Maybe TransferData)
certificateDescription_transferData = Lens.lens (\CertificateDescription' {transferData} -> transferData) (\s@CertificateDescription' {} a -> s {transferData = a} :: CertificateDescription)

-- | The generation ID of the certificate.
certificateDescription_generationId :: Lens.Lens' CertificateDescription (Prelude.Maybe Prelude.Text)
certificateDescription_generationId = Lens.lens (\CertificateDescription' {generationId} -> generationId) (\s@CertificateDescription' {} a -> s {generationId = a} :: CertificateDescription)

-- | The ID of the Amazon Web Services account of the previous owner of the
-- certificate.
certificateDescription_previousOwnedBy :: Lens.Lens' CertificateDescription (Prelude.Maybe Prelude.Text)
certificateDescription_previousOwnedBy = Lens.lens (\CertificateDescription' {previousOwnedBy} -> previousOwnedBy) (\s@CertificateDescription' {} a -> s {previousOwnedBy = a} :: CertificateDescription)

-- | The mode of the certificate.
certificateDescription_certificateMode :: Lens.Lens' CertificateDescription (Prelude.Maybe CertificateMode)
certificateDescription_certificateMode = Lens.lens (\CertificateDescription' {certificateMode} -> certificateMode) (\s@CertificateDescription' {} a -> s {certificateMode = a} :: CertificateDescription)

-- | The ID of the Amazon Web Services account that owns the certificate.
certificateDescription_ownedBy :: Lens.Lens' CertificateDescription (Prelude.Maybe Prelude.Text)
certificateDescription_ownedBy = Lens.lens (\CertificateDescription' {ownedBy} -> ownedBy) (\s@CertificateDescription' {} a -> s {ownedBy = a} :: CertificateDescription)

-- | When the certificate is valid.
certificateDescription_validity :: Lens.Lens' CertificateDescription (Prelude.Maybe CertificateValidity)
certificateDescription_validity = Lens.lens (\CertificateDescription' {validity} -> validity) (\s@CertificateDescription' {} a -> s {validity = a} :: CertificateDescription)

instance Core.FromJSON CertificateDescription where
  parseJSON =
    Core.withObject
      "CertificateDescription"
      ( \x ->
          CertificateDescription'
            Prelude.<$> (x Core..:? "customerVersion")
            Prelude.<*> (x Core..:? "lastModifiedDate")
            Prelude.<*> (x Core..:? "creationDate")
            Prelude.<*> (x Core..:? "status")
            Prelude.<*> (x Core..:? "caCertificateId")
            Prelude.<*> (x Core..:? "certificateArn")
            Prelude.<*> (x Core..:? "certificateId")
            Prelude.<*> (x Core..:? "certificatePem")
            Prelude.<*> (x Core..:? "transferData")
            Prelude.<*> (x Core..:? "generationId")
            Prelude.<*> (x Core..:? "previousOwnedBy")
            Prelude.<*> (x Core..:? "certificateMode")
            Prelude.<*> (x Core..:? "ownedBy")
            Prelude.<*> (x Core..:? "validity")
      )

instance Prelude.Hashable CertificateDescription where
  hashWithSalt _salt CertificateDescription' {..} =
    _salt `Prelude.hashWithSalt` customerVersion
      `Prelude.hashWithSalt` lastModifiedDate
      `Prelude.hashWithSalt` creationDate
      `Prelude.hashWithSalt` status
      `Prelude.hashWithSalt` caCertificateId
      `Prelude.hashWithSalt` certificateArn
      `Prelude.hashWithSalt` certificateId
      `Prelude.hashWithSalt` certificatePem
      `Prelude.hashWithSalt` transferData
      `Prelude.hashWithSalt` generationId
      `Prelude.hashWithSalt` previousOwnedBy
      `Prelude.hashWithSalt` certificateMode
      `Prelude.hashWithSalt` ownedBy
      `Prelude.hashWithSalt` validity

instance Prelude.NFData CertificateDescription where
  rnf CertificateDescription' {..} =
    Prelude.rnf customerVersion
      `Prelude.seq` Prelude.rnf lastModifiedDate
      `Prelude.seq` Prelude.rnf creationDate
      `Prelude.seq` Prelude.rnf status
      `Prelude.seq` Prelude.rnf caCertificateId
      `Prelude.seq` Prelude.rnf certificateArn
      `Prelude.seq` Prelude.rnf certificateId
      `Prelude.seq` Prelude.rnf certificatePem
      `Prelude.seq` Prelude.rnf transferData
      `Prelude.seq` Prelude.rnf generationId
      `Prelude.seq` Prelude.rnf previousOwnedBy
      `Prelude.seq` Prelude.rnf certificateMode
      `Prelude.seq` Prelude.rnf ownedBy
      `Prelude.seq` Prelude.rnf validity