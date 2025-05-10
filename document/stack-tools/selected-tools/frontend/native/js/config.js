// Base configuration to load the general service
const config = {
    serviceUrl: 'https://api.example.com', // Replace with your service base URL
    timeout: 5000, // Request timeout in milliseconds
    headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
    },
};

export default config;