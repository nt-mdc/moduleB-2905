<?php

namespace App\Http\Controllers;

use App\Models\Company;
use Illuminate\Http\Request;

class CompanyController extends Controller
{
    public function index()
    {
        return view('home')->with('comp', Company::all()->load('contact', 'owner'));
    }

    public function edit(Company $id)
    {
        return view('company')->with('comp', $id->load('owner', 'contact', 'products.translations', 'products.detail', 'products.weight'));
    }

    public function company(Request $request, $id = null)
    {

        $request->validate([
            'company_email' => 'required|unique:companies,company_email'
        ]);

        $company = Company::updateOrCreate(['id' => $id], $request->only('company_name', 'company_email', 'company_number', 'company_address', 'deactiv'));
        $company->owner()->updateOrCreate([], $request->only('owner_name', 'owner_number', 'owner_email'));
        $company->contact()->updateOrCreate([], $request->only('contact_name', 'contact_number', 'contact_email'));
        $request->deactiv ? $company->products()->update(['hidden' => $request->deactiv]) :'';


        return redirect()->back();
    }
}
