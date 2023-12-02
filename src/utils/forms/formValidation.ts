import * as y from "yup";

export const FormValidationSchema = y.object({
  name: y.string().nonNullable().required("Name is required"),
  sector: y.string().required("Sector is Required").nonNullable(),
  term: y.bool().required("You need to acept the terms"),
});
