<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Mail\Email;
use Illuminate\Support\Facades\Mail;

class EmailController extends Controller
{
    
    public function sendEmail(){
        $content = [
            'sender' => 'Skripsi Online',
            'recipient' => 'Univ',
            'body' => 'This is testing mail from Ricky',
        ];

        Mail::to('atuxbrx6@gmail.com')->send(new Email($content));

        return redirect()->back()->with('success','Email Sent');
    }
}
