<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="smart-forms.css">
    <link href="bluetheme.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
<body>
 <div class="smart-wrap">
        <div class="smart-forms smart-container wrap-3">
            <div class="form-header header-blue">
                <h4><i class="fa fa-comments"></i> Please comment </h4>
            </div><!-- end .form-header section -->

            <form method="post" action="/" id="comment2">
                <div class="form-body theme-blue">

                    <div class="section">
                        <label class="field prepend-icon">
                            <input type="text" name="names" id="names" class="gui-input" placeholder="Enter name...">
                            <span class="field-icon"><i class="fa fa-user"></i></span>
                        </label>
                    </div><!-- end section -->

                    <div class="section">
                        <label class="field prepend-icon">
                            <input type="email" name="email" id="email" class="gui-input" placeholder="Enter Email...">
                            <span class="field-icon"><i class="fa fa-envelope"></i></span>
                        </label>
                    </div><!-- end section -->

                    <div class="section">
                        <label class="field prepend-icon">
                            <input type="url" name="website" id="website" class="gui-input" placeholder="Website url (optional)...">
                            <span class="field-icon"><i class="fa fa-globe"></i></span>
                        </label>
                    </div><!-- end section -->

                    <div class="section">
                        <label class="field prepend-icon">
                            <textarea class="gui-textarea" id="comment" name="comment" placeholder="Enter message..."></textarea>
                            <span class="field-icon"><i class="fa fa-comments"></i></span>
                            <span class="input-hint">
                                <strong>USE HTML TAGS:</strong>
                                &lt;blockquote&gt;, &lt;strong&gt;&lt;a&gt;, &lt;b&gt;, &lt;ul&gt;, &lt;li&gt;, &lt;code&gt;
                            </span>
                        </label>
                    </div><!-- end section -->

                    <div class="section">
                        <label class="option option-blue">
                            <input type="checkbox" name="check1">
                            <span class="checkbox"></span> Notify me with comment updates
                        </label>
                    </div><!-- end section -->

                    <div class="spacer-b30">
                        <div class="tagline"><span>Just a moment </span></div><!-- .tagline -->
                    </div>

                    <div class="section">

                        <span class="rating block">

                            <span class="lbl-text">Rate this article</span>

                            <input class="rating-input" id="five-stars" type="radio" name="article-rate">
                            <label class="rating-star" for="five-stars"><i class="fa fa-star"></i></label>

                            <input class="rating-input" id="four-stars" type="radio" name="article-rate">
                            <label class="rating-star" for="four-stars"><i class="fa fa-star"></i></label>

                            <input class="rating-input" id="three-stars" type="radio" name="article-rate" checked>
                            <label class="rating-star" for="three-stars"><i class="fa fa-star"></i></label>

                            <input class="rating-input" id="two-stars" type="radio" name="article-rate">
                            <label class="rating-star" for="two-stars"><i class="fa fa-star"></i></label>

                            <input class="rating-input" id="one-star" type="radio" name="article-rate">
                            <label class="rating-star" for="one-star"><i class="fa fa-star"></i></label>

                        </span>

                    </div><!-- end  section -->

                </div><!-- end .form-body section -->
                <div class="form-footer">
                    <button type="submit" class="button btn-blue">Post Comment</button>
                </div><!-- end .form-footer section -->
            </form>
        </div><!-- end .smart-forms section -->
    </div><!-- end .smart-wrap section -->
    <div></div><!-- end section -->

</body>
</html>