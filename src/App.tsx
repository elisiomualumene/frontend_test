import { SubmitHandler, useForm } from "react-hook-form";
import { yupResolver } from "@hookform/resolvers/yup";
import {
  FormValidationSchema,
  IndustryOption,
  Input,
  Select,
  industries,
} from "./module";

export type IFormValues = {
  name: string;
  sector: string;
  term: boolean;
};

export default function App() {
  const {
    control,
    handleSubmit,
    formState: { errors },
  } = useForm<any>({
    resolver: yupResolver(FormValidationSchema),
  });

  const SetOnDatabase: SubmitHandler<IFormValues> = (data) => {
    console.log(data);
  };

  return (
    <main className="bg-gradient-to-r from-[#77C3FD] via-[#6D7CFD] to-[#B3AAFC] h-screen w-full font-inter flex items-center justify-center">
      <article className="bg-white min-w-[420px] max-w-[420px] min-h-[520px] rounded-[30px] p-4 shadow-xl">
        <p className="text-[#8B96A0] text-center text-[18px]">
          Please enter your name and pick the Sectors you are currently involved
          in.
        </p>

        <form
          onSubmit={handleSubmit(SetOnDatabase)}
          className="flex flex-col gap-4 mt-12"
        >
          <Input
            type="text"
            name="name"
            control={control}
            label="Name"
            error={errors?.name?.message}
          />
          <Select
            name="sector"
            control={control}
            label="Sector"
            error={errors?.term?.message}
          >
            {industries ? (
              industries.map((option: IndustryOption) => (
                <option key={option.value} value={option.value}>
                  {option.label}
                </option>
              ))
            ) : (
              <option value="" disabled>
                void
              </option>
            )}
          </Select>

          <div className="flex flex-row items-center gap-2">
            <Input
              type="checkbox"
              control={control}
              name="term"
              className="w-6 h-4 p-0 m-0"
              error={errors?.term?.message}
            />
            <p>Agree to Terms</p>
          </div>
          <button className="bg-[#6375F0] min-h-[50px] rounded-xl font-medium text-lg text-white hover:bg-[#6375E0] mt-6">
            Save
          </button>
        </form>
      </article>
    </main>
  );
}
