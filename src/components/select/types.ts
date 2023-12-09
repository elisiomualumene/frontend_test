interface Sector {
  id: string;
  label: string;
  parent_id: string | null;
}

export interface SectorSelectProps {
  sectors: Sector[];
  name: string;
  control: any;
  label: string;
  error: any;
}
