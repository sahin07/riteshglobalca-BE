const { Client } = require('pg');

const client = new Client({
  host: '127.0.0.1',
  port: 5432,
  database: 'RR',
  user: 'postgres',
  password: 'new_password',
});

async function run() {
  await client.connect();
  console.log('Connected to Postgres');

  // Delete layout settings
  const res = await client.query(`
    DELETE FROM strapi_core_store_settings 
    WHERE key LIKE '%api::career.career%' OR key LIKE '%api::job.job%'
  `);
  console.log('Deleted layout settings rows:', res.rowCount);

  // Check jobs table data to see if any have null title or jobType
  try {
    const jobs = await client.query(`SELECT * FROM jobs`);
    console.log('Jobs:', jobs.rows);
  } catch (err) {
    console.log('Jobs table not found or error:', err.message);
  }

  await client.end();
}

run().catch(console.error);
