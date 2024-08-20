select *
from dbo.['decadal-deaths-disasters-type$']
order by 3,4

--select *
--from dbo.['natural-disasters$']
--order by 3,4

select [Country name], Year,[Total deaths - Earthquake (decadal)],[Total deaths - Flood (decadal)],population
from dbo.['decadal-deaths-disasters-type$']
order by 1,2



--looking at Total Cases vs Population
--show what percentage Dies

select [Country name],Year,[Number of total people affected by disasters],[Number of deaths from earthquakes],[Number of deaths from extreme temperatures],[Number of deaths from floods],[Number of deaths from fog],population
from dbo.['natural-disasters$']
order by 1,2





select [Country name],Year,[Total deaths - Drought (decadal)],[Total deaths - Earthquake (decadal)],[Total deaths - Flood (decadal)],[Total deaths - Drought (decadal)]*100 as PercentTotalDeathsDrought
from dbo.['decadal-deaths-disasters-type$']
where [Country name] like '%nigeria%'
order by 1,2




select [Country name],Year,[Number of total people affected by disasters],[Number of deaths from drought],[Number of deaths from earthquakes],[Number of deaths from extreme temperatures],[Number of deaths from floods],[Number of deaths from fog],[Number of deaths from glacial lake outbursts],[Number of deaths from landslides],[Number of deaths from mass movements],[Number of deaths from storms],[Number of total people affected by volcanic activity],[Number of deaths from wildfires]
from dbo.['natural-disasters$']
order by 1,2




select [Country name],Year,[Number of total people affected by disasters],[Number of deaths from drought],[Number of deaths from earthquakes],[Number of deaths from extreme temperatures],[Number of deaths from floods],[Number of deaths from fog],[Number of deaths from glacial lake outbursts],[Number of deaths from landslides],[Number of deaths from mass movements],[Number of deaths from storms],[Number of total people affected by volcanic activity],[Number of deaths from wildfires]
from dbo.['natural-disasters$']

--group by Country,Year

order by 1,2


select [Country name],Year,[population],[Total deaths - Drought (decadal)]/population*100
from dbo.['decadal-deaths-disasters-type$']
where [Country name] like '%nigeria%'
order by 1,2

select [Country name],Year,[population],[Total deaths - Flood (decadal)]/population*100 as FD
from dbo.['decadal-deaths-disasters-type$']
order by 1,2



select [Country name],Year,[Number of total people affected by disasters],[Number of deaths from drought],[Number of deaths from earthquakes],[Number of deaths from extreme temperatures],[Number of deaths from floods],[Number of deaths from fog],[Number of deaths from glacial lake outbursts],[Number of deaths from landslides],[Number of deaths from mass movements],[Number of deaths from storms],[Number of total people affected by volcanic activity],[Number of deaths from wildfires]
from dbo.['natural-disasters$']
order by 1,2

select [Country name],year,population,[Number of total people affected by floods],[Number of deaths from floods]
from dbo.['natural-disasters$']
order by 1,2


select [Country name],year,population,[Number of total people affected by disasters],[Number of deaths from disasters]
from dbo.['natural-disasters$']
order by 1,2

select [Country name],year,population,[Number of total people affected by earthquakes],[Number of deaths from earthquakes]
from dbo.['natural-disasters$']
order by 1,2


select [Country name],year,population,[Number of deaths from earthquakes]/population*100 as 'Deaths EQ'
from dbo.['natural-disasters$']
order by 1,2


select [country name],population, max([Number of deaths from earthquakes]) as 'Max Death EQ'
from dbo.['natural-disasters$']
group by population,[Country name],Year
order by 1,2


select [country name],population, max([Number of deaths from earthquakes]) as 'Max Death EQ'
from dbo.['natural-disasters$']
group by population,[Country name],Year
order by population desc

--Higest Death Count per Population

select [country name],population,[Number of deaths from earthquakes] as 'Max Death EQ'
from dbo.['natural-disasters$']
order by population desc


select [country name], max([Number of deaths from earthquakes]) as 'Max Death EQ'
from dbo.['natural-disasters$']
where [Country name] like '%Nigeria%'
group by [Country name]
order by [Max Death EQ] desc


select *
from dbo.['natural-disasters$']
where [Country name] is not null
order by 3,4




select [country name], max([Number of deaths from earthquakes]) as 'Max Death EQ'
from dbo.['natural-disasters$']
where [Country name] like '%america%'
group by [Country name]
order by [Max Death EQ] desc

select [country name], max([Number of deaths from earthquakes]) as 'Max Death EQ'
from dbo.['natural-disasters$']
where [Country name] like '%africa%'
group by [Country name]
order by [Max Death EQ] desc

select [country name], max([Number of deaths from earthquakes]) as 'Max Death EQ'
from dbo.['natural-disasters$']
where [Country name] like '%europe%'
group by [Country name]
order by [Max Death EQ] desc


select [country name], max([Number of deaths from floods]) as 'Max Death Flood'
from dbo.['natural-disasters$']
where [Country name] like '%Africa%'
group by [Country name]
order by [Max Death Flood] desc



select [Country name], population , [Number of deaths from earthquakes], [Number of total people affected by earthquakes],([Number of total people affected by earthquakes]/population)*100 as 'Total affected percentage'
from dbo.['natural-disasters$']
where [Country name] like '%africa%'
and [Country name] is not null
order by 1,2


select [Country name], population , max([Number of deaths from earthquakes]) as 'Max Death EQ', max([Number of total people affected by earthquakes]) as 'Max Affected EQ'
from dbo.['natural-disasters$']
group by [Country name],population
order by 1,2


