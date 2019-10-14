
DROP USER nfeuser;
CREATE USER 'nfeuser'@'%' IDENTIFIED BY '@senha';
ALTER USER 'nfeuser'@'%' IDENTIFIED BY '@senha';
GRANT ALL PRIVILEGES ON ICMS_NATAL_DEV.* TO 'nfeuser'@'%';
FLUSH PRIVILEGES;

SET GLOBAL FOREIGN_KEY_CHECKS=0;

DROP TABLE IF EXISTS `nfe`;

CREATE TABLE `nfe` (
  `id` bigint(11) unsigned NOT NULL AUTO_INCREMENT,
  `ide_cUF` varchar(100) DEFAULT NULL COMMENT 'Identificacao da NFe',
  `ide_cNF` varchar(100) DEFAULT NULL COMMENT 'Identificacao da NFe',
  `ide_natOp` varchar(100) DEFAULT NULL COMMENT 'Identificacao da NFe',
  `ide_indPag` varchar(100) DEFAULT NULL COMMENT 'Identificacao da NFe',
  `ide_mod` varchar(100) DEFAULT NULL COMMENT 'Identificacao da NFe',
  `ide_serie` varchar(100) DEFAULT NULL COMMENT 'Identificacao da NFe',
  `ide_nNF` varchar(100) DEFAULT NULL COMMENT 'Identificacao da NFe',
  `ide_dhEmi` varchar(100) DEFAULT NULL COMMENT 'Identificacao da NFe',
  `ide_tpNF` varchar(100) DEFAULT NULL COMMENT 'Identificacao da NFe',
  `ide_idDest` varchar(100) DEFAULT NULL COMMENT 'Identificacao da NFe',
  `ide_cMunFG` varchar(100) DEFAULT NULL COMMENT 'Identificacao da NFe',
  `ide_tpImp` varchar(100) DEFAULT NULL COMMENT 'Identificacao da NFe',
  `ide_tpEmis` varchar(100) DEFAULT NULL COMMENT 'Identificacao da NFe',
  `ide_cDV` varchar(100) DEFAULT NULL COMMENT 'Identificacao da NFe',
  `ide_tpAmb` varchar(100) DEFAULT NULL COMMENT 'Identificacao da NFe',
  `ide_finNFe` varchar(100) DEFAULT NULL COMMENT 'Identificacao da NFe',
  `ide_indFinal` varchar(100) DEFAULT NULL COMMENT 'Identificacao da NFe',
  `ide_indPres` varchar(100) DEFAULT NULL COMMENT 'Identificacao da NFe',
  `ide_procEmi` varchar(100) DEFAULT NULL COMMENT 'Identificacao da NFe',
  `ide_verProc` varchar(100) DEFAULT NULL COMMENT 'Identificacao da NFe',
  `emit_CNPJ` varchar(100) DEFAULT NULL COMMENT 'Emitente da NFe',
  `emit_xNome` varchar(100) DEFAULT NULL COMMENT 'Emitente da NFe',
  `emit_xFant` varchar(100) DEFAULT NULL COMMENT 'Emitente da NFe',
  `emit_xLgr` varchar(100) DEFAULT NULL COMMENT 'Emitente da NFe',
  `emit_nro` varchar(100) DEFAULT NULL COMMENT 'Emitente da NFe',
  `emit_xBairro` varchar(100) DEFAULT NULL COMMENT 'Emitente da NFe',
  `emit_cMun` varchar(100) DEFAULT NULL COMMENT 'Emitente da NFe',
  `emit_xMun` varchar(100) DEFAULT NULL COMMENT 'Emitente da NFe',
  `emit_UF` varchar(100) DEFAULT NULL COMMENT 'Emitente da NFe',
  `emit_CEP` varchar(100) DEFAULT NULL COMMENT 'Emitente da NFe',
  `emit_xPais` varchar(100) DEFAULT NULL COMMENT 'Emitente da NFe',
  `emit_fone` varchar(100) DEFAULT NULL COMMENT 'Emitente da NFe',
  `emit_IE` varchar(100) DEFAULT NULL COMMENT 'Emitente da NFe',
  `emit_IEST` varchar(100) DEFAULT NULL COMMENT 'Emitente da NFe',
  `emit_IM` varchar(100) DEFAULT NULL COMMENT 'Emitente da NFe',
  `emit_CNAE` varchar(100) DEFAULT NULL COMMENT 'Emitente da NFe',
  `emit_CRT` varchar(100) DEFAULT NULL COMMENT 'Emitente da NFe',
  `dest_CNPJ` varchar(100) DEFAULT NULL COMMENT 'Destinatario da NFe',
  `dest_xNome` varchar(100) DEFAULT NULL COMMENT 'Destinatario da NFe',
  `dest_xLgr` varchar(100) DEFAULT NULL COMMENT 'Destinatario da NFe',
  `dest_nro` varchar(100) DEFAULT NULL COMMENT 'Destinatario da NFe',
  `dest_xBairro` varchar(100) DEFAULT NULL COMMENT 'Destinatario da NFe',
  `dest_cMun` varchar(100) DEFAULT NULL COMMENT 'Destinatario da NFe',
  `dest_xMun` varchar(100) DEFAULT NULL COMMENT 'Destinatario da NFe',
  `dest_UF` varchar(100) DEFAULT NULL COMMENT 'Destinatario da NFe',
  `dest_CEP` varchar(100) DEFAULT NULL COMMENT 'Destinatario da NFe',
  `dest_xPais` varchar(100) DEFAULT NULL COMMENT 'Destinatario da NFe',
  `dest_fone` varchar(100) DEFAULT NULL COMMENT 'Destinatario da NFe',
  `dest_indIEDest` varchar(100) DEFAULT NULL COMMENT 'Destinatario da NFe',
  `dest_IE` varchar(100) DEFAULT NULL COMMENT 'Destinatario da NFe',
  `total_vBC` varchar(100) DEFAULT NULL COMMENT 'Totais e Impostos da NFe',
  `total_vICMS` varchar(100) DEFAULT NULL COMMENT 'Totais e Impostos da NFe',
  `total_vICMSDeson` varchar(100) DEFAULT NULL COMMENT 'Totais e Impostos da NFe',
  `total_vFCP` varchar(100) DEFAULT NULL COMMENT 'Totais e Impostos da NFe',
  `total_vBCST` varchar(100) DEFAULT NULL COMMENT 'Totais e Impostos da NFe',
  `total_vST` varchar(100) DEFAULT NULL COMMENT 'Totais e Impostos da NFe',
  `total_vFCPST` varchar(100) DEFAULT NULL COMMENT 'Totais e Impostos da NFe',
  `total_vFCPSTRet` varchar(100) DEFAULT NULL COMMENT 'Totais e Impostos da NFe',
  `total_vProd` varchar(100) DEFAULT NULL COMMENT 'Totais e Impostos da NFe',
  `total_vFrete` varchar(100) DEFAULT NULL COMMENT 'Totais e Impostos da NFe',
  `total_vSeg` varchar(100) DEFAULT NULL COMMENT 'Totais e Impostos da NFe',
  `total_vDesc` varchar(100) DEFAULT NULL COMMENT 'Totais e Impostos da NFe',
  `total_vII` varchar(100) DEFAULT NULL COMMENT 'Totais e Impostos da NFe',
  `total_vIPI` varchar(100) DEFAULT NULL COMMENT 'Totais e Impostos da NFe',
  `total_vIPIDevol` varchar(100) DEFAULT NULL COMMENT 'Totais e Impostos da NFe',
  `total_vPIS` varchar(100) DEFAULT NULL COMMENT 'Totais e Impostos da NFe',
  `total_vCOFINS` varchar(100) DEFAULT NULL COMMENT 'Totais e Impostos da NFe',
  `total_vOutro` varchar(100) DEFAULT NULL COMMENT 'Totais e Impostos da NFe',
  `total_vNF` varchar(100) DEFAULT NULL COMMENT 'Totais e Impostos da NFe',
  `transp_modFrete` varchar(100) DEFAULT NULL COMMENT 'Transportadora',
  `transp_CNPJ` varchar(100) DEFAULT NULL COMMENT 'Transportadora',
  `transp_xNome` varchar(100) DEFAULT NULL COMMENT 'Transportadora',
  `transp_IE` varchar(100) DEFAULT NULL COMMENT 'Transportadora',
  `transp_xEnder` varchar(100) DEFAULT NULL COMMENT 'Transportadora',
  `transp_xMun` varchar(100) DEFAULT NULL COMMENT 'Transportadora',
  `transp_UF` varchar(100) DEFAULT NULL COMMENT 'Transportadora',
  `transp_qVol` varchar(100) DEFAULT NULL COMMENT 'Transportadora',
  `transp_marca` varchar(100) DEFAULT NULL COMMENT 'Transportadora',
  `transp_nVol` varchar(100) DEFAULT NULL COMMENT 'Transportadora',
  `cobr_nFat` varchar(100) DEFAULT NULL COMMENT 'Cobranca',
  `cobr_vOrig` varchar(100) DEFAULT NULL COMMENT 'Cobranca',
  `cobr_vDesc` varchar(100) DEFAULT NULL COMMENT 'Cobranca',
  `cobr_vLiq` varchar(100) DEFAULT NULL COMMENT 'Cobranca',
  `detPag_indPag` varchar(100) DEFAULT NULL COMMENT 'Pagamento',
  `detPag_tPag` varchar(100) DEFAULT NULL COMMENT 'Pagamento',
  `detPag_vPag` varchar(100) DEFAULT NULL COMMENT 'Pagamento',
  `infAdic_infCpl` varchar(300) DEFAULT NULL COMMENT 'Informacao Adicional',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

ALTER TABLE nfe ADD INDEX ide_nNF_idx (ide_nNF);

DROP TABLE IF EXISTS `nfedetalhe`;

CREATE TABLE `nfedetalhe` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nNF` varchar(100) NOT NULL COMMENT 'Numero da NFe ',
  `det_cProd` varchar(100) DEFAULT NULL COMMENT 'Detalhe do Produto',
  `det_cEAN` varchar(100) DEFAULT NULL COMMENT 'Detalhe do Produto',
  `det_xProd` varchar(100) DEFAULT NULL COMMENT 'Detalhe do Produto',
  `det_NCM` varchar(100) DEFAULT NULL COMMENT 'Detalhe do Produto',
  `det_CEST` varchar(100) DEFAULT NULL COMMENT 'Detalhe do Produto',
  `det_CFOP` varchar(100) DEFAULT NULL COMMENT 'Detalhe do Produto',
  `det_uCom` varchar(100) DEFAULT NULL COMMENT 'Detalhe do Produto',
  `det_qCom` varchar(100) DEFAULT NULL COMMENT 'Detalhe do Produto',
  `det_vUnCom` varchar(100) DEFAULT NULL COMMENT 'Detalhe do Produto',
  `det_vProd` varchar(100) DEFAULT NULL COMMENT 'Detalhe do Produto',
  `det_cEANTrib` varchar(100) DEFAULT NULL COMMENT 'Detalhe do Produto',
  `det_uTrib` varchar(100) DEFAULT NULL COMMENT 'Detalhe do Produto',
  `det_qTrib` varchar(100) DEFAULT NULL COMMENT 'Detalhe do Produto',
  `det_vUnTrib` varchar(100) DEFAULT NULL COMMENT 'Detalhe do Produto',
  `det_indTot` varchar(100) DEFAULT NULL COMMENT 'Detalhe do Produto',
  `det_xPed` varchar(100) DEFAULT NULL COMMENT 'Detalhe do Produto',
  `det_ICMS_orig` varchar(100) DEFAULT NULL COMMENT 'ICMS do Produto',
  `det_ICMS_CST` varchar(100) DEFAULT NULL COMMENT 'ICMS do Produto',
  `det_ICMS_modBC` varchar(100) DEFAULT NULL COMMENT 'ICMS do Produto',
  `det_ICMS_vBC` varchar(100) DEFAULT NULL COMMENT 'ICMS do Produto',
  `det_ICMS_pICMS` varchar(100) DEFAULT NULL COMMENT 'ICMS do Produto',
  `det_ICMS_vICMS` varchar(100) DEFAULT NULL COMMENT 'ICMS do Produto',
  `det_IPI_qSelo` varchar(100) DEFAULT NULL COMMENT 'IPI do Produto',
  `det_IPI_cEnq` varchar(100) DEFAULT NULL COMMENT 'IPI do Produto',
  `det_IPI_CST` varchar(100) DEFAULT NULL COMMENT 'IPI do Produto',
  `det_IPI_vBC` varchar(100) DEFAULT NULL COMMENT 'IPI do Produto',
  `det_IPI_pIPI` varchar(100) DEFAULT NULL COMMENT 'IPI do Produto',
  `det_IPI_vIPI` varchar(100) DEFAULT NULL COMMENT 'IPI do Produto',
  `det_PIS_CST` varchar(100) DEFAULT NULL COMMENT 'PIS do Produto',
  `det_PIS_vBC` varchar(100) DEFAULT NULL COMMENT 'PIS do Produto',
  `det_PIS_pPIS` varchar(100) DEFAULT NULL COMMENT 'PIS do Produto',
  `det_PIS_vPIS` varchar(100) DEFAULT NULL COMMENT 'PIS do Produto',
  `det_COFINS_CST` varchar(100) DEFAULT NULL COMMENT 'COFINS do Produto',
  `det_COFINS_vBC` varchar(100) DEFAULT NULL COMMENT 'COFINS do Produto',
  `det_COFINS_pCOFINS` varchar(100) DEFAULT NULL COMMENT 'COFINS do Produto',
  `det_COFINS_vCOFINS` varchar(100) DEFAULT NULL COMMENT 'COFINS do Produto',
  `det_infAdProd` varchar(300) DEFAULT NULL COMMENT 'Informacao Adicional do Produto',
  PRIMARY KEY (`id`)
        
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

ALTER TABLE nfedetalhe ADD INDEX nNF_idx (nNF);

ALTER TABLE nfedetalhe ADD FOREIGN KEY (nNF) REFERENCES  nfe (ide_nNF) ON DELETE CASCADE;

SET GLOBAL FOREIGN_KEY_CHECKS=1;