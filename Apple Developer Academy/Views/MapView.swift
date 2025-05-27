import SwiftUI

struct MapView: View {
    @State private var currentScale: CGFloat = 1.0
    @State private var lastScale: CGFloat = 1.0
    @State private var offset: CGSize = .zero
    @State private var lastOffset: CGSize = .zero
    @State private var pinchLocation: CGPoint = .zero
    @State private var isPinching: Bool = false

    var body: some View {
        GeometryReader { geometry in
            Image("map") // Replace with your image asset
                .resizable()
                .scaledToFit()
                .scaleEffect(currentScale)
                .offset(offset)
                .gesture(
                    MagnificationGesture()
                        .onChanged { value in
                            if !isPinching {
                                isPinching = true
                            }

                            let scaleDelta = value / lastScale
                            currentScale *= scaleDelta
                            
                            // Calculate new offset based on pinch location
                            let pinchOffsetX = (1 - scaleDelta) * (pinchLocation.x - geometry.size.width / 2)
                            let pinchOffsetY = (1 - scaleDelta) * (pinchLocation.y - geometry.size.height / 2)

                            offset.width += pinchOffsetX
                            offset.height += pinchOffsetY

                            lastScale = value
                        }
                        .onEnded { _ in
                            lastScale = 1.0
                            isPinching = false
                        }
                )
                .simultaneousGesture(
                    DragGesture()
                        .onChanged { gesture in
                            if !isPinching { // Allow dragging only if not pinching
                                offset = CGSize(
                                    width: lastOffset.width + gesture.translation.width,
                                    height: lastOffset.height + gesture.translation.height
                                )
                            }
                        }
                        .onEnded { _ in
                            lastOffset = offset
                        }
                )
                .simultaneousGesture(
                    TapGesture(count: 2)
                        .onEnded {
                            // Reset zoom and offset on double tap
                            withAnimation {
                                currentScale = 1.0
                                offset = .zero
                                lastOffset = .zero
                            }
                        }
                )
                .background(
                    GeometryReader { proxy in
                        Color.clear
                            .gesture(
                                DragGesture(minimumDistance: 0) // Detect the tap/pinch location dynamically
                                    .onChanged { gesture in
                                        pinchLocation = gesture.location
                                    }
                            )
                    }
                )
                .frame(width: geometry.size.width, height: geometry.size.height)
        }
        .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    MapView()
}
