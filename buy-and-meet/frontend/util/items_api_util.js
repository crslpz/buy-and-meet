export const getItems = () => {
   return $.ajax({
      method: "GET",
      url: 'api/items'
   })
};

export const createItem = (itemData) => {
   return $.ajax({
      method: 'POST',
      url: '/api/items',
      data: itemData
   })
};

export const getItem = (itemId) => {
   return $.ajax({
      method: 'get',
      url: `/api/items/${itemId}`
   })
};

export const editItem = (itemData, itemId) => {
   return $.ajax({
      method: 'patch',
      url: `/api/items/${itemId}`,
      itemData
   })
};

export const deleteItem = (itemId) => {
   return $.ajax({
      method: 'DELETE',
      url: `/api/items/${itemId}`
   })
};