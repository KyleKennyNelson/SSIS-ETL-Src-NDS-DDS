USE [QLDT_DDS]
GO

-- Declare the date range
DECLARE @StartDate DATE = '2024-01-01';  -- Start date for the dimension
DECLARE @EndDate DATE = '2024-12-31';    -- End date for the dimension

-- Use a CTE to generate a range of dates
WITH DateRange AS (
    SELECT @StartDate AS NgayThang
    UNION ALL
    SELECT DATEADD(DAY, 1, NgayThang)
    FROM DateRange
    WHERE DATEADD(DAY, 1, NgayThang) <= @EndDate
)
-- Insert data into DIM_NGAYTHANG
INSERT INTO dbo.DIM_NGAYTHANG (IDNgayThang, Ngay, Thang, Nam, NgayThang, Tuan)
SELECT 
    CONVERT(INT, FORMAT(NgayThang, 'yyyyMMdd')) AS IDNgayThang, -- Unique key in YYYYMMDD format
    DATEPART(DAY, NgayThang) AS Ngay,                          -- Day of the month
    DATEPART(MONTH, NgayThang) AS Thang,                       -- Month
    DATEPART(YEAR, NgayThang) AS Nam,                          -- Year
    NgayThang AS NgayThang,                                    -- Actual date
    DATEPART(WEEK, NgayThang) AS Tuan                          -- Week number of the year
FROM DateRange
OPTION (MAXRECURSION 0); -- Allow recursion for the full range

-- select *
-- from DIM_NGAYTHANG;
-- go