<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class RatingsRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'product_id'=>'bail|required',
            'customer_id'=>'bail|required|unique:ratings',
            'date_time'=>'bail|required|',
            'rate'=>'bail|required|numeric',
            
        ];
    }
}
