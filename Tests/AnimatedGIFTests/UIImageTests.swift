import XCTest
import UIKit
@testable import AnimatedGIF

final class UIImageTests: XCTestCase {
    func testAnimatedImage() {
        XCTAssertNil(UIImage.animatedImage(data: GIF_AFU_Data, behavior: .unclamped)?.images)
        XCTAssertNil(UIImage.animatedImage(data: GIF_AFU_Data, behavior: .unclamped)?.duration)
        XCTAssertEqual(UIImage.animatedImage(data: GIF_AFU_Data, behavior: .clamped(0.5))?.images?.count, 1000)
        XCTAssertEqual(UIImage.animatedImage(data: GIF_AFU_Data, behavior: .clamped(0.5))?.duration, 10.0)
        XCTAssertEqual(UIImage.animatedImage(data: GIF_AFU_Data, behavior: .webkit)?.images?.count, 200)
        XCTAssertEqual(UIImage.animatedImage(data: GIF_AFU_Data, behavior: .webkit)?.duration, 2.0)
        XCTAssertEqual(UIImage.animatedImage(data: GIF_AFU_Data)?.images?.count, 200)
        XCTAssertEqual(UIImage.animatedImage(data: GIF_AFU_Data)?.duration, 2.0)
        
        XCTAssertEqual(UIImage.animatedImage(data: GIF_AF_Data, behavior: .unclamped)?.images?.count, 200)
        XCTAssertEqual(UIImage.animatedImage(data: GIF_AF_Data, behavior: .unclamped)?.duration, 2.0)
        XCTAssertEqual(UIImage.animatedImage(data: GIF_AF_Data, behavior: .clamped(0.5))?.images?.count, 1000)
        XCTAssertEqual(UIImage.animatedImage(data: GIF_AF_Data, behavior: .clamped(0.5))?.duration, 10.0)
        XCTAssertEqual(UIImage.animatedImage(data: GIF_AF_Data, behavior: .webkit)?.images?.count, 200)
        XCTAssertEqual(UIImage.animatedImage(data: GIF_AF_Data, behavior: .webkit)?.duration, 2.0)
        XCTAssertEqual(UIImage.animatedImage(data: GIF_AF_Data)?.images?.count, 200)
        XCTAssertEqual(UIImage.animatedImage(data: GIF_AF_Data)?.duration, 2.0)
        
        XCTAssertEqual(UIImage.animatedImage(data: GIF_AOU_Data, behavior: .unclamped)?.images?.count, 100)
        XCTAssertEqual(UIImage.animatedImage(data: GIF_AOU_Data, behavior: .unclamped)?.duration, 1.0)
        XCTAssertEqual(UIImage.animatedImage(data: GIF_AOU_Data, behavior: .clamped(0.5))?.images?.count, 700)
        XCTAssertEqual(UIImage.animatedImage(data: GIF_AOU_Data, behavior: .clamped(0.5))?.duration, 7.0)
        XCTAssertEqual(UIImage.animatedImage(data: GIF_AOU_Data, behavior: .webkit)?.images?.count, 220)
        XCTAssertEqual(UIImage.animatedImage(data: GIF_AOU_Data, behavior: .webkit)?.duration, 2.2)
        XCTAssertEqual(UIImage.animatedImage(data: GIF_AOU_Data)?.images?.count, 220)
        XCTAssertEqual(UIImage.animatedImage(data: GIF_AOU_Data)?.duration, 2.2)
        
        XCTAssertEqual(UIImage.animatedImage(data: GIF_AO_Data, behavior: .unclamped)?.images?.count, 220)
        XCTAssertEqual(UIImage.animatedImage(data: GIF_AO_Data, behavior: .unclamped)?.duration, 2.2)
        XCTAssertEqual(UIImage.animatedImage(data: GIF_AO_Data, behavior: .clamped(0.5))?.images?.count, 700)
        XCTAssertEqual(UIImage.animatedImage(data: GIF_AO_Data, behavior: .clamped(0.5))?.duration, 7.0)
        XCTAssertEqual(UIImage.animatedImage(data: GIF_AO_Data, behavior: .webkit)?.images?.count, 220)
        XCTAssertEqual(UIImage.animatedImage(data: GIF_AO_Data, behavior: .webkit)?.duration, 2.2)
        XCTAssertEqual(UIImage.animatedImage(data: GIF_AO_Data)?.images?.count, 220)
        XCTAssertEqual(UIImage.animatedImage(data: GIF_AO_Data)?.duration, 2.2)
        
        XCTAssertNil(UIImage.animatedImage(data: GIF_Data)?.images)
        XCTAssertEqual(UIImage.animatedImage(data: GIF_Data)?.duration, 0.0)
    }
}

