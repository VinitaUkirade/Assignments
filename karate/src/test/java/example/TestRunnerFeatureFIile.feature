Feature: Karate Booking ID APIs

  Background:
    * header Content-Type = 'application/json'
    * header Accept = 'application/json'
    * header Cookie = 'token=<token_value>'
    * header Authorization = 'Basic YWRtaW46cGFzc3dvcmQxMjM='


  Scenario: Create Token
    Given url "https://restful-booker.herokuapp.com/auth?username=admin&password=password123"
    When method POST
    Then status 200
    And print response

  Scenario: Booking - GetBookingIds
    Given url "https://restful-booker.herokuapp.com/booking"
    When method GET
    Then status 200
    And print response


  Scenario: Booking - CreateBooking
    Given url "https://restful-booker.herokuapp.com/booking"
    And request { "firstname" : "Jim", "lastname" : "Brown", "totalprice" : 111, "depositpaid" : true, "bookingdates" : { "checkin" : "2018-01-01", "checkout" : "2019-01-01"}, "additionalneeds" : "Breakfast" }
    When method POST
    Then status 200
    And print response

  Scenario: Booking - UpdateBooking
    Given url "https://restful-booker.herokuapp.com/booking/1"
    And request { "firstname" : "James", "lastname" : "Brown", "totalprice" : 111, "depositpaid" : true, "bookingdates" : { "checkin" : "2018-01-01", "checkout" : "2019-01-01"}, "additionalneeds" : "Breakfast" }
    When method PUT
    Then status 200
    And print response

  Scenario: Booking - PartialUpdateBooking
    Given url "https://restful-booker.herokuapp.com/booking/1"
    And request { "firstname" : "James", "lastname" : "Brown" }
    When method PATCH
    Then status 200
    And print response

  Scenario: Booking - DeleteBooking
    Given url "https://restful-booker.herokuapp.com/booking/1"
    When method DELETE
    Then status 201`
    And print response

