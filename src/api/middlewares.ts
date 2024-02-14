import type { MiddlewaresConfig } from "@medusajs/medusa";
import type {
	MedusaNextFunction,
	MedusaRequest,
	MedusaResponse,
} from "@medusajs/medusa";

const adminMiddleware = (
	req: MedusaRequest,
	res: MedusaResponse,
	next: MedusaNextFunction,
) => {
	req.headers["access-control-allow-origin"] = process.env.ADMIN_CORS;
	res.setHeader("access-control-allow-origin", process.env.ADMIN_CORS);

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
