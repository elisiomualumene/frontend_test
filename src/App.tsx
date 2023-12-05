import { SubmitHandler, useForm } from "react-hook-form";
import { yupResolver } from "@hookform/resolvers/yup";
import { FormValidationSchema, Input, Select, environment } from "./module";
import { useQuery } from "react-query";

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

  const { isLoading, data: sectors } = useQuery("sectors data", () =>
    fetch(`${environment.API_URL}/sectors`).then((res) => res.json())
  );

  /* HERE */
  const SetOnDatabase: SubmitHandler<IFormValues> = async (data) => {
    await fetch(`${environment.API_URL}/users`, {
      method: "POST",
      body: JSON.stringify(data),
    });
  };

  return (
    <main className="bg-zinc-50 h-screen w-full font-inter flex items-center justify-center ">
      <article className="bg-white w-[420px] min-h-[440px] rounded-[30px] p-4 shadow-xl">
        <p className="text-[#8B96A0] text-center text-[18px]">
          Please enter your name and pick the Sectors you are currently involved
          in.
        </p>

        <form
          onSubmit={handleSubmit(SetOnDatabase)}
          className="flex flex-col gap-4 mt-6"
        >
          <Input
            type="text"
            name="name"
            control={control}
            label="Name"
            error={errors?.name?.message}
          />
          {sectors && !isLoading && (
            <Select
              name="sector"
              control={control}
              label="Sector"
              error={errors?.sector?.message}
              options={sectors}
            />
          )}

          <div className="flex flex-row items-center gap-2">
            <Input
              type="checkbox"
              control={control}
              name="terms"
              className="w-6 h-4 p-0 m-0"
              error={errors?.terms?.message}
            />
            <p className="text-[#8B96A0] text-center text-[14px]">
              Agree to Terms
            </p>
          </div>
          <button className="bg-[#6375F0] min-h-[50px] rounded-xl font-medium text-lg text-white hover:bg-[#6375E0] mt-6">
            Save
          </button>
        </form>
      </article>
    </main>
  );
}
