USE cafetown_development;

SELECT
  EmployeeID,
  EmployeeCode,
  EmployeeName,
  DateOfBirth,
  Gender,
  IdentityNumber,
  IdentityDate,
  IdentityPlace,
  Address,
  Phone,
  Email,
  BankNumber,
  BankName,
  BankBranch,
  CreatedBy,
  CreatedDate,
  ModifiedBy,
  ModifiedDate,
  Password,
  IsEmployee,
  IsManager,
  JobPosition
FROM employee WHERE Password IS NOT NULL AND IsEmployee = FALSE;

UPDATE invoicedetail i
SET i.TotalCost = i.Quantity * i.Cost;

UPDATE invoice i JOIN invoicedetail i1 
SET i.TotalCost = (SELECT i1.TotalCost 
                    FROM invoicedetail i1 JOIN invoice i ON invoicedetail.InvoiceID = i.InvoiceID  
                    WHERE i1.InvoiceID = i.InvoiceID);


DELETE FROM invoice WHERE TotalCost = 0;