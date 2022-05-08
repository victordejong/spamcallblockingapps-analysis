package com.bumptech.glide.g.a;

import android.graphics.drawable.Drawable;
import android.view.View;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/g/a/c.class */
public interface c<R> {

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/g/a/c$a.class */
    public interface a {
        Drawable getCurrentDrawable();

        View getView();

        void setDrawable(Drawable drawable);
    }

    boolean a(R r, a aVar);
}