private let GIF_AFU_Data: Data = Data(base64Encoded: """
R0lGODlhKgAbAJECAH98IsrVKAAAAAAAACH/C05FVFNDQVBFMi4wAwEAAAAh/wtYTVAgRGF0YVhNUDw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDYuMC1jMDAyIDc5LjE2NDM1MiwgMjAyMC8wMS8zMC0xNTo1MDozOCAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wTU09Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9tbS8iIHhtbG5zOnN0UmVmPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvc1R5cGUvUmVzb3VyY2VSZWYjIiB4bWxuczp4bXA9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8iIHhtcE1NOk9yaWdpbmFsRG9jdW1lbnRJRD0ieG1wLmRpZDozNzE3OTdkMC05ZmViLTQ2NjItOGVmZi0wMzk5MTkwMDBkZjgiIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6NDgwOTZGODQ3NDEzMTFFQUE0RjVBOTcyNDI1OTIxMDUiIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6NDgwOTZGODM3NDEzMTFFQUE0RjVBOTcyNDI1OTIxMDUiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENDIDIwMTkgKE1hY2ludG9zaCkiPiA8eG1wTU06RGVyaXZlZEZyb20gc3RSZWY6aW5zdGFuY2VJRD0ieG1wLmlpZDpkNDM1OGVmZC0zM2I1LTQwM2ItOWU1YS1hZmM4MzE3MzgyOTAiIHN0UmVmOmRvY3VtZW50SUQ9ImFkb2JlOmRvY2lkOnBob3Rvc2hvcDoyODNjODBjMy02MzM4LTk1NDMtYThiMS1kYzg2Yjg2YmMwMDciLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+IDw/eHBhY2tldCBlbmQ9InIiPz4B//79/Pv6+fj39vX08/Lx8O/u7ezr6uno5+bl5OPi4eDf3t3c29rZ2NfW1dTT0tHQz87NzMvKycjHxsXEw8LBwL++vby7urm4t7a1tLOysbCvrq2sq6qpqKempaSjoqGgn56dnJuamZiXlpWUk5KRkI+OjYyLiomIh4aFhIOCgYB/fn18e3p5eHd2dXRzcnFwb25tbGtqaWhnZmVkY2JhYF9eXVxbWllYV1ZVVFNSUVBPTk1MS0pJSEdGRURDQkFAPz49PDs6OTg3NjU0MzIxMC8uLSwrKikoJyYlJCMiISAfHh0cGxoZGBcWFRQTEhEQDw4NDAsKCQgHBgUEAwIBAAAh+QQFAAACACwAAAAAKgAbAAACMoyPqcvtD6Oc9IFbM7pAe+5pYFiN5GSeUapaWLu+8EzX9o3nutHtW9Dz8YTEovGITDYKACH5BAUAAAIALBUAAwADAAwAAAIHjH+gy+1eAAAh+QQFAAACACwVAAYAAwAMAAACB4x/oMvtXgAAIfkEBQAAAgAsFQAJAAMADAAAAgeMf6DL7V4AACH5BAUAAAIALBIADAAGAAkAAAIKjI+pwMfgnpyUFQAh+QQFAAACACwPAA8ACQAGAAACCIyPqQrtD2MsACH5BAUAAAIALAwAEgAMAAMAAAIIhH+hyBqMXAEAIfkEBQAAAgAsCQASAAwAAwAAAgiEf6HIGoxcAQAh+QQFAAACACwGABIADAADAAACCIR/ocgajFwBACH5BAUAAAIALAYADwAJAAYAAAIMhINpkHod1nKSTlQAACH5BAUAAAIALAYADAAGAAkAAAIMhIMGGMqeTlzzyXYLACH5BAUAAAIALAYACQADAAwAAAIHhI+pGu1eAAAh+QQFAAACACwGAAYAAwAMAAACB4SPqRrtXgAAIfkEBQAAAgAsBgADAAMADAAAAgeEj6ka7V4AACH5BAUAAAIALAYAAwAGAAkAAAIKhI+pwcfhnpyUFQAh+QQFAAACACwGAAMACQAGAAACCISPqRrtD2MsACH5BAUAAAIALAYAAwAMAAMAAAIIjIGZFursVAEAIfkEBQAAAgAsCQADAAwAAwAAAgiMgZkW6uxUAQAh+QQFAAACACwMAAMADAADAAACCIyBmRbq7FQBACH5BAUAAAIALA8AAwAJAAYAAAIMjIFpkXoN1nKSTlQAADs=
""")!