select [Country name], population , max([Number of deaths from earthquakes]) as 'Max Death EQ', max([Number of total people affected by earthquakes]) as 'Max Affected EQ'
from dbo.['natural-disasters$']
where [Country name] like '%united%'
group by [Country name],population
order by 1,2


select Year, max([Number of deaths from earthquakes]) as 'Max Death EQ', max([Number of total people affected by earthquakes]) as 'Max Affected EQ'
from dbo.['natural-disasters$']
where [Country name] like '%united%'
group by Year
order by 1,2


select Year, [Number of deaths from earthquakes] --as 'Max Death EQ', --max([Number of total people affected by earthquakes]) as 'Max Affected EQ'
from dbo.['natural-disasters$']
where [Country name] like '%united%'
order by 1,2


select Year, max ([Number of deaths from earthquakes]) --as 'Max Death EQ', --max([Number of total people affected by earthquakes]) as 'Max Affected EQ'
from dbo.['natural-disasters$']
where [Country name] like '%united%'
group by Year
order by 1,2


select Year, sum ([Number of deaths from earthquakes]) --as 'Max Death EQ', --max([Number of total people affected by earthquakes]) as 'Max Affected EQ'
from dbo.['natural-disasters$']
where [Country name] like '%united%'
group by Year
order by 1,2


select Year, sum ([Number of deaths from earthquakes]) as 'Sum Death EQ'
from dbo.['natural-disasters$']
where [Country name] is not null
group by Year
order by 1,2


select Year, sum ([Number of deaths from earthquakes]) as 'Sum Death EQ'--, --max([Number of total people affected by earthquakes]) as 'Max Affected EQ'
from dbo.['natural-disasters$']
where [Country name] like '%united%'
group by Year
order by 1,2




select Year, sum ([Number of deaths from earthquakes]) as 'Sum Death EQ', sum(cast([Number of total people affected by earthquakes]as int))
from dbo.['natural-disasters$']
where [Country name] is not null
group by Year
order by 1,2

select Year, sum ([Number of deaths from earthquakes]) as 'Sum Death EQ', sum(cast([Number of total people affected by earthquakes]as int)) 
as 'Sum Total Deaths',  sum(cast([Number of total people affected by earthquakes]as int)) / sum ([Number of deaths from earthquakes])*100 as 'Percentage Total Death'
from dbo.['natural-disasters$']
where [Country name] is not null
group by Year
order by 1,2


select sum ([Number of deaths from earthquakes]) as 'Sum Death EQ', sum(cast([Number of total people affected by earthquakes]as int)) 
as 'Sum Total Deaths',  sum(cast([Number of total people affected by earthquakes]as int)) / sum ([Number of deaths from earthquakes])*100 as 'Percentage Total Death'
from dbo.['natural-disasters$']
where [Country name] is not null
--group by Year
order by 1,2

select ND.[Country name],ND.Year,ND.population,DD.population
from dbo.['natural-disasters$'] ND
join dbo.['decadal-deaths-disasters-type$'] DD
on ND.[Country name] = DD.[Country name]
order by 1,2



select ND.[Country name],ND.Year,ND.population,DD.[Total deaths - flood (decadal)]
,sum(cast(DD.[Total deaths - flood (decadal)] as int))  over (partition by ND.[country name]) as 'Flood Sum'
from dbo.['natural-disasters$'] ND
join dbo.['decadal-deaths-disasters-type$'] DD
on ND.[Country name] = DD.[Country name]
where ND.[Country name] is not null
order by 1,2



select ND.[Country name],ND.Year,ND.population,DD.[Total deaths - flood (decadal)]
,sum(convert(int, DD.[Total deaths - flood (decadal)]))  over (partition by ND.[country name]) as 'Flood Sum'
from dbo.['natural-disasters$'] ND
join dbo.['decadal-deaths-disasters-type$'] DD
on ND.[Country name] = DD.[Country name]
where ND.[Country name] is not null
order by 1,2



select ND.[Country name],ND.Year,ND.population,DD.[Total deaths - flood (decadal)]
,sum(convert(int, DD.[Total deaths - flood (decadal)]))  over (partition by ND.[country name] order by ND.[Country name], ND.Year) as 'Rolling Death'
from dbo.['natural-disasters$'] ND
join dbo.['decadal-deaths-disasters-type$'] DD
on ND.[Country name] = DD.[Country name]
where ND.[Country name] is not null
order by 1,2





with 




--Temp Table
Drop Table if exists  #PercentagePopDF
create table #PercentagePopDF
(
CountryName nvarchar(255),
Year datetime,
Population numeric,
TotalFD numeric
)

insert into #PercentagePopDF

select ND.[Country name],ND.Year,ND.population,DD.[Total deaths - flood (decadal)]
--,sum(convert(int, DD.[Total deaths - flood (decadal)]))  over (partition by ND.[country name] order by ND.[Country name], ND.Year) as 'Rolling Death'
from dbo.['natural-disasters$'] ND
join dbo.['decadal-deaths-disasters-type$'] DD
on ND.[Country name] = DD.[Country name]
where ND.[Country name] is not null
order by 1,2


--creating view for Visuals
create view PercentagePopDF as 

select ND.[Country name],ND.Year,ND.population,DD.[Total deaths - flood (decadal)]
--,sum(convert(int, DD.[Total deaths - flood (decadal)]))  over (partition by ND.[country name] order by ND.[Country name], ND.Year) as 'Rolling Death'
from dbo.['natural-disasters$'] ND
join dbo.['decadal-deaths-disasters-type$'] DD
on ND.[Country name] = DD.[Country name]
where ND.[Country name] is not null
--order by 1,2

select *
from dbo.PercentagePopDF
order by 1,2



