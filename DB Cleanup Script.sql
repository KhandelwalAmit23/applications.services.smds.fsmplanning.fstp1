-- Clean STAGE:

USE STAGE

GO

TRUNCATE TABLE [xeta].[XetaLotFlowPlanStaging]

TRUNCATE TABLE [xeta].[XetaActualsStaging]

TRUNCATE TABLE [xeta].[XetaFlowSumStaging]

TRUNCATE TABLE [xeta].[XetaProductSumStaging]

TRUNCATE TABLE [xeta].[XetaWipStaging]

TRUNCATE TABLE [xeus].[OperationStaging]

TRUNCATE TABLE [xeus].[WaferStartActualsStaging]

TRUNCATE TABLE [common].[DataFeedBatches]

TRUNCATE TABLE [common].[DataFeedLogs]

TRUNCATE TABLE [ilm].[MRB]

TRUNCATE TABLE [mars].[OperationStaging]

TRUNCATE TABLE [mars].[WaferStartActualsStaging]

TRUNCATE TABLE [prospal].[ShippedActualsStaging]

-- Clean FSMCOMMON:

USE FSMCOMMON

GO

TRUNCATE TABLE [common].[FabDataMonitors]

DELETE FROM [common].[MRB] -- Take out from replication & establish direct pull

DELETE FROM  [common].[SortProducts] -- Take out from replication & establish direct pull

DELETE FROM [common].[SortSchedules] -- Take out from replication & establish direct pull

TRUNCATE TABLE [common].[WaferStartActuals]

TRUNCATE TABLE [common].[WaferStartSchedules]

TRUNCATE TABLE [common].[Wips]

DELETE FROM [parameter].[DefaultParameters] -- Take out from replication & establish direct pull

TRUNCATE TABLE [parameter].[ParameterSets]

DELETE FROM [parameter].[StartHorizons] -- Take out from replication & establish direct pull

DELETE FROM [parameter].[WipHorizons] -- Take out from replication & establish direct pull

DELETE FROM [snapshot].[StartHorizons] -- Take out from replication & establish direct pull

DELETE FROM [snapshot].[WipHorizons] -- Take out from replication & establish direct pull

TRUNCATE TABLE [parameter].[XetaParameterDetails]

TRUNCATE TABLE [parameter].[XetaParameters]

DELETE FROM common.WeeklyShapingRatios

DELETE FROM common.WeeklyShapingRatio

DELETE FROM common.ShapingForAreaSegments

DELETE FROM manufacturing.FLSAreaInfo

DELETE FROM [promise].[Segments] -- Leave replicated for now. Need to find a direct pull. Trigger the pull from promise on changes to segments. Pull common.ShapingForAreaSegments as well

TRUNCATE TABLE [xeta].[LotActuals]

TRUNCATE TABLE [xeta].[LotAreaInfo]

TRUNCATE TABLE [xeta].[LotFlowPlans]

TRUNCATE TABLE [xeta].[Wips]

DELETE FROM [xeta].[XetaFlowSum] -- Take out from replication & establish direct pull

TRUNCATE TABLE [xeta].[XetaFlowSumTemp]

DELETE FROM [xeta].[XetaProductSum]

 

-- Clean PROMISE:

USE PROMISE

GO

-- TRUNCATE ALL Analysis Tables.

TRUNCATE TABLE [analysis].[DataGenerationStatus]--

TRUNCATE TABLE [analysis].[LotFlowPlanVersions]--

TRUNCATE TABLE [analysis].[ParameterSegments]--

TRUNCATE TABLE [analysis].[StartsParameters]--

-- TO DO IN analysis.Delete

TRUNCATE TABLE [analysis].[AnalysisOpenHistory] --


TRUNCATE TABLE analysis.RecalculateScenarios

--TRUNCATE TABLE [analysis].[AnalysisWipProfileScenario]  --

TRUNCATE TABLE [analysis].[LotLastOperation]

TRUNCATE TABLE [analysis].[DataGenerationErrorDetails]

TRUNCATE TABLE [analysis].[BusinessScenarios]


TRUNCATE TABLE analysis.Schedules

