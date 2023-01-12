import * as ItemsApiUtil from '../util/items_api_utils';

export const FETCH_ITEM = "FETCH_ITEM";
export const FETCH_ITEMS = "FETCH_ITEMS";
export const CREATE_ITEM = "CREATE_ITEM";
export const DELETE_PHOTO = "DELETE_PHOTO";

const fetchItem = (item) => ({
   type: FETCH_ITEM,
   item
});

const fetchItems = ({items, users}) => ({
   type: FETCH_ITEMS,
   items: items,
   users: users
});

const deleteItem = (itemId) => ({
   type: DELETE_PHOTO,
   itemId
});


export const fetchItems = () => dispatch => (
   ItemsApiUtil.fetchItems()
);
