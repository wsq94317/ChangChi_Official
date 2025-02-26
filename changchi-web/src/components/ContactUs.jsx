function ContactUs() {
    const socials = [
      { name: 'Facebook', url: '#' },
      { name: 'X', url: '#' },
      { name: 'Instagram', url: '#' },
      { name: 'Xiaohongshu', url: '#' },
      { name: 'TikTok', url: '#' },
      { name: 'YouTube', url: '#' },
    ];
  
    return (
      <div className="bg-gray-200 py-8 text-center">
        <h2 className="text-2xl font-bold mb-4">Contact Us</h2>
        <div className="flex justify-center gap-6">
          {socials.map((social) => (
            <a
              key={social.name}
              href={social.url}
              className="text-yellow-600 hover:text-yellow-800 text-lg"
            >
              {social.name}
            </a>
          ))}
        </div>
      </div>
    );
  }
  
  export default ContactUs;