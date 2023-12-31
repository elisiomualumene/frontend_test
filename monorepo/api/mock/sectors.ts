export type SectorsOption = {
  label: string;
  options: SectorsOption[];
};

export const Sectors: SectorsOption[] = [
  {
    label: "Manufacturing",
    options: [
      {
        label: "Construction material",
        options: [],
      },
      {
        label: "Electronic and Optics",
        options: [],
      },
      {
        label: "Food and Beverage",
        options: [
          {
            label: "Bakery & Confectionery products",
            options: [],
          },
          {
            label: "Beverages",
            options: [],
          },
          {
            label: "Fish & fish products",
            options: [],
          },
          {
            label: "Meat & meat products",
            options: [],
          },
          {
            label: "Milk & dairy products",
            options: [],
          },
          {
            label: "Other",
            options: [],
          },
          {
            label: "Sweet & snack food",
            options: [],
          },
        ],
      },
      {
        label: "Furniture",
        options: [
          {
            label: "Bathroom/sauna",
            options: [],
          },
          {
            label: "Bedroom",
            options: [],
          },
          {
            label: "Children's room",
            options: [],
          },
          {
            label: "Kitchen",
            options: [],
          },
          {
            label: "Living room",
            options: [],
          },
          {
            label: "Office",
            options: [],
          },
          {
            label: "Other (furniture)",
            options: [],
          },
          {
            label: "Outdoor",
            options: [],
          },
          {
            label: "Project Furniture",
            options: [],
          },
        ],
      },
      {
        label: "Machinery",
        options: [
          {
            label: "Machinery components",
            options: [],
          },
          {
            label: "Machinery equipment/tools",
            options: [],
          },
          {
            label: "Manufacture of machinery",
            options: [],
          },
          {
            label: "Maritime",
            options: [
              {
                label: "Aluminium and steel workboats",
                options: [],
              },
              {
                label: "Boat/Yacht",
                options: [],
              },
              {
                label: "Ship repair and conversion",
                options: [],
              },
            ],
          },
          {
            label: "Metal structures",
            options: [],
          },
          {
            label: "Other",
            options: [],
          },
          {
            label: "Repair and maintenance service",
            options: [],
          },
        ],
      },
      {
        label: "Metalworking",
        options: [
          {
            label: "Construction of metal structures",
            options: [],
          },
          {
            label: "Houses and buildings",
            options: [],
          },
          {
            label: "Metal Products",
            options: [],
          },
          {
            label: "Metal Works",
            options: [
              {
                label: "CNC-machining",
                options: [],
              },
              {
                label: "Forging, Fasteners",
                options: [],
              },
              {
                label: "Gas, Plasma, Laser cutting",
                options: [],
              },
              {
                label: "MIG, TIG, Aluminum welding",
                options: [],
              },
            ],
          },
        ],
      },
      {
        label: "Plastic and Rubber",
        options: [
          { label: "Packaging", options: [] },
          {
            label: "Plastic goods",
            options: [],
          },
          {
            label: "Plastic Processing technology",
            options: [
              {
                label: "Blowing",
                options: [],
              },
              {
                label: "Moulding",
                options: [],
              },
              {
                label: "Plastics welding and processing",
                options: [],
              },
            ],
          },
          {
            label: "Plastic Profiles",
            options: [],
          },
        ],
      },
      {
        label: "Printing",
        options: [
          {
            label: "Advertising",
            options: [],
          },
          {
            label: "Book/Periodicals printing",
            options: [],
          },
          {
            label: "Labelling and packaging printing",
            options: [],
          },
        ],
      },
      {
        label: "Textil and Clothing",
        options: [
          {
            label: "Clothing",
            options: [],
          },
          {
            label: "Textile",
            options: [],
          },
        ],
      },
      {
        label: "Wood",
        options: [
          {
            label: "Other (Wood)",
            options: [],
          },
          {
            label: "Wooden building materials",
            options: [],
          },
          {
            label: "Wooden houses",
            options: [],
          },
        ],
      },
    ],
  },
  {
    label: "Other",
    options: [
      {
        label: "Creative Industries",
        options: [],
      },
      {
        label: "Energy technology",
        options: [],
      },
      {
        label: "Environment",
        options: [],
      },
    ],
  },
  {
    label: "Service",
    options: [
      {
        label: "Business Services",
        options: [],
      },
      {
        label: "Engineering",
        options: [],
      },
      {
        label: "Information Technology and Telecommunications",
        options: [
          {
            label: "Data Processing, web portals, E-marketing",
            options: [],
          },
          {
            label: "Programming, Consultancy",
            options: [],
          },
          {
            label: "Software, Hardware",
            options: [],
          },
          {
            label: "Telecommunications",
            options: [],
          },
        ],
      },
      {
        label: "Tourism",
        options: [],
      },
      {
        label: "Translation services",
        options: [],
      },
      {
        label: "Transport and Logistics",
        options: [
          {
            label: "Air",
            options: [],
          },
          {
            label: "Rail",
            options: [],
          },
          {
            label: "Road",
            options: [],
          },
          {
            label: "Water",
            options: [],
          },
        ],
      },
    ],
  },
];
