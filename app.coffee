soda = require 'soda-js'
express = require 'express'

app = express()
app.use express.static('public')

app.get "/soda/barncats", (req, res) ->
  sodaOpts = {
    "username": "",
    "password": "",
    "apiToken" : ""
  }
  consumer = new soda.Consumer('data.kingcounty.gov', sodaOpts)

  consumer.query()
    .withDataset('9uq7-nngh')
    .getRows()
      .on 'success', (rows) ->
        res.send rows
      .on 'error', (error) ->
        res.send error

app.listen 3030
