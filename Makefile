ifeq (.private,$(wildcard .private))
PRIVATE = 1
endif

PLATFORM_IOS = iOS Simulator,name=iPhone 13 Pro,OS=15.0

test:
	@xcodebuild test \
		-workspace App.xcworkspace \
		-scheme Staging \
		-destination platform="$(PLATFORM_IOS)"

format:
	@swift format \
		--ignore-unparsable-files \
		--in-place \
		--recursive \
		./App/ \
		./Package.swift \
		./Sources/

open:
	open App.xcworkspace/