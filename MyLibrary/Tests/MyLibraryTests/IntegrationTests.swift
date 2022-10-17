import XCTest
@testable import MyLibrary

final class IntegerationTests: XCTestCase {

    func testWeatherServiceReplieswithMock() async throws {
        // Given
        let service_obj = WeatherServiceImpl()


        // When
        let temperature = try await service_obj.getTemperature()

        // Then
        XCTAssertNotNil(temperature)
        // Check if temperature is coming as per mocked response
        XCTAssertEqual(temperature,295)

    }

}