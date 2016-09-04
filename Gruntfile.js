module.exports = function(grunt) {

	 var message = grunt.option('m') || 'commit';  // РЎРѕРѕР±С‰РµРЅРёРµ РєРѕРјРјРёС‚Р°, РёСЃРїРѕР»СЊР·РѕРІР°РЅРёРµ:
                                                // gtunt --m="commit message goes here"

  grunt.initConfig({
  clean: ["vqmod/logs/*", "vqmod/vqcache/*", "vqmod/checked.cache", "vqmod/mods.cache"],
	dploy: {                                    // Task
        stage: {                                    // Target
            host: "jm000.ftp.ukraine.com.ua",            // Your FTP host
            user: "jm000_ftp",                        // Your FTP user
            pass: "W8hVGUDH",             // Your FTP secret-password
            exclude: ["Gruntfile.js", "package.json", "node_modules/*", ".DS_Store", "dev/", "dev/*", ".htaccess", "wp-config.php","config.php","admin/config.php", ".gitignore"],
            path: {
                local: "",               // The local folder that you want to upload
                remote: "/jm.biz.ua/specservice/"          // Where the files from the local file will be uploaded at in your remote server
            }
        }
    },
	gitcommit: {
      task:{
        options: {
          message: message,
          noVerify: false,
          noStatus: false,
          verbose: false
        },
        files:{
          src: ['.']
        }
      }
    },
    gitpull: {
      task: {
        options: {
          verbose: true
        }
      }
    },
    gitpush: {
      task: {
        options: {
          verbose: true
        }
      }
    },
  });

  grunt.loadNpmTasks('grunt-dploy');
  grunt.loadNpmTasks('grunt-git');
  grunt.loadNpmTasks('grunt-contrib-clean');

  // РЈРєР°Р·С‹РІР°РµРј, РєР°РєРёРµ Р·Р°РґР°С‡Рё РІС‹РїРѕР»РЅСЏСЋС‚СЃСЏ, РєРѕРіРґР° РјС‹ РІРІРѕРґРёРј В«gruntВ» РІ С‚РµСЂРјРёРЅР°Р»Рµ
  grunt.registerTask('default', ['clean', 'gitcommit', 'gitpull', 'gitpush', 'dploy']);
};