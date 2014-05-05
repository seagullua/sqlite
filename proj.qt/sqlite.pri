INCLUDEPATH += $$PWD/../src

CONFIG(debug, debug|release) {
    LIBS += -L$$PWD/bin/debug/ -lsqlite
	PRE_TARGETDEPS += $$PWD/bin/debug/sqlite.lib
} else {
    LIBS += -L$$PWD/bin/release/ -lsqlite
	PRE_TARGETDEPS += $$PWD/bin/release/sqlite.lib
}
