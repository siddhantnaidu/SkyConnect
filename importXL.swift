let html = try await webScrape(url: "https://skyline.isd411.org/our-school/upcoming-events")

print(html)


func webScrape(url: String) async throws -> String {
    let (data, _) = try await URLSession.shared.data(from: URL(string: url)!)
    return String(data: data, encoding: .utf8)!
}
