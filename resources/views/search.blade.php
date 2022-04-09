<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Drinks Recipe Master</title>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.4.1/dist/css/bootstrap.min.css"
        integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu" crossorigin="anonymous">

    <!-- Optional theme -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.4.1/dist/css/bootstrap-theme.min.css"
        integrity="sha384-6pzBo3FDv/PJ8r2KRkGHifhEocL+1X2rVCTTkUfGk7/0pbek5mMa1upzvWbrUbOZ" crossorigin="anonymous">


    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,600" rel="stylesheet">

    <!-- Styles -->
    <style>
        html,
        body {
            background-color: rgb(255, 249, 199);
            color: #636b6f;
            font-family: 'Nunito', sans-serif;
            font-weight: 200;
            height: 100vh;
            margin: 0;
        }

        .full-height {
            height: 100vh;
        }

        .flex-center {
            align-items: center;
            display: flex;
            justify-content: center;
        }

        .position-ref {
            position: relative;
        }

        .top-right {
            position: absolute;
            right: 10px;
            top: 18px;
        }

        .content {
            text-align: center;
        }

        .title {
            font-size: 84px;
        }

        .links>a {
            color: #636b6f;
            padding: 0 25px;
            font-size: 13px;
            font-weight: 600;
            letter-spacing: .1rem;
            text-decoration: none;
            text-transform: uppercase;
        }

        .m-b-md {
            margin-bottom: 30px;
        }
    </style>
</head>

<body>
    <div class="flex-center " style="margin-top:50px">
        @if (Route::has('login'))
        <div class="top-right links">
            @auth
            <a href="{{ url('/home') }}">Home</a>
            @else
            <a href="{{ route('login') }}">Login</a>

            @if (Route::has('register'))
            <a href="{{ route('register') }}">Register</a>
            @endif
            @endauth
        </div>
        @endif

        <div class="container">




            <a style="color: #EB9316; text-decoration: none;" href="/">

                <div class="title m-b-md text-center">
                    Drinks Recipe Finder
                </div>
            </a>
            <div class="links">
                <!-- <a href="https://laravel.com/docs">Docs</a>
                    <a href="https://laracasts.com">Laracasts</a>
                    <a href="https://laravel-news.com">News</a>
                    <a href="https://blog.laravel.com">Blog</a>
                    <a href="https://nova.laravel.com">Nova</a>
                    <a href="https://forge.laravel.com">Forge</a>
                    <a href="https://vapor.laravel.com">Vapor</a>
                    <a href="https://github.com/laravel/laravel">GitHub</a> -->


            </div>
            <div class="row" style="margin-top:  150px;">
                <form action="{{route('search')}}">
                    <div class="col-lg-10 ">
                        <input Placeholder="Search by 'Name' or 'Ingredients'" value="{{$keyword}}"
                            style="width:100%; height:4.5vh;border-radius:20px;border: solid #EB9316 2px !important;"
                            type="search" name="search">

                    </div>
                    <div class="col-lg-2">
                        <button style="width:100%; height:4.5vh;border-radius:20px;  " class="btn btn-warning"><b>
                                Search </b>
                        </button>
                    </div>
                </form>
            </div>



            <div class="row text-center">

                @if(count($drinks) > 0)

                @if(count($drinks) == 1)
                <h2>{{$count}} Drink found !</h2>
                @else
                <h2>{{$count}} Drinks found</h2>

                @endif


                @foreach($drinks as $drink)

                <a href="{{route('drink', $drink->id)}}">
                    <div class="col-lg-3  ">

                        <div class="card" style=" margin-top: 50px;">
                            <img src="/img/{{$drink->image}}.jpg" style="border-radius: 20px;" class="card-img-top"
                                alt="..." height="200" width="180">
                            <div class="card-body">
                                <h3 class="card-text" style="text-decoration: none; color: rgb(91, 91, 91);"> <b>
                                        {{$drink->name}} </b></h3>
                            </div>
                        </div>
                    </div>
                </a>








                @endforeach

                @else

                <h4 class="card-text " style="margin-top: 50px !important;">No Drinks found ! Please try again with some
                    generic keyword</h4>
                @endif

            </div>
        </div>
    </div>



    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>

</body>

</html>