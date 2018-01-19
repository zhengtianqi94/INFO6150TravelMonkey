<div class="row article-head">
    <div class="article-header col-sm text">
        <h1>Travel <span class="brand-text">Monkey</span> Guide Share</h1>
        <div>
            <h4>
                Write your guide, share your story.
            </h4>
        </div>
    </div>
</div>

<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h4 class="panel-title">
                        <a>New Article</a>
                    </h4>
                    <br>
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="Title" required/>
                            </div>
                            <div class="form-group">
                                <textarea class="form-control" placeholder="Content" rows="20" required></textarea>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-6">
                            <div class="well well-sm well-primary">
                                <div class="input-group image-preview">
                                    <input type="text" class="form-control image-preview-filename"
                                           disabled="disabled">
                                    <!-- don't give a name === doesn't send on POST/GET -->
                                    <span class="input-group-btn">

                                        <!-- image-preview-clear button -->
                                        <button type="button" class="btn btn-default image-preview-clear"
                                                style="display:none;">
                                            <span class="glyphicon glyphicon-remove"></span> Clear
                                        </button>

                                        <!-- image-preview-input -->
                                        <div class="btn btn-default image-preview-input">
                                            <span class="glyphicon glyphicon-folder-open"></span>
                                            <span class="image-preview-input-title">Browse</span>
                                            <input type="file" accept="image/png, image/jpeg, image/gif"
                                                   name="input-file-preview"/>
                                            <!-- rename it -->
                                        </div>

                                        </span>
                                </div><!-- /input-group image-preview [TO HERE]-->
                            </div>
                        </div>

                        <div class="col-md-6">
                            <button type="submit" class="btn btn-primary" id="postButton">
                                Post
                            </button>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>