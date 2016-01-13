module.exports = function(grunt) {

  grunt.loadNpmTasks('grunt-trimtrailingspaces');
  grunt.loadNpmTasks('grunt-githooks');

  grunt.initConfig({

    trimtrailingspaces: {
      main: {
        src: ['**/*.tex'],
        options: {
          filter: 'isFile',
          encoding: 'utf8',
          failIfTrimmed: false
        },
      },
    },

    githooks: {
      all: {
        'pre-commit': 'trimtrailingspaces',
      },
    },

  });

  grunt.registerTask('default', ['trimtrailingspaces']);

};
