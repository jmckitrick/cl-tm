;;; DB-backed TM orders.

(in-package :tm)

;(declaim (optimize debug))

(def-view-class tm-order ()
  ((id :accessor tm-order.id :initarg :id :type varchar)
   (link :accessor tm-order.link :initarg :link :type varchar)
   (order-date :accessor tm-order.order-date :initarg :order-date :type string)
   (event-date :accessor tm-order.event-date :initarg :event-date :type string)
   (event-name :accessor tm-order.event-name :initarg :event-name :type string))
  (:documentation "Ticketmaster order base class."))

(def-view-class tm-order-details (tm-order)
  ((tfbits :accessor tm-order.tfbits :initform "" :type string)
   (status :accessor tm-order.status :initform "" :type string)
   (message-text :accessor tm-order.message-text :initform "" :type string)
   (amount :accessor tm-order.amount :initform 0 :type string)
   (venue :accessor tm-order.venue :initform "" :type string)
   (city :accessor tm-order.city :initform "" :type string)
   (state :accessor tm-order.state :initform "" :type string)
   (currency :accessor tm-order.currency :initform "" :type string)
   (time :accessor tm-order.event-time :initform "" :type string)
   (seats :accessor tm-order.seats :initform nil)
   (total-seats :accessor tm-order.total-seats :initform 0 :type integer)
   (ticket-quantity :accessor tm-order.ticket-quantity :initform nil)
   (ticket-details :accessor tm-order.ticket-details :initform nil)
   (card-type :accessor tm-order.card-type :initform nil)
   (card-charges :accessor tm-order.card-charges :initform nil)
   (card-last4digits :accessor tm-order.card-last4digits :initform nil)
   (card-billing-address :accessor tm-order.card-billing-address :initform nil))
  (:documentation "Ticketmaster order details class."))