with names as (
      select 'Trần Thái Tuấn' as name union all
      select 'Tô Đức Mạnh' union all
      select 'Bành Tuấn Anh' union all
      select 'Phạm Hiệp' union all
      select 'Vũ Ngọc Tuấn' union all
      select 'Trần Thị Huyền' union all
      select 'Nguyễn Quanh Anh' union all
      select 'Kim Đình Chiến' union all
      select 'Nguyễn Kiên Trung' union all
      SELECT 'Phạm Lệ Quỳnh'
) UPDATE invoice i
SET i.Customer = (SELECT name FROM names);