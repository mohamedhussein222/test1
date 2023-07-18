{section name=s loop=$news}

<div class="news_headr">
                        <p>{$news[s].title}<span></p>
                    </div>
                    <div class="news_text">
                        <p>{$news[s].small_text} </p>
                    </div>
                    <div class="news_text_date">
                        <div class="news_date">
                            <div class="news_date_icon">
                                  <p><i class="fa fa-calendar-check-o" aria-hidden="true"></i></p>
                            </div>
                            <div class="news_dater">
                                <p>{$news[s].d}</p>
                            </div>
                        </div>
                        <div class="more">
                            <a href="?a=news" class="a-link" style="padding: 5px;
    width: 96px;
    font-size: 13px;">More</a>
                        </div>
                    </div>
<br><br>


	
{/section}

