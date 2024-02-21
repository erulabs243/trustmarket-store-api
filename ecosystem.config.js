module.exports = {
	apps: [
		{
			name: "trustmarket",
			script: "bun",
			automation: false,
			args: "start --port 7112",
			env: {
				NODE_ENV: "development",
			},
			env_production: {
				NODE_ENV: "production",
			},
		},
	],
};
