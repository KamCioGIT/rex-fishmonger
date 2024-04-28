local Translations = {

    client = {
        lang_1 = 'Open ',
        lang_2 = 'Fish Monger Menu',
        lang_3 = 'Sell Fish',
        lang_4 = 'Sell your fish to the monger',
        lang_5 = 'Open Fish Monger Shop',
        lang_6 = 'buy fishing items from the shop',
        lang_7 = 'Fish Monger Shop',
        lang_8 = 'Fish Mongers Closed',
        lang_9 = 'come back after ',
        lang_10 = 'am',
        lang_11 = 'Open Fish Monger Menu',
        lang_12 = 'Fishmonger Checking...',
    },

    server = {
        lang_1 = 'No Fish!',
        lang_2 = 'you don\'t have any fish to sell',
    },
    
    config = {
        lang_1 = 'Fish Monger Shop',
    },

}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})

-- Lang:t('client.lang_1')
-- Lang:t('server.lang_1')
-- Lang:t('config.lang_1')
