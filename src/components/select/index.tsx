import { Controller } from "react-hook-form";
import { SelectInputProps } from "./types";

export function Select({
  label,
  control,
  name,
  error,
  children,
  ...rest
}: SelectInputProps): JSX.Element {
  return (
    <div className="w-full">
      {label && <label className="font-bold indent-2 mb-2">{label}</label>}
      <Controller
        name={name}
        control={control}
        defaultValue=""
        render={({ field: { onBlur, onChange, ref } }) => (
          <select
            {...rest}
            onChange={onChange}
            onBlur={onBlur}
            defaultValue=""
            ref={ref}
            className="w-full border outline-none border-[#C5CACF] rounded-xl min-h-[50px] indent-2 font-bold"
          >
            <option value="" disabled hidden>
              Select a Sector
            </option>
            {children}
          </select>
        )}
      />
      {error && <label className="text-red-500">{error}</label>}
    </div>
  );
}
