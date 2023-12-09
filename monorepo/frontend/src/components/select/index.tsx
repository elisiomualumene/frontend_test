import React from "react";
import { Controller } from "react-hook-form";
import { SectorSelectProps } from "./types";

export const Select: React.FC<SectorSelectProps> = ({
  sectors,
  control,
  name,
  label,
  error,
}) => {
  const renderOptions = (parentId: string | null = null, level: number = 0) => {
    const filteredSectors = sectors.filter(
      (sector) => sector.parent_id === parentId
    );

    return filteredSectors.map((sector) => (
      <React.Fragment key={sector.id}>
        <option value={sector.id}>
          {"-".repeat(level * 2)} {sector.label}
        </option>
        {renderOptions(sector.id, level + 1)}
      </React.Fragment>
    ));
  };

  return (
    <div>
      {label && <label className="font-bold indent-2 mb-2">{label}</label>}
      <Controller
        name={name}
        control={control}
        render={({ field: { onChange, onBlur, value, ref } }) => (
          <select
            id={name}
            ref={ref}
            value={value || ""}
            onBlur={onBlur}
            onChange={onChange}
            className="w-full border outline-none border-[#C5CACF] font-bold rounded-xl min-h-[50px] indent-2"
          >
            <option value="" disabled>
              Select a sector
            </option>
            {renderOptions()}
          </select>
        )}
      />
      {error && <label className="text-red-500">{error}</label>}
    </div>
  );
};
