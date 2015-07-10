module.exports = function(grunt) {

  grunt.loadNpmTasks('grunt-trimtrailingspaces');

  grunt.initConfig({

    trimtrailingspaces: {
      main: {
        src: ['**/*.tex'],
        options: {
          filter: 'isFile',
          encoding: 'utf8',
          failIfTrimmed: false
        }
      }
    }

  });

   grunt.registerTask('default', ['trimtrailingspaces']);

};
