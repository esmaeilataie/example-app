<x-mail::message>
<h3>{{$job->title}}</h3>
Congrats! Your Job is Now Live on Our Website.

<p>
    <a href="{{url('/jobs/' . $job->id)}}">View Your Job Listing</a>
</p>

Thanks,<br>
{{ config('app.name') }}
</x-mail::message>