private let GIF_AF_Data: Data = Data(base64Encoded: """
R0lGODlhKgAbAJECAH98IsrVKAAAAAAAACH/C05FVFNDQVBFMi4wAwEAAAAh/wtYTVAgRGF0YVhNUDw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDYuMC1jMDAyIDc5LjE2NDM1MiwgMjAyMC8wMS8zMC0xNTo1MDozOCAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wTU09Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9tbS8iIHhtbG5zOnN0UmVmPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvc1R5cGUvUmVzb3VyY2VSZWYjIiB4bWxuczp4bXA9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8iIHhtcE1NOk9yaWdpbmFsRG9jdW1lbnRJRD0ieG1wLmRpZDozNzE3OTdkMC05ZmViLTQ2NjItOGVmZi0wMzk5MTkwMDBkZjgiIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6NDgwOTZGODg3NDEzMTFFQUE0RjVBOTcyNDI1OTIxMDUiIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6NDgwOTZGODc3NDEzMTFFQUE0RjVBOTcyNDI1OTIxMDUiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENDIDIwMTkgKE1hY2ludG9zaCkiPiA8eG1wTU06RGVyaXZlZEZyb20gc3RSZWY6aW5zdGFuY2VJRD0ieG1wLmlpZDo0NmU2NDZjNy1mNGZmLTQwN2QtODk3NC1jYjNmOTJlYjhiODAiIHN0UmVmOmRvY3VtZW50SUQ9ImFkb2JlOmRvY2lkOnBob3Rvc2hvcDoyODNjODBjMy02MzM4LTk1NDMtYThiMS1kYzg2Yjg2YmMwMDciLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+IDw/eHBhY2tldCBlbmQ9InIiPz4B//79/Pv6+fj39vX08/Lx8O/u7ezr6uno5+bl5OPi4eDf3t3c29rZ2NfW1dTT0tHQz87NzMvKycjHxsXEw8LBwL++vby7urm4t7a1tLOysbCvrq2sq6qpqKempaSjoqGgn56dnJuamZiXlpWUk5KRkI+OjYyLiomIh4aFhIOCgYB/fn18e3p5eHd2dXRzcnFwb25tbGtqaWhnZmVkY2JhYF9eXVxbWllYV1ZVVFNSUVBPTk1MS0pJSEdGRURDQkFAPz49PDs6OTg3NjU0MzIxMC8uLSwrKikoJyYlJCMiISAfHh0cGxoZGBcWFRQTEhEQDw4NDAsKCQgHBgUEAwIBAAAh+QQFCgACACwAAAAAKgAbAAACMoyPqcvtD6Oc9IFbM7pAe+5pYFiN5GSeUapaWLu+8EzX9o3nutHtW9Dz8YTEovGITDYKACH5BAUKAAIALBUAAwADAAwAAAIHjH+gy+1eAAAh+QQFCgACACwVAAYAAwAMAAACB4x/oMvtXgAAIfkEBQoAAgAsFQAJAAMADAAAAgeMf6DL7V4AACH5BAUKAAIALBIADAAGAAkAAAIKjI+pwMfgnpyUFQAh+QQFCgACACwPAA8ACQAGAAACCIyPqQrtD2MsACH5BAUKAAIALAwAEgAMAAMAAAIIhH+hyBqMXAEAIfkEBQoAAgAsCQASAAwAAwAAAgiEf6HIGoxcAQAh+QQFCgACACwGABIADAADAAACCIR/ocgajFwBACH5BAUKAAIALAYADwAJAAYAAAIMhINpkHod1nKSTlQAACH5BAUKAAIALAYADAAGAAkAAAIMhIMGGMqeTlzzyXYLACH5BAUKAAIALAYACQADAAwAAAIHhI+pGu1eAAAh+QQFCgACACwGAAYAAwAMAAACB4SPqRrtXgAAIfkEBQoAAgAsBgADAAMADAAAAgeEj6ka7V4AACH5BAUKAAIALAYAAwAGAAkAAAIKhI+pwcfhnpyUFQAh+QQFCgACACwGAAMACQAGAAACCISPqRrtD2MsACH5BAUKAAIALAYAAwAMAAMAAAIIjIGZFursVAEAIfkEBQoAAgAsCQADAAwAAwAAAgiMgZkW6uxUAQAh+QQFCgACACwMAAMADAADAAACCIyBmRbq7FQBACH5BAUKAAIALA8AAwAJAAYAAAIMjIFpkXoN1nKSTlQAADs=
""")!

