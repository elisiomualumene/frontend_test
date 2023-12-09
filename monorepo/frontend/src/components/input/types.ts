import { InputHTMLAttributes } from "react";
import {
  Control,
  FieldError,
  FieldErrorsImpl,
  FieldValues,
  Merge,
} from "react-hook-form";

export interface IInputProps extends InputHTMLAttributes<HTMLInputElement> {
  label?: string;
  error:
    | string
    | FieldError
    | Merge<FieldError, FieldErrorsImpl<any>>
    | undefined;
  control: Control<FieldValues>;
  name: string;
}
