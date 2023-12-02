import { ReactNode } from "react";
import { Control, FieldError, FieldErrorsImpl, FieldValues, Merge, UseControllerProps } from "react-hook-form";

export interface SelectInputProps extends UseControllerProps {
  label?: string;
  name: string;
  control: Control<FieldValues>;
  error: string | FieldError | Merge<FieldError, FieldErrorsImpl<any>> | undefined;
  children: ReactNode;
}