private let GIF_AOU_Data: Data = Data(base64Encoded: """
R0lGODlhKgAbAJECAH98IsrVKAAAAAAAACH/C1hNUCBEYXRhWE1QPD94cGFja2V0IGJlZ2luPSLvu78iIGlkPSJXNU0wTXBDZWhpSHpyZVN6TlRjemtjOWQiPz4gPHg6eG1wbWV0YSB4bWxuczp4PSJhZG9iZTpuczptZXRhLyIgeDp4bXB0az0iQWRvYmUgWE1QIENvcmUgNi4wLWMwMDIgNzkuMTY0MzUyLCAyMDIwLzAxLzMwLTE1OjUwOjM4ICAgICAgICAiPiA8cmRmOlJERiB4bWxuczpyZGY9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkvMDIvMjItcmRmLXN5bnRheC1ucyMiPiA8cmRmOkRlc2NyaXB0aW9uIHJkZjphYm91dD0iIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtbG5zOnhtcD0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wLyIgeG1wTU06T3JpZ2luYWxEb2N1bWVudElEPSJ4bXAuZGlkOjM3MTc5N2QwLTlmZWItNDY2Mi04ZWZmLTAzOTkxOTAwMGRmOCIgeG1wTU06RG9jdW1lbnRJRD0ieG1wLmRpZDpDN0UzMDlGRTc0MTIxMUVBODNGQkUyN0I5MDg4MUY3OCIgeG1wTU06SW5zdGFuY2VJRD0ieG1wLmlpZDpDN0UzMDlGRDc0MTIxMUVBODNGQkUyN0I5MDg4MUY3OCIgeG1wOkNyZWF0b3JUb29sPSJBZG9iZSBQaG90b3Nob3AgQ0MgMjAxOSAoTWFjaW50b3NoKSI+IDx4bXBNTTpEZXJpdmVkRnJvbSBzdFJlZjppbnN0YW5jZUlEPSJ4bXAuaWlkOmViOGFhMDlkLTIxMmYtNDNhMS05YjljLWY1NmRiZDRiYzBiYyIgc3RSZWY6ZG9jdW1lbnRJRD0iYWRvYmU6ZG9jaWQ6cGhvdG9zaG9wOjAxODZjZDVlLTlmN2UtNGU0MC04Yzc0LWY3M2VmNjc4NjAwYyIvPiA8L3JkZjpEZXNjcmlwdGlvbj4gPC9yZGY6UkRGPiA8L3g6eG1wbWV0YT4gPD94cGFja2V0IGVuZD0iciI/PgH//v38+/r5+Pf29fTz8vHw7+7t7Ovq6ejn5uXk4+Lh4N/e3dzb2tnY19bV1NPS0dDPzs3My8rJyMfGxcTDwsHAv769vLu6ubi3trW0s7KxsK+urayrqqmop6alpKOioaCfnp2cm5qZmJeWlZSTkpGQj46NjIuKiYiHhoWEg4KBgH9+fXx7enl4d3Z1dHNycXBvbm1sa2ppaGdmZWRjYmFgX15dXFtaWVhXVlVUU1JRUE9OTUxLSklIR0ZFRENCQUA/Pj08Ozo5ODc2NTQzMjEwLy4tLCsqKSgnJiUkIyIhIB8eHRwbGhkYFxYVFBMSERAPDg0MCwoJCAcGBQQDAgEAACH5BAVkAAIALAAAAAAqABsAAAIyjI+py+0Po5z0gVszukB77mlgWI3kZJ5RqlpYu77wTNf2jee60e1b0PPxhMSi8YhMNgoAIfkEBQAAAgAsFQADAAMADAAAAgeMf6DL7V4AACH5BAUAAAIALBUABgADAAwAAAIHjH+gy+1eAAAh+QQFAAACACwVAAkAAwAMAAACB4x/oMvtXgAAIfkEBQAAAgAsEgAMAAYACQAAAgqMj6nAx+CenJQVACH5BAUAAAIALA8ADwAJAAYAAAIIjI+pCu0PYywAIfkEBQAAAgAsDAASAAwAAwAAAgiEf6HIGoxcAQAh+QQFAAACACwJABIADAADAAACCIR/ocgajFwBACH5BAUAAAIALAYAEgAMAAMAAAIIhH+hyBqMXAEAIfkEBQAAAgAsAwASAAMAAwAAAgOEfwUAIfkEBQAAAgAsAAASAA8AAwAAAgmEjxabDRtcggUAIfkEBQAAAgAsAAASAAwABgAAAg6Ef6HIGoxccvSZSicOBQAh+QQFAAACACwAABIACQAJAAACD5QfeagrGZycVIArL8jYFQA7
""")!

