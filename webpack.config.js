module.exports = {
    mode: 'development',
    entry: './src/index.ts',
    devServer: {
        static: {
            directory: './'
        }
    }
}
