import type { Core } from '@strapi/strapi';
import { googleReviewsSeed } from './seed/google-reviews';

const GOOGLE_REVIEW_UID = 'api::google-review.google-review' as any;
const GOOGLE_REVIEWS_SEEDED_KEY = 'google_reviews_seeded';

// Runs once per database; the flag prevents re-adding reviews that an admin later deletes.
async function seedGoogleReviews(strapi: Core.Strapi) {
  const alreadySeeded = await strapi.store.get({ type: 'core', key: GOOGLE_REVIEWS_SEEDED_KEY });
  if (alreadySeeded) return;

  const existing = await strapi.documents(GOOGLE_REVIEW_UID).count({});
  if (existing === 0) {
    for (const data of googleReviewsSeed) {
      await strapi.documents(GOOGLE_REVIEW_UID).create({ data: data as any, status: 'published' });
    }
    strapi.log.info(`Seeded ${googleReviewsSeed.length} Google reviews`);
  }

  await strapi.store.set({ type: 'core', key: GOOGLE_REVIEWS_SEEDED_KEY, value: true });
}

async function ensurePublicPermissions(strapi: Core.Strapi) {
  const publicRole = await strapi.db.query('plugin::users-permissions.role').findOne({
    where: { type: 'public' },
  });
  if (!publicRole) return;

  const ensurePermission = async (action: string) => {
    const existing = await strapi.db.query('plugin::users-permissions.permission').findOne({
      where: { action, role: publicRole.id },
    });
    if (existing) return;
    await strapi.db.query('plugin::users-permissions.permission').create({
      data: { action, role: publicRole.id },
    });
  };

  await ensurePermission('api::contact-request.contact-request.create');
  await ensurePermission('api::footer.footer.find');
  await ensurePermission('api::header.header.find');
  await ensurePermission('api::google-review.google-review.find');
  await ensurePermission('api::google-reviews-setting.google-reviews-setting.find');
}

export default {
  register(/* { strapi }: { strapi: Core.Strapi } */) {},

  async bootstrap({ strapi }: { strapi: Core.Strapi }) {
    try {
      await ensurePublicPermissions(strapi);
    } catch (err: any) {
      strapi.log.error('Failed to set public permissions:', err.message || err);
    }

    try {
      await seedGoogleReviews(strapi);
    } catch (err: any) {
      strapi.log.error('Failed to seed Google reviews:', err.message || err);
    }
  },
};
