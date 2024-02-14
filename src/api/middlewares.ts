import type { MiddlewaresConfig } from "@medusajs/medusa";
import type { MedusaNextFunction, MedusaRequest } from "@medusajs/medusa";

const adminMiddleware = (req: MedusaRequest, next: MedusaNextFunction) => {
	req.headers["access-control-allow-origin"] = process.env.ADMIN_CORS;

	next();
};

export const config = {
	routes: [
		{
			matcher: "/admin/*",
			middlewares: [adminMiddleware],
		},
	],
} satisfies MiddlewaresConfig;
