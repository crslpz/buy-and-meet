import * as ItemsApiUtil from '../util/items_api_utils';

export const FETCH_ITEM = "FETCH_ITEM";
export const FETCH_ITEMS = "FETCH_ITEMS";
export const CREATE_ITEM = "CREATE_ITEM";
export const DELETE_PHOTO = "DELETE_PHOTO";

const receiveItem = (item) => ({
   type: FETCH_ITEM,
   item
});

const receiveItems = ({items}) => ({
   type: FETCH_ITEMS,
   items: items
});

const removeItem = (itemId) => ({
   type: DELETE_PHOTO,
   itemId
});


export const getItems = () => dispatch => ItemsApiUtil.getItems()
   .then(items => dispatch(receiveItems(items)));

export const getItem = itemId => dispatch => ItemsApiUtil.getItem(itemId)
   .then(item => dispatch(receiveItem(item)));

export const postItem = itemData => dispatch => ItemsApiUtil.createItem(itemData)
   .then(item => dispatch(receiveItem(item)));

export const editItem = (itemData, itemId) => dispatch => ItemsApiUtil.editItem(itemData, itemId)
   .then(item => dispatch(receiveItem(item)));

export const deleteItem = (itemId) => dispatch => ItemsApiUtil.deleteItem(itemId)
   .then(() => dispatch(removeItem(photoId)));