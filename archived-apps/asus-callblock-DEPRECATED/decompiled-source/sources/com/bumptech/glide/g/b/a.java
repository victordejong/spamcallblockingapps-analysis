package com.bumptech.glide.g.b;

import android.graphics.drawable.Drawable;
import com.bumptech.glide.g.b;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/g/b/a.class */
public abstract class a<Z> implements j<Z> {

    /* renamed from: a  reason: collision with root package name */
    private b f3432a;

    @Override // com.bumptech.glide.g.b.j
    public b getRequest() {
        return this.f3432a;
    }

    @Override // com.bumptech.glide.d.h
    public void onDestroy() {
    }

    @Override // com.bumptech.glide.g.b.j
    public void onLoadCleared(Drawable drawable) {
    }

    @Override // com.bumptech.glide.g.b.j
    public void onLoadFailed(Exception exc, Drawable drawable) {
    }

    @Override // com.bumptech.glide.g.b.j
    public void onLoadStarted(Drawable drawable) {
    }

    @Override // com.bumptech.glide.d.h
    public void onStart() {
    }

    @Override // com.bumptech.glide.d.h
    public void onStop() {
    }

    @Override // com.bumptech.glide.g.b.j
    public void setRequest(b bVar) {
        this.f3432a = bVar;
    }
}
