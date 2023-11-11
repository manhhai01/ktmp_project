import { axiosClient, updateClient } from "../../api/axiosClient";

export const apiListProductBySearch = (params) => {
  return axiosClient.get(`product?${params}`);
};

export const apiRemoveProduct = (idProduct) => {
  return updateClient.delete(`product/${idProduct}`);
};
