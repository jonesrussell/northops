<?php

use App\Http\Controllers\ContactController;
use Illuminate\Support\Facades\Route;
use Inertia\Inertia;

$marketingResponse = function () {
    return response(file_get_contents(public_path('marketing/index.html')), 200, [
        'Content-Type' => 'text/html',
    ]);
};

Route::get('/', $marketingResponse)->name('home');
Route::get('contact', $marketingResponse)->name('contact');
Route::post('contact', [ContactController::class, 'store'])->name('contact.store');

Route::get('dashboard', function () {
    return Inertia::render('Dashboard');
})->middleware(['auth', 'verified'])->name('dashboard');

require __DIR__.'/settings.php';

// Marketing site catch-all — serves the Vite SPA for all non-admin paths
Route::get('/{any}', function () {
    return response(file_get_contents(public_path('marketing/index.html')), 200, [
        'Content-Type' => 'text/html',
    ]);
})->where('any', '^(?!dashboard|settings|login|register|forgot-password|reset-password|verify-email|confirm-password|two-factor-challenge).*$')
    ->name('marketing');
