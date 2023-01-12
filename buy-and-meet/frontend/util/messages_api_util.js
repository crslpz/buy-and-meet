export const fetchMessages = (userId) => {
    return $.ajax({
        method: 'GET',
        url: `/api/${userId}/messages`
    })
};

export const fetchMessage = messageId => {
    return $.ajax({
        method: 'GET'
    })
};

export const createMessage = (message) => dispatch => {
    return $.ajax({
        method: 'POST',
        url:'api/messages',
        data: {messages}
    })
};