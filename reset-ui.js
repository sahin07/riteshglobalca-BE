const db = require('better-sqlite3')('.tmp/data.db');
db.prepare("DELETE FROM strapi_core_store_settings WHERE key LIKE '%api::career.career%' OR key LIKE '%api::job.job%'").run();
console.log('Deleted layout settings!');
