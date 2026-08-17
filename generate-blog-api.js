const fs = require('fs');
const path = require('path');

const apis = [
  { name: 'blog-page', kind: 'singleType', displayName: 'Blog Page', description: 'Content for the main blog listing page', singular: 'blog-page', plural: 'blog-pages', collectionName: 'blog_pages' },
  { name: 'blog-category', kind: 'collectionType', displayName: 'Blog Category', description: 'Categories for blog posts', singular: 'blog-category', plural: 'blog-categories', collectionName: 'blog_categories' },
  { name: 'blog-tag', kind: 'collectionType', displayName: 'Blog Tag', description: 'Tags for blog posts', singular: 'blog-tag', plural: 'blog-tags', collectionName: 'blog_tags' },
  { name: 'blog-post', kind: 'collectionType', displayName: 'Blog Post', description: 'Individual blog articles', singular: 'blog-post', plural: 'blog-posts', collectionName: 'blog_posts' },
  { name: 'blog-comment', kind: 'collectionType', displayName: 'Blog Comment', description: 'Comments on blog posts', singular: 'blog-comment', plural: 'blog-comments', collectionName: 'blog_comments' }
];

apis.forEach(api => {
  const base = path.join(__dirname, 'src', 'api', api.name);
  fs.mkdirSync(path.join(base, 'content-types', api.name), { recursive: true });
  fs.mkdirSync(path.join(base, 'controllers'), { recursive: true });
  fs.mkdirSync(path.join(base, 'routes'), { recursive: true });
  fs.mkdirSync(path.join(base, 'services'), { recursive: true });

  const schema = {
    kind: api.kind,
    collectionName: api.collectionName,
    info: {
      singularName: api.singular,
      pluralName: api.plural,
      displayName: api.displayName,
      description: api.description
    },
    options: {
      draftAndPublish: api.kind === 'collectionType' && api.name !== 'blog-category' && api.name !== 'blog-tag'
    },
    attributes: {}
  };
  
  if (api.name === 'blog-page') {
    schema.attributes = {
      heroTitle: { type: 'string', required: true },
      heroDescription: { type: 'text', required: true },
      heroBackgroundImage: { type: 'media', multiple: false, allowedTypes: ['images'] },
      subscribeTitle: { type: 'string' },
      subscribePlaceholder: { type: 'string' },
      subscribeButtonText: { type: 'string' },
      subscribeDisclaimer: { type: 'text' },
      seo: { type: 'component', repeatable: false, component: 'shared.seo' }
    };
  } else if (api.name === 'blog-category' || api.name === 'blog-tag') {
    schema.attributes = {
      name: { type: 'string', required: true, unique: true },
      slug: { type: 'uid', targetField: 'name', required: true },
      posts: { type: 'relation', relation: api.name === 'blog-category' ? 'oneToMany' : 'manyToMany', target: 'api::blog-post.blog-post', mappedBy: api.name === 'blog-category' ? 'category' : 'tags' }
    };
  } else if (api.name === 'blog-post') {
    schema.attributes = {
      title: { type: 'string', required: true },
      slug: { type: 'uid', targetField: 'title', required: true },
      coverImage: { type: 'media', multiple: false, required: true, allowedTypes: ['images'] },
      date: { type: 'date', required: true },
      excerpt: { type: 'text', required: true },
      content: { type: 'blocks', required: true },
      category: { type: 'relation', relation: 'manyToOne', target: 'api::blog-category.blog-category', inversedBy: 'posts' },
      tags: { type: 'relation', relation: 'manyToMany', target: 'api::blog-tag.blog-tag', inversedBy: 'posts' },
      comments: { type: 'relation', relation: 'oneToMany', target: 'api::blog-comment.blog-comment', mappedBy: 'post' },
      seo: { type: 'component', repeatable: false, component: 'shared.seo' }
    };
  } else if (api.name === 'blog-comment') {
    schema.attributes = {
      name: { type: 'string', required: true },
      email: { type: 'email', required: true },
      website: { type: 'string' },
      message: { type: 'text', required: true },
      approved: { type: 'boolean', default: false },
      post: { type: 'relation', relation: 'manyToOne', target: 'api::blog-post.blog-post', inversedBy: 'comments' }
    };
  }

  fs.writeFileSync(path.join(base, 'content-types', api.name, 'schema.json'), JSON.stringify(schema, null, 2));

  const tsContent = `import { factories } from '@strapi/strapi';\n\nexport default factories.createCoreX('api::${api.name}.${api.name}' as any);\n`;
  
  fs.writeFileSync(path.join(base, 'controllers', `${api.name}.ts`), tsContent.replace('createCoreX', 'createCoreController'));
  fs.writeFileSync(path.join(base, 'routes', `${api.name}.ts`), tsContent.replace('createCoreX', 'createCoreRouter'));
  fs.writeFileSync(path.join(base, 'services', `${api.name}.ts`), tsContent.replace('createCoreX', 'createCoreService'));
});
console.log('All blog schemas generated successfully!');
