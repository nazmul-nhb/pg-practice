// @ts-check

import { defineScriptConfig } from 'nhb-scripts';

export default defineScriptConfig({
    format: {
        args: ['--write'],
        files: ['.'],
        ignorePath: '.prettierignore',
    },
    commit: {
        runFormatter: false,
        emojiBeforePrefix: true,
    },
    count: {
        defaultPath: '.',
        excludePaths: ['node_modules'],
    },
});