private let GIF_AO_Data: Data = Data(base64Encoded: """
R0lGODlhKgAbAJECAH98IsrVKAAAAAAAACH/C1hNUCBEYXRhWE1QPD94cGFja2V0IGJlZ2luPSLvu78iIGlkPSJXNU0wTXBDZWhpSHpyZVN6TlRjemtjOWQiPz4gPHg6eG1wbWV0YSB4bWxuczp4PSJhZG9iZTpuczptZXRhLyIgeDp4bXB0az0iQWRvYmUgWE1QIENvcmUgNi4wLWMwMDIgNzkuMTY0MzUyLCAyMDIwLzAxLzMwLTE1OjUwOjM4ICAgICAgICAiPiA8cmRmOlJERiB4bWxuczpyZGY9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkvMDIvMjItcmRmLXN5bnRheC1ucyMiPiA8cmRmOkRlc2NyaXB0aW9uIHJkZjphYm91dD0iIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtbG5zOnhtcD0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wLyIgeG1wTU06T3JpZ2luYWxEb2N1bWVudElEPSJ4bXAuZGlkOjM3MTc5N2QwLTlmZWItNDY2Mi04ZWZmLTAzOTkxOTAwMGRmOCIgeG1wTU06RG9jdW1lbnRJRD0ieG1wLmRpZDpDN0UzMDlGQTc0MTIxMUVBODNGQkUyN0I5MDg4MUY3OCIgeG1wTU06SW5zdGFuY2VJRD0ieG1wLmlpZDpDN0UzMDlGOTc0MTIxMUVBODNGQkUyN0I5MDg4MUY3OCIgeG1wOkNyZWF0b3JUb29sPSJBZG9iZSBQaG90b3Nob3AgQ0MgMjAxOSAoTWFjaW50b3NoKSI+IDx4bXBNTTpEZXJpdmVkRnJvbSBzdFJlZjppbnN0YW5jZUlEPSJ4bXAuaWlkOmViOGFhMDlkLTIxMmYtNDNhMS05YjljLWY1NmRiZDRiYzBiYyIgc3RSZWY6ZG9jdW1lbnRJRD0iYWRvYmU6ZG9jaWQ6cGhvdG9zaG9wOjAxODZjZDVlLTlmN2UtNGU0MC04Yzc0LWY3M2VmNjc4NjAwYyIvPiA8L3JkZjpEZXNjcmlwdGlvbj4gPC9yZGY6UkRGPiA8L3g6eG1wbWV0YT4gPD94cGFja2V0IGVuZD0iciI/PgH//v38+/r5+Pf29fTz8vHw7+7t7Ovq6ejn5uXk4+Lh4N/e3dzb2tnY19bV1NPS0dDPzs3My8rJyMfGxcTDwsHAv769vLu6ubi3trW0s7KxsK+urayrqqmop6alpKOioaCfnp2cm5qZmJeWlZSTkpGQj46NjIuKiYiHhoWEg4KBgH9+fXx7enl4d3Z1dHNycXBvbm1sa2ppaGdmZWRjYmFgX15dXFtaWVhXVlVUU1JRUE9OTUxLSklIR0ZFRENCQUA/Pj08Ozo5ODc2NTQzMjEwLy4tLCsqKSgnJiUkIyIhIB8eHRwbGhkYFxYVFBMSERAPDg0MCwoJCAcGBQQDAgEAACH5BAVkAAIALAAAAAAqABsAAAIyjI+py+0Po5z0gVszukB77mlgWI3kZJ5RqlpYu77wTNf2jee60e1b0PPxhMSi8YhMNgoAIfkEBQoAAgAsFQADAAMADAAAAgeMf6DL7V4AACH5BAUKAAIALBUABgADAAwAAAIHjH+gy+1eAAAh+QQFCgACACwVAAkAAwAMAAACB4x/oMvtXgAAIfkEBQoAAgAsEgAMAAYACQAAAgqMj6nAx+CenJQVACH5BAUKAAIALA8ADwAJAAYAAAIIjI+pCu0PYywAIfkEBQoAAgAsDAASAAwAAwAAAgiEf6HIGoxcAQAh+QQFCgACACwJABIADAADAAACCIR/ocgajFwBACH5BAUKAAIALAYAEgAMAAMAAAIIhH+hyBqMXAEAIfkEBQoAAgAsAwASAAMAAwAAAgOEfwUAIfkEBQoAAgAsAAASAA8AAwAAAgmEjxabDRtcggUAIfkEBQoAAgAsAAASAAwABgAAAg6Ef6HIGoxccvSZSicOBQAh+QQFCgACACwAABIACQAJAAACD5QfeagrGZycVIArL8jYFQA7
""")!

