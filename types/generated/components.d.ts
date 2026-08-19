import type { Schema, Struct } from '@strapi/strapi';

export interface AboutCoreValue extends Struct.ComponentSchema {
  collectionName: 'components_about_core_values';
  info: {
    description: 'Mission, Vision, or Value card';
    displayName: 'Core Value';
    icon: 'heart';
  };
  attributes: {
    description: Schema.Attribute.Text & Schema.Attribute.Required;
    iconImage: Schema.Attribute.Media<'images'>;
    title: Schema.Attribute.String & Schema.Attribute.Required;
  };
}

export interface AboutMilestone extends Struct.ComponentSchema {
  collectionName: 'components_about_milestones';
  info: {
    description: 'A timeline milestone';
    displayName: 'Milestone';
    icon: 'clock';
  };
  attributes: {
    description: Schema.Attribute.Text & Schema.Attribute.Required;
    yearTitle: Schema.Attribute.String & Schema.Attribute.Required;
  };
}

export interface AboutTeamMember extends Struct.ComponentSchema {
  collectionName: 'components_about_team_members';
  info: {
    description: 'Leadership team member';
    displayName: 'Team Member';
    icon: 'user';
  };
  attributes: {
    biography: Schema.Attribute.RichText;
    image: Schema.Attribute.Media<'images'> & Schema.Attribute.Required;
    keyExpertise: Schema.Attribute.JSON;
    linkedInUrl: Schema.Attribute.String;
    name: Schema.Attribute.String & Schema.Attribute.Required;
    role: Schema.Attribute.Text & Schema.Attribute.Required;
    twitterUrl: Schema.Attribute.String;
  };
}

export interface HomeBulletPoint extends Struct.ComponentSchema {
  collectionName: 'components_home_bullet_points';
  info: {
    description: 'Simple text bullet point for lists';
    displayName: 'Bullet Point';
    icon: 'check';
  };
  attributes: {
    text: Schema.Attribute.String & Schema.Attribute.Required;
  };
}

export interface HomeFeaturedInsight extends Struct.ComponentSchema {
  collectionName: 'components_home_featured_insights';
  info: {
    description: 'Featured blog post or update on the home page';
    displayName: 'Featured Insight';
    icon: 'book';
  };
  attributes: {
    categoryOrDate: Schema.Attribute.String & Schema.Attribute.Required;
    description: Schema.Attribute.Text & Schema.Attribute.Required;
    image: Schema.Attribute.Media<'images'> & Schema.Attribute.Required;
    linkUrl: Schema.Attribute.String & Schema.Attribute.Required;
    title: Schema.Attribute.String & Schema.Attribute.Required;
  };
}

export interface HomeFeaturedService extends Struct.ComponentSchema {
  collectionName: 'components_home_featured_services';
  info: {
    description: 'A service card displayed on the home page';
    displayName: 'Featured Service';
    icon: 'briefcase';
  };
  attributes: {
    description: Schema.Attribute.Text & Schema.Attribute.Required;
    image: Schema.Attribute.Media<'images'> & Schema.Attribute.Required;
    linkText: Schema.Attribute.String &
      Schema.Attribute.DefaultTo<'Learn More'>;
    linkUrl: Schema.Attribute.String & Schema.Attribute.Required;
    title: Schema.Attribute.String & Schema.Attribute.Required;
  };
}

export interface HomeStat extends Struct.ComponentSchema {
  collectionName: 'components_home_stats';
  info: {
    description: 'Statistics like 10+ Years Experience';
    displayName: 'Stat';
    icon: 'chart-line';
  };
  attributes: {
    label: Schema.Attribute.String & Schema.Attribute.Required;
    number: Schema.Attribute.String & Schema.Attribute.Required;
  };
}

export interface HomeTestimonial extends Struct.ComponentSchema {
  collectionName: 'components_home_testimonials';
  info: {
    description: 'Client testimonial card';
    displayName: 'Testimonial';
    icon: 'quote-right';
  };
  attributes: {
    authorImage: Schema.Attribute.Media<'images'>;
    authorName: Schema.Attribute.String & Schema.Attribute.Required;
    authorRole: Schema.Attribute.String;
    rating: Schema.Attribute.Integer &
      Schema.Attribute.Required &
      Schema.Attribute.SetMinMax<
        {
          max: 5;
          min: 1;
        },
        number
      > &
      Schema.Attribute.DefaultTo<5>;
    text: Schema.Attribute.Text & Schema.Attribute.Required;
  };
}

