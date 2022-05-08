package com.bumptech.glide.request.transition;

import android.graphics.drawable.Drawable;
import android.support.annotation.Nullable;
import android.view.View;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/request/transition/Transition.class */
public interface Transition<R> {

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/request/transition/Transition$ViewAdapter.class */
    public interface ViewAdapter {
        @Nullable
        Drawable getCurrentDrawable();

        View getView();

        void setDrawable(Drawable drawable);
    }

    boolean transition(R r, ViewAdapter viewAdapter);
}
