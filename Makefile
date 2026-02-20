.PHONY: generate build test lint ci clean

generate:
	tuist generate

build: generate
	xcodebuild -workspace Pulse.xcworkspace -scheme Pulse -destination 'platform=iOS Simulator,name=iPhone 17' build | xcbeautify

test: generate
	xcodebuild -workspace Pulse.xcworkspace -scheme Pulse -destination 'platform=iOS Simulator,name=iPhone 17' test | xcbeautify

lint:
	swiftlint lint

ci: lint test

clean:
	rm -rf Derived DerivedData
