import type { Core } from '@strapi/strapi';

export default {
  register(/* { strapi }: { strapi: Core.Strapi } */) {},

  async bootstrap({ strapi }: { strapi: Core.Strapi }) {
    try {
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
    } catch (err: any) {
      strapi.log.error('Failed to set public permissions:', err.message || err);
    }
  },
};
