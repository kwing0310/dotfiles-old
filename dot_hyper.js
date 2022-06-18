"use strict";

module.exports = {
    config: {
        updateChannel: 'stable',
        fontSize: 14,
        fontFamily: '"Ricty Diminished", monospace',
        fontWeight: 'normal',
        fontWeightBold: 'bold',
        lineHeight: 1,
        letterSpacing: 0,
        cursorShape: 'BLOCK',
        cursorBlink: true,
        padding: '12px 14px',
        shellArgs: ['--login'],
        env: {},
        bell: 'SOUND',
        copyOnSelect: false,
        defaultSSHApp: true,
        quickEdit: false,
        macOptionSelectionMode: 'vertical',
        webGLRenderer: true,
        webLinksActivationKey: '',
        disableLigatures: true,
        disableAutoUpdates: false,
        screenReaderMode: false,
        preserveCWD: true,
    },

    plugins: [
      "hyper-iceberg"
    ],
};
