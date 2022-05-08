package com.bumptech.glide.load.resource.a;

import android.graphics.drawable.Drawable;
import com.bumptech.glide.load.b.k;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/a/a.class */
public abstract class a<T extends Drawable> implements k<T> {

    /* renamed from: a  reason: collision with root package name */
    protected final T f3588a;

    public a(T t) {
        if (t == null) {
            throw new NullPointerException("Drawable must not be null!");
        }
        this.f3588a = t;
    }

    @Override // com.bumptech.glide.load.b.k
    public final /* synthetic */ Object a() {
        return this.f3588a.getConstantState().newDrawable();
    }
}