export interface NewsletterFeature extends Struct.ComponentSchema {
  collectionName: 'components_newsletter_features';
  info: {
    description: 'Newsletter feature item';
    displayName: 'Feature';
    icon: 'star';
  };
  attributes: {
    description: Schema.Attribute.Text & Schema.Attribute.Required;
    icon: Schema.Attribute.String & Schema.Attribute.Required;
    linkText: Schema.Attribute.String;
    linkUrl: Schema.Attribute.String;
    title: Schema.Attribute.String & Schema.Attribute.Required;
  };
}

export interface PricingAddon extends Struct.ComponentSchema {
  collectionName: 'components_pricing_addons';
  info: {
    displayName: 'Addon';
    icon: 'plus';
  };
  attributes: {
    description: Schema.Attribute.Text & Schema.Attribute.Required;
    icon: Schema.Attribute.String & Schema.Attribute.Required;
    name: Schema.Attribute.String & Schema.Attribute.Required;
  };
}

export interface PricingFaq extends Struct.ComponentSchema {
  collectionName: 'components_pricing_faqs';
  info: {
    displayName: 'FAQ';
    icon: 'question';
  };
  attributes: {
    answer: Schema.Attribute.Text & Schema.Attribute.Required;
    question: Schema.Attribute.String & Schema.Attribute.Required;
  };
}

export interface PricingFeature extends Struct.ComponentSchema {
  collectionName: 'components_pricing_features';
  info: {
    displayName: 'Feature';
    icon: 'bulletList';
  };
  attributes: {
    text: Schema.Attribute.String & Schema.Attribute.Required;
  };
}

export interface PricingFeatureComparison extends Struct.ComponentSchema {
  collectionName: 'components_pricing_feature_comparisons';
  info: {
    displayName: 'Feature Comparison';
    icon: 'layerGroup';
  };
  attributes: {
    basicValue: Schema.Attribute.String;
    featureName: Schema.Attribute.String & Schema.Attribute.Required;
    premiumValue: Schema.Attribute.String;
    standardValue: Schema.Attribute.String;
  };
}

export interface PricingPackage extends Struct.ComponentSchema {
  collectionName: 'components_pricing_packages';
  info: {
    displayName: 'Package';
    icon: 'shoppingCart';
  };
  attributes: {
    badge: Schema.Attribute.String;
    billingPeriod: Schema.Attribute.String & Schema.Attribute.Required;
    ctaLink: Schema.Attribute.String;
    ctaText: Schema.Attribute.String & Schema.Attribute.Required;
    features: Schema.Attribute.Component<'pricing.feature', true>;
    name: Schema.Attribute.String & Schema.Attribute.Required;
    price: Schema.Attribute.Integer & Schema.Attribute.Required;
  };
}

export interface PricingServicePricing extends Struct.ComponentSchema {
  collectionName: 'components_pricing_service_pricings';
  info: {
    displayName: 'Service Pricing';
    icon: 'briefcase';
  };
  attributes: {
    icon: Schema.Attribute.String & Schema.Attribute.Required;
    name: Schema.Attribute.String & Schema.Attribute.Required;
    priceInfo: Schema.Attribute.String & Schema.Attribute.Required;
  };
}

export interface ServiceContactCta extends Struct.ComponentSchema {
  collectionName: 'components_service_contact_ctas';
  info: {
    description: 'A call to action section with contact info and a form';
    displayName: 'Contact CTA';
  };
  attributes: {
    backgroundImage: Schema.Attribute.Media<'images'>;
    email: Schema.Attribute.String;
    phone: Schema.Attribute.String;
    subtitle: Schema.Attribute.Text;
    title: Schema.Attribute.String;
  };
}

export interface ServiceFeatureCard extends Struct.ComponentSchema {
  collectionName: 'components_service_feature_cards';
  info: {
    description: 'A card with title, description, and list of points';
    displayName: 'Feature Card';
  };
  attributes: {
    description: Schema.Attribute.Text;
    points: Schema.Attribute.JSON;
    title: Schema.Attribute.String & Schema.Attribute.Required;
  };
}

