@extends('admin.layout.main')

@section('title')
Image Details
@endsection

@section('content')

<div class="content-wrapper">
    <div class="container">
        <h3>Image</h3>
        <h4>details:</h4>
        <br>
        <div class="container">
            <a href="{{route('image.edit',$image->id)}}"><button type="button" class="btn btn-warning">Edit</button></a>
            <a href="{{route('image.delete',$image->id)}}"><button type="button" class="btn btn-danger">Delete</button></a>
            <a href="{{route('image.index')}}"><button type="button" class="btn btn-primary">Back to List</button></a>
            <br>
            <br>
            <p>Id: {{$image->id}}</p>
            <br>
            <p>Product Id: {{$image->product_id}}</p>
            <br>
            <p>Image Path: {{$image->img_path}}</p>
            <br>
        </div>
    </div>
</div>

@endsection
