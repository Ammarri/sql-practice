--Яка дата буде через 90 днів від сьогодні? Яка була 90 днів тому? Два результати в одному запиті
SELECT
	DATEADD(DAY,90,GETDATE()) AS [Date +90 days], --залишити тип datetime
	DATEADD(DAY,-90,CAST(GETDATE() AS date)) AS [Date -90 days]; --конвертувати в чисту дату