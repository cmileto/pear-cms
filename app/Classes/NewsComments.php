<?php

namespace App\Classes;

use Illuminate\Database\Eloquent\Model;

class NewsComments extends Model
{
  public $timestamps     = false;
  protected $connection  = 'website';
  protected $table       = 'news_comments';
}
