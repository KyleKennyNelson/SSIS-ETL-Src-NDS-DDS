create database QLVIEN_Metadata
go

use QLVIEN_Metadata
go

CREATE TABLE data_flows 
(
    data_flow_id INT NOT NULL IDENTITY(0,1) PRIMARY KEY,
    data_flow_name NVARCHAR(255),
    CET DATETIME,
    LSET DATETIME,
);
GO

INSERT INTO data_flows (data_flow_name, CET, LSET) VALUES
('VAITRO', GETDATE(), GETDATE()),
('CHINHANH', GETDATE(), GETDATE()),
('NHANVIEN', GETDATE(), GETDATE()),
('NV_VT', GETDATE(), GETDATE()),
('DICHVU', GETDATE(), GETDATE()),
('DV_TTKHAM', GETDATE(), GETDATE());
GO