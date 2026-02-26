<?php

namespace App\Http\Controllers;

use App\Http\Requests\ContactRequest;
use Illuminate\Http\RedirectResponse;
use Inertia\Inertia;
use Inertia\Response;

class ContactController extends Controller
{
    public function index(): Response
    {
        return Inertia::render('Contact', [
            'status' => session('status'),
        ]);
    }

    public function store(ContactRequest $request): RedirectResponse
    {
        // For now, just validate and redirect back with success.
        // Optionally enqueue email or store in DB later.
        return back()->with('status', 'Thanks for your message. We\'ll get back to you soon.');
    }
}
