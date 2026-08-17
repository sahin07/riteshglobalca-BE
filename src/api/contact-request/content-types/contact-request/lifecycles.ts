export default {
  // Email sending temporarily disabled to prevent ECONNREFUSED errors
  /*
  async afterCreate(event) {
    const { result } = event;
    
    try {
      await strapi.plugin('email').service('email').send({
        to: 'admin@riteshglobalca.com',
        from: 'no-reply@riteshglobalca.com',
        subject: `New Contact Form Submission: ${result.fullName}`,
        text: `
          New form submission received:
          
          Name: ${result.fullName}
          Email: ${result.email}
          Phone: ${result.phone}
          Service Interest: ${result.serviceInterest || 'N/A'}
          
          Message: 
          ${result.message}
        `,
        html: `
          <div style="font-family: sans-serif; max-width: 600px; margin: 0 auto;">
            <h3 style="color: #f28e2b;">New Contact Form Submission</h3>
            <p>You have received a new contact request from the website.</p>
            <table style="width: 100%; border-collapse: collapse; margin-top: 15px;">
              <tr><td style="padding: 8px; border-bottom: 1px solid #eee;"><strong>Name:</strong></td><td style="padding: 8px; border-bottom: 1px solid #eee;">${result.fullName}</td></tr>
              <tr><td style="padding: 8px; border-bottom: 1px solid #eee;"><strong>Email:</strong></td><td style="padding: 8px; border-bottom: 1px solid #eee;">${result.email}</td></tr>
              <tr><td style="padding: 8px; border-bottom: 1px solid #eee;"><strong>Phone:</strong></td><td style="padding: 8px; border-bottom: 1px solid #eee;">${result.phone}</td></tr>
              <tr><td style="padding: 8px; border-bottom: 1px solid #eee;"><strong>Service Interest:</strong></td><td style="padding: 8px; border-bottom: 1px solid #eee;">${result.serviceInterest || 'N/A'}</td></tr>
            </table>
            <div style="margin-top: 20px; background: #f8f9fa; padding: 15px; border-left: 4px solid #f28e2b;">
              <p style="margin: 0;"><strong>Message:</strong></p>
              <p style="margin-top: 5px; white-space: pre-wrap;">${result.message}</p>
            </div>
          </div>
        `,
      });
      console.log('Successfully sent contact notification email to admin@riteshglobalca.com');
    } catch (err) {
      console.error('Error sending email notification for contact request:', err);
    }
  },
  */
};