export interface ServiceFeatureGrid extends Struct.ComponentSchema {
  collectionName: 'components_service_feature_grids';
  info: {
    description: 'A section with a title and a grid of feature cards';
    displayName: 'Feature Grid';
  };
  attributes: {
    cards: Schema.Attribute.Component<'service.feature-card', true>;
    sectionSubtitle: Schema.Attribute.Text;
    sectionTitle: Schema.Attribute.String;
  };
}

export interface ServiceProcessSection extends Struct.ComponentSchema {
  collectionName: 'components_service_process_sections';
  info: {
    description: 'A section containing tabbed process steps';
    displayName: 'Process Section';
  };
  attributes: {
    subtitle: Schema.Attribute.Text;
    tabs: Schema.Attribute.Component<'service.process-tab', true>;
    title: Schema.Attribute.String;
  };
}

export interface ServiceProcessStep extends Struct.ComponentSchema {
  collectionName: 'components_service_process_steps';
  info: {
    description: 'A single step in a process journey';
    displayName: 'Process Step';
  };
  attributes: {
    description: Schema.Attribute.Text;
    title: Schema.Attribute.String & Schema.Attribute.Required;
  };
}

export interface ServiceProcessTab extends Struct.ComponentSchema {
  collectionName: 'components_service_process_tabs';
  info: {
    description: 'A tab containing process steps';
    displayName: 'Process Tab';
  };
  attributes: {
    steps: Schema.Attribute.Component<'service.process-step', true>;
    tab_image: Schema.Attribute.Media<'images'>;
    tabName: Schema.Attribute.String & Schema.Attribute.Required;
  };
}

export interface ServiceRichTextSection extends Struct.ComponentSchema {
  collectionName: 'components_service_rich_text_sections';
  info: {
    description: 'A section containing rich text, useful for tables or unstructured content';
    displayName: 'Rich Text Section';
  };
  attributes: {
    content: Schema.Attribute.RichText;
    title: Schema.Attribute.String;
  };
}

export interface ServiceRichTextTab extends Struct.ComponentSchema {
  collectionName: 'components_service_rich_text_tabs';
  info: {
    description: 'A tab containing rich text content like tables or paragraphs';
    displayName: 'Rich Text Tab';
  };
  attributes: {
    content: Schema.Attribute.RichText;
    tabName: Schema.Attribute.String & Schema.Attribute.Required;
  };
}

export interface ServiceTabbedRichText extends Struct.ComponentSchema {
  collectionName: 'components_service_tabbed_rich_texts';
  info: {
    description: 'A section containing tabs, each with rich text content';
    displayName: 'Tabbed Rich Text Section';
  };
  attributes: {
    subtitle: Schema.Attribute.Text;
    tabs: Schema.Attribute.Component<'service.rich-text-tab', true>;
    title: Schema.Attribute.String;
  };
}

export interface ServiceTabbedTableSection extends Struct.ComponentSchema {
  collectionName: 'components_service_tabbed_table_sections';
  info: {
    description: 'A section with tabs, where each tab displays a specific table';
    displayName: 'Tabbed Table Section';
    icon: 'layer';
  };
  attributes: {
    description: Schema.Attribute.Text;
    tabs: Schema.Attribute.Component<'service.table-tab', true>;
    title: Schema.Attribute.String;
  };
}

export interface ServiceTableSection extends Struct.ComponentSchema {
  collectionName: 'components_service_table_sections';
  info: {
    description: 'A table format section allowing columns and rows without raw HTML';
    displayName: 'Table Section';
    icon: 'apps';
  };
  attributes: {
    description: Schema.Attribute.String;
    headers: Schema.Attribute.Component<'shared.table-cell', true>;
    rows: Schema.Attribute.Component<'shared.table-row', true>;
    title: Schema.Attribute.String;
  };
}

export interface ServiceTableTab extends Struct.ComponentSchema {
  collectionName: 'components_service_table_tabs';
  info: {
    description: 'A tab containing a structured table';
    displayName: 'Table Tab';
    icon: 'folder';
  };
  attributes: {
    headers: Schema.Attribute.Component<'shared.table-cell', true>;
    rows: Schema.Attribute.Component<'shared.table-row', true>;
    tabName: Schema.Attribute.String & Schema.Attribute.Required;
  };
}

export interface SharedLink extends Struct.ComponentSchema {
  collectionName: 'components_shared_links';
  info: {
    description: '';
    displayName: 'Link';
    icon: 'link';
  };
  attributes: {
    label: Schema.Attribute.String & Schema.Attribute.Required;
    url: Schema.Attribute.String & Schema.Attribute.Required;
  };
}

export interface SharedMetaSocial extends Struct.ComponentSchema {
  collectionName: 'components_shared_meta_socials';
  info: {
    description: '';
    displayName: 'metaSocial';
    icon: 'share';
  };
  attributes: {
    description: Schema.Attribute.Text & Schema.Attribute.Required;
    image: Schema.Attribute.Media<'images'>;
    socialNetwork: Schema.Attribute.Enumeration<['Facebook', 'Twitter']> &
      Schema.Attribute.Required;
    title: Schema.Attribute.String & Schema.Attribute.Required;
  };
}

export interface SharedSeo extends Struct.ComponentSchema {
  collectionName: 'components_shared_seos';
  info: {
    description: '';
    displayName: 'seo';
    icon: 'search';
  };
  attributes: {
    backgroundImage: Schema.Attribute.Media<
      'images' | 'files' | 'videos' | 'audios'
    >;
    canonicalURL: Schema.Attribute.String;
    keywords: Schema.Attribute.Text;
    metaDescription: Schema.Attribute.Text & Schema.Attribute.Required;
    metaImage: Schema.Attribute.Media<'images'>;
    metaRobots: Schema.Attribute.String;
    metaSocial: Schema.Attribute.Component<'shared.meta-social', true>;
    metaTitle: Schema.Attribute.String & Schema.Attribute.Required;
  };
}

export interface SharedTableCell extends Struct.ComponentSchema {
  collectionName: 'components_shared_table_cells';
  info: {
    description: '';
    displayName: 'Table Cell';
    icon: 'font';
  };
  attributes: {
    text: Schema.Attribute.String & Schema.Attribute.Required;
  };
}

export interface SharedTableRow extends Struct.ComponentSchema {
  collectionName: 'components_shared_table_rows';
  info: {
    description: '';
    displayName: 'Table Row';
    icon: 'bars';
  };
  attributes: {
    cells: Schema.Attribute.Component<'shared.table-cell', true>;
  };
}

declare module '@strapi/strapi' {
  export module Public {
    export interface ComponentSchemas {
      'about.core-value': AboutCoreValue;
      'about.milestone': AboutMilestone;
      'about.team-member': AboutTeamMember;
      'home.bullet-point': HomeBulletPoint;
      'home.featured-insight': HomeFeaturedInsight;
      'home.featured-service': HomeFeaturedService;
      'home.stat': HomeStat;
      'home.testimonial': HomeTestimonial;
      'newsletter.feature': NewsletterFeature;
      'pricing.addon': PricingAddon;
      'pricing.faq': PricingFaq;
      'pricing.feature': PricingFeature;
      'pricing.feature-comparison': PricingFeatureComparison;
      'pricing.package': PricingPackage;
      'pricing.service-pricing': PricingServicePricing;
      'service.contact-cta': ServiceContactCta;
      'service.feature-card': ServiceFeatureCard;
      'service.feature-grid': ServiceFeatureGrid;
      'service.process-section': ServiceProcessSection;
      'service.process-step': ServiceProcessStep;
      'service.process-tab': ServiceProcessTab;
      'service.rich-text-section': ServiceRichTextSection;
      'service.rich-text-tab': ServiceRichTextTab;
      'service.tabbed-rich-text': ServiceTabbedRichText;
      'service.tabbed-table-section': ServiceTabbedTableSection;
      'service.table-section': ServiceTableSection;
      'service.table-tab': ServiceTableTab;
      'shared.link': SharedLink;
      'shared.meta-social': SharedMetaSocial;
      'shared.seo': SharedSeo;
      'shared.table-cell': SharedTableCell;
      'shared.table-row': SharedTableRow;
    }
  }
}
