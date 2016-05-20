mongoose = require "mongoose"
server = require "../server"
connectionDefault = server.connectionDefault
Schema = mongoose.Schema


#MyEdit - May 17 2016: Revoked certs schema
RevokedCertSchema = new Schema
  "fingerprint": type: String, unique: true
  "serial": type: String, required: true 
  "commonName": String
  "issuerDN": type: String, required: true
  "dateRevoked": Date
  "reason": String


#MyEdit - May 17 2016: Revoked certs model
exports.RevokedCert = connectionDefault.model 'RevokedCert', RevokedCertSchema