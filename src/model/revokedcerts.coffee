mongoose = require "mongoose"
server = require "../server"
connectionDefault = server.connectionDefault
Schema = mongoose.Schema


#MyEdit - May 17 2016: Revoked certs schema
RevokedCertSchema = new Schema
  "fingerprint": type: String, unique: true
  "serial": String
  "commonName": String
  "issuerDN": String
  "dateRevoked": Date
  "reason": String


#MyEdit - May 17 2016: Revoked certs model
exports.RevokedCert = connectionDefault.model 'RevokedCert', RevokedCertSchema