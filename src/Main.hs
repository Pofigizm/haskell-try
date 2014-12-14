data TransportLayer = TCP | UDP | SCTP | DCCP | SPX

descriptionOf :: TransportLayer -> String
descriptionOf protocol =
  case protocol of
    TCP -> "Transmission Control Protocol"
    UDP -> "User Datagram Protocol"
    SCTP -> "Stream Control Transmission Protocol"
    DCCP -> "Datagram Congestion Control Protocol"
    SPX -> "Sequenced Packet Exchange"

main = print $ descriptionOf TCP
