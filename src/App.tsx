import {
  FormValidationSchema,
  IFormValues,
  IPostUserDataResponse,
  Input,
  Select,
  SubmitHandler,
  environment,
  useForm,
  useQuery,
  useState,
  yupResolver,
} from "./module";

export default function App() {
  const [postUserData, setPostUserData] = useState<IPostUserDataResponse>();

  const {
    control,
    handleSubmit,
    formState: { errors },
  } = useForm<any>({
    resolver: yupResolver(FormValidationSchema),
  });

  const {
    isLoading,
    data: sectors,
    error,
  } = useQuery("sectors data", () =>
    fetch(`${environment.API_URL}/sectors`).then((res) => res.json())
  );

  const SetOnDatabase: SubmitHandler<IFormValues> = async (data) => {
    await fetch(`${environment.API_URL}/users`, {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify(data),
    }).then((response) => setPostUserData(response));
  };

  return (
    <main className="flex flex-col bg-zinc-50 h-screen w-full font-inter flex items-center justify-center ">
      {postUserData && postUserData?.status === 201 && (
        <div className="bg-white m-4 p-4 rounded-lg text-green-600 font-bold text-lg">
          user successfully registered
        </div>
      )}

      {postUserData && postUserData?.status !== 201 && (
        <div className="bg-white m-4 p-4 rounded-lg text-red-600 font-bold text-lg">
          user was not registered! something goes wrong
        </div>
      )}

      {(error as Error) && (
        <div className="bg-white m-4 p-4 rounded-lg text-red-600 font-bold text-lg">
          {(error as Error).message}
        </div>
      )}
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
