package com.google.android.gms.internal.base;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.drawable.Drawable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/base/zaf.class */
final class zaf extends Drawable {

    /* renamed from: a */
    private static final zaf f7834a = new zaf();

    /* renamed from: b */
    private static final zai f7835b = new zai(null);

    private zaf() {
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        return f7835b;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -2;
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
    }
}