private let GIF_Data: Data = Data(base64Encoded: """
R0lGODlhKgAbAIAAAH98IsrVKCH/C1hNUCBEYXRhWE1QPD94cGFja2V0IGJlZ2luPSLvu78iIGlkPSJXNU0wTXBDZWhpSHpyZVN6TlRjemtjOWQiPz4gPHg6eG1wbWV0YSB4bWxuczp4PSJhZG9iZTpuczptZXRhLyIgeDp4bXB0az0iQWRvYmUgWE1QIENvcmUgNi4wLWMwMDIgNzkuMTY0MzUyLCAyMDIwLzAxLzMwLTE1OjUwOjM4ICAgICAgICAiPiA8cmRmOlJERiB4bWxuczpyZGY9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkvMDIvMjItcmRmLXN5bnRheC1ucyMiPiA8cmRmOkRlc2NyaXB0aW9uIHJkZjphYm91dD0iIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtbG5zOnhtcD0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wLyIgeG1wTU06T3JpZ2luYWxEb2N1bWVudElEPSJ4bXAuZGlkOjM3MTc5N2QwLTlmZWItNDY2Mi04ZWZmLTAzOTkxOTAwMGRmOCIgeG1wTU06RG9jdW1lbnRJRD0ieG1wLmRpZDoxMDAyMkM3QTc0MTMxMUVBOUYyRkQ4MzhBRjM3NkMzMiIgeG1wTU06SW5zdGFuY2VJRD0ieG1wLmlpZDoxMDAyMkM3OTc0MTMxMUVBOUYyRkQ4MzhBRjM3NkMzMiIgeG1wOkNyZWF0b3JUb29sPSJBZG9iZSBQaG90b3Nob3AgQ0MgMjAxOSAoTWFjaW50b3NoKSI+IDx4bXBNTTpEZXJpdmVkRnJvbSBzdFJlZjppbnN0YW5jZUlEPSJ4bXAuaWlkOmIzNzc3N2Q3LTRjMzMtNDJlMC05ZWZjLTViYjY2Njg1ODlhZiIgc3RSZWY6ZG9jdW1lbnRJRD0iYWRvYmU6ZG9jaWQ6cGhvdG9zaG9wOjAxODZjZDVlLTlmN2UtNGU0MC04Yzc0LWY3M2VmNjc4NjAwYyIvPiA8L3JkZjpEZXNjcmlwdGlvbj4gPC9yZGY6UkRGPiA8L3g6eG1wbWV0YT4gPD94cGFja2V0IGVuZD0iciI/PgH//v38+/r5+Pf29fTz8vHw7+7t7Ovq6ejn5uXk4+Lh4N/e3dzb2tnY19bV1NPS0dDPzs3My8rJyMfGxcTDwsHAv769vLu6ubi3trW0s7KxsK+urayrqqmop6alpKOioaCfnp2cm5qZmJeWlZSTkpGQj46NjIuKiYiHhoWEg4KBgH9+fXx7enl4d3Z1dHNycXBvbm1sa2ppaGdmZWRjYmFgX15dXFtaWVhXVlVUU1JRUE9OTUxLSklIR0ZFRENCQUA/Pj08Ozo5ODc2NTQzMjEwLy4tLCsqKSgnJiUkIyIhIB8eHRwbGhkYFxYVFBMSERAPDg0MCwoJCAcGBQQDAgEAACH5BAAAAAAALAAAAAAqABsAAAIyjI+py+0Po5z0gVszukB77mlgWI3kZJ5RqlpYu77wTNf2jee60e1b0PPxhMSi8YhMNgoAOw==
""")!
