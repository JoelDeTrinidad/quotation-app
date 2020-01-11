puts 'Inicialize seed'

Coin.create!([
    {name: 'EUR'},
    {name: 'USD'},
    {name: 'AUD'}
 ])

 puts 'Finish seed'