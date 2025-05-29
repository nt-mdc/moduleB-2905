<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class CompanySeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $path = database_path('seeders/data/companies.csv');

        $file = array_map('str_getcsv', file($path));

        $header = null;

        foreach ($file as $row) {
            if (!$header) {
                $header = $row;
                continue;
            }

            $rowData =  array_combine($header, $row);

            $company = DB::table('companies')->insertGetId([
                'company_name' => $rowData['Company Name'],
                'company_address' => $rowData['Company Address'],
                'company_email' => $rowData['Company Email Address'],
                'company_number' => $rowData['Company Telephone Number'],
                'deactiv' => 0
            ]);

            DB::table('owner')->insert([
                'owner_name' => $rowData['Owner Name'],
                'owner_email' => $rowData['Owner Email Address'],
                'owner_number' => $rowData['Owner Mobile Number'],
                'company_id' => $company
            ]);

            DB::table('contact')->insert([
                'contact_name' => $rowData['Contact Name'],
                'contact_email' => $rowData['Contact Email Address'],
                'contact_number' => $rowData['Contact Mobile Number'],
                'company_id' => $company
            ]);
        }
    }
}