TRUNCATE TABLE analysis.ScheduleChanges

TRUNCATE TABLE analysis.RecalculateLog

TRUNCATE TABLE [analysis].[SortActuals]--

TRUNCATE TABLE [analysis].[SortProducts]--

TRUNCATE TABLE [analysis].[StartsMethods]--

TRUNCATE TABLE [analysis].[WipProfileMRB]--

TRUNCATE TABLE [analysis].[WipMRB]--

TRUNCATE TABLE [analysis].[Summaries]--

TRUNCATE TABLE [analysis].[SummariesDaily]--

TRUNCATE TABLE [analysis].[Horizon]--

TRUNCATE TABLE [analysis].[WaferStartActuals]--

TRUNCATE TABLE [analysis].[WeeklyShapingRatios]--

TRUNCATE TABLE [analysis].[WIPParameters]--

TRUNCATE TABLE [analysis].[WipProfileExitDates] --

TRUNCATE TABLE [analysis].[WipProfileFlowPlanResults]--

TRUNCATE TABLE [analysis].[WipProfileResults]--

TRUNCATE TABLE [analysis].[WipProfile]--

TRUNCATE TABLE [analysis].[AnalysisDataMonitors] --

TRUNCATE TABLE [analysis].[AnalysisNoteSets] --

TRUNCATE TABLE analysis.SummaryTypesNotes

TRUNCATE TABLE [analysis].[Scenarios]--

TRUNCATE TABLE [analysis].[RecalculateTracker]

DELETE FROM [analysis].[Analysis] DBCC CHECKIDENT ('[analysis].[Analysis]', RESEED, 0);

TRUNCATE TABLE [analysis].[SortOutFromStart]

TRUNCATE TABLE [common].[WeeklySegmentShapingRatios]

TRUNCATE TABLE [common].[WeeklyShapingRatios]

TRUNCATE TABLE [common].[SiteProductParameters]

TRUNCATE TABLE [common].[JobLogs]

TRUNCATE TABLE [common].[LotExclusions]

TRUNCATE TABLE [common].[Notes]

TRUNCATE TABLE [common].[NoteSets]

TRUNCATE TABLE [common].[SortSchedules]

TRUNCATE TABLE [common].[Wips]

TRUNCATE TABLE [parameter].[ParameterSetSegments]

TRUNCATE TABLE [parameters].[Parameters]

DELETE FROM [parameters].[ParameterSets] DBCC CHECKIDENT ('[parameters].[ParameterSets]', RESEED, 0);

TRUNCATE TABLE [promise].[Segments]

TRUNCATE TABLE [ref].[ParameterSetLocations]

TRUNCATE TABLE [snapshot].[LotFlowPlanStaging]

TRUNCATE TABLE [snapshot].[LotFlowPlan]

TRUNCATE TABLE [snapshot].[LotFlowPlanVersions]

TRUNCATE TABLE [snapshot].[LotFlowInfoByArea]

TRUNCATE TABLE [snapshot].[LotOwningSite]

TRUNCATE TABLE [snapshot].[LotFlowInfoByArea]

TRUNCATE TABLE [snapshot].[SortActuals]

TRUNCATE TABLE [snapshot].[Schedules]

TRUNCATE TABLE [snapshot].[WaferStartActuals]

TRUNCATE TABLE [snapshot].[WaferStartSchedules]

TRUNCATE TABLE [snapshot].[MRB]

-------------------- -- Verify all snapshot tables are empty

SELECT *   FROM [PROMISE].[snapshot].[LotFlowInfoByArea]

SELECT *   FROM [PROMISE].[snapshot].[LotFlowPlan]

SELECT *   FROM [PROMISE].[snapshot].[LotFlowPlanStaging]  

SELECT *   FROM [PROMISE].[snapshot].[LotFlowPlanTemp]  

SELECT *   FROM [PROMISE].[snapshot].[LotFlowPlanVersions]  

SELECT *   FROM [PROMISE].[snapshot].[Schedules]  

SELECT *   FROM [PROMISE].[snapshot].[WaferStartSchedules]

 

 
