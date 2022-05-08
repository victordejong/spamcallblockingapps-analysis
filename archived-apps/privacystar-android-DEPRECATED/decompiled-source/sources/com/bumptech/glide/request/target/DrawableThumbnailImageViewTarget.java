package com.bumptech.glide.request.target;

import android.graphics.drawable.Drawable;
import android.widget.ImageView;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/request/target/DrawableThumbnailImageViewTarget.class */
public class DrawableThumbnailImageViewTarget extends ThumbnailImageViewTarget<Drawable> {
    public DrawableThumbnailImageViewTarget(ImageView imageView) {
        super(imageView);
    }

    @Deprecated
    public DrawableThumbnailImageViewTarget(ImageView imageView, boolean z) {
        super(imageView, z);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Drawable getDrawable(Drawable drawable) {
        return drawable;
    }
}
