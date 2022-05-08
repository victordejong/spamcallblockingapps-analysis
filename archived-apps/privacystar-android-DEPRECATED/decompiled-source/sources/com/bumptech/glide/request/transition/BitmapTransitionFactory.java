package com.bumptech.glide.request.transition;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.support.annotation.NonNull;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/request/transition/BitmapTransitionFactory.class */
public class BitmapTransitionFactory extends BitmapContainerTransitionFactory<Bitmap> {
    public BitmapTransitionFactory(@NonNull TransitionFactory<Drawable> transitionFactory) {
        super(transitionFactory);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @NonNull
    public Bitmap getBitmap(@NonNull Bitmap bitmap) {
        return bitmap;
    }
}
