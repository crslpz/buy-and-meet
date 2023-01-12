export const fetchAllItems = () => {
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

export const fetchAItem = (itemId) => {
   return $.ajax({
      method: 'get',
      url: `/api/items/${itemId}`
   })
};

export const deleteItem = (itemId) => {
   return $.ajax({
      method: 'DELETE',
      url: `/api/items/${itemId}`
   })
};