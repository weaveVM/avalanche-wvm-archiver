DROP TABLE IF EXISTS WeaveVMArchiverAvalanche;
DROP TABLE IF EXISTS WeaveVMArchiverAvalancheBackfill;

CREATE TABLE IF NOT EXISTS WeaveVMArchiverAvalanche (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    NetworkBlockId INT UNIQUE,
    WeaveVMArchiveTxid VARCHAR(66) UNIQUE
);

CREATE TABLE IF NOT EXISTS WeaveVMArchiverAvalancheBackfill (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    NetworkBlockId INT UNIQUE,
    WeaveVMArchiveTxid VARCHAR(66) UNIQUE
);

CREATE INDEX idx_archiver_txid ON WeaveVMArchiverAvalanche (WeaveVMArchiveTxid);
CREATE INDEX idx_backfill_txid ON WeaveVMArchiverAvalancheBackfill (WeaveVMArchiveTxid);
CREATE INDEX idx_archiver_block_id ON WeaveVMArchiverAvalanche (NetworkBlockId);
CREATE INDEX idx_backfill_block_id ON WeaveVMArchiverAvalancheBackfill (NetworkBlockId);
