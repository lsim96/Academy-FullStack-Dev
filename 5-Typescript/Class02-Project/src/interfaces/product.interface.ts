export interface Product {
  title: string;
  stock: number;
  price: number;
  id: string;
}

export interface CreateProductReq {
  title: string;
  stock: number;
  price: number;
}

export interface UpdateProductRequest extends Partial<CreateProductReq> {}
