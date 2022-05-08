package com.squareup.picasso;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import com.squareup.picasso.Picasso;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/squareup/picasso/TargetAction.class */
public final class TargetAction extends Action<Target> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public TargetAction(Picasso picasso, Target target, Request request, int i, int i2, Drawable drawable, String str, Object obj, int i3) {
        super(picasso, target, request, i, i2, i3, drawable, str, obj, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.squareup.picasso.Action
    public void complete(Bitmap bitmap, Picasso.LoadedFrom loadedFrom) {
        if (bitmap == null) {
            throw new AssertionError(String.format("Attempted to complete action with no result!\n%s", this));
        }
        Target target = getTarget();
        if (target != null) {
            target.onBitmapLoaded(bitmap, loadedFrom);
            if (bitmap.isRecycled()) {
                throw new IllegalStateException("Target callback must not recycle bitmap!");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.squareup.picasso.Action
    public void error() {
        Target target = getTarget();
        if (target == null) {
            return;
        }
        if (this.errorResId != 0) {
            target.onBitmapFailed(this.picasso.context.getResources().getDrawable(this.errorResId));
        } else {
            target.onBitmapFailed(this.errorDrawable);
        }
    }
}
