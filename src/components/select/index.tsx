import { Controller } from "react-hook-form";
import { SelectInputProps } from "./types";

interface NestedOption {
  label: string;
  options?: NestedOption[];
}

interface NestedSelectProps extends SelectInputProps {
  options: NestedOption[];
}

export function Select({
  label,
  control,
  name,
  error,
  options,
  children,
  ...rest
}: NestedSelectProps): JSX.Element {
  const flattenedOptions: NestedOption[] = [];

  const flattenOptions = (nestedOptions: NestedOption[], prefix = "") => {
    nestedOptions.forEach((option) => {
      flattenedOptions.push({
        label: prefix + option.label,
      });

      if (option.options) {
        flattenOptions(option.options, `${prefix} -`);
      }
    });
  };

  flattenOptions(options);

  return (
    <div className="w-full">
      {label && <label className="font-bold mb-2">{label}</label>}
      <Controller
        name={name}
        control={control}
        defaultValue={[]}
        render={({ field: { onBlur, onChange, ref } }) => (
          <select
            {...rest}
            onChange={onChange}
            onBlur={onBlur}
            defaultValue={[]}
            ref={ref}
            multiple
            size={5}
            className="w-full border outline-none border-[#C5CACF] rounded-xl min-h-[50px] font-bold"
          >
            <option value="" disabled hidden>
              {label ? `Select ${label.toLowerCase()}` : "Select option(s)"}
            </option>
            {flattenedOptions.map((option, index) => (
              <option key={index} value={index}>
                {option.label}
              </option>
            ))}
          </select>
        )}
      />
      {error && <label className="text-red-500">{error.toString()}</label>}
      {children}
    </div>
  );
}
