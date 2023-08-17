select modelId, model from model
where EngineType = 'Electric'

with InvData as(
SELECT (inventory.inventoryId) as ID, (model.model) as MD, year from inventory
join model on inventory.modelId = model.modelId
where model.EngineType = 'Electric'
)
SELECT  salesId, InvData.MD, InvData.year , salesAmount, soldDate  from sales
join InvData on sales.inventoryId = InvData.ID
Order by soldDate 
