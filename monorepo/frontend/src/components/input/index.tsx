import { Controller } from "react-hook-form";
import { IInputProps } from "./types";

export const Input = ({
  label,
  error,
  control,
  name,
  ...rest
}: IInputProps) => {
  return (
    <div className="flex flex-col">
      {label && <label className="font-bold indent-2 mb-2">{label}</label>}
      <Controller
        name={name}
        control={control}
        render={({ field: { ref, value, onChange, onBlur } }) => (
          <input
            ref={ref}
            value={value || ""}
            onChange={onChange}
            onBlur={onBlur}
            className="w-full border outline-none border-[#C5CACF] font-bold rounded-xl min-h-[50px] indent-2"
            {...rest}
          />
        )}
      />

      {error && <label className="text-red-500">{error.toString()}</label>}
    </div>
  );
};
