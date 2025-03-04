/*
 * Copyright (c) 2020 Ubique Innovation AG <https://www.ubique.ch>
 *
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at https://mozilla.org/MPL/2.0/.
 *
 * SPDX-License-Identifier: MPL-2.0
 */

import Foundation

public struct ExposureEvent: Codable {
    public let checkinId: String
    public let arrivalTime: Date
    public let departureTime: Date
    public let message: String
}

extension ExposureEvent: Equatable {
    public static func == (_ lhs: ExposureEvent, _ rhs: ExposureEvent) -> Bool {
        return lhs.checkinId == rhs.checkinId
    }
}
