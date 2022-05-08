package com.google.android.material.p061b;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
/* renamed from: com.google.android.material.b.a */
/* loaded from: classes-dex2jar.jar:com/google/android/material/b/a.class */
public final class C2947a {
    /* renamed from: a */
    public static PorterDuffColorFilter m1447a(Drawable drawable, ColorStateList colorStateList, PorterDuff.Mode mode) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return new PorterDuffColorFilter(colorStateList.getColorForState(drawable.getState(), 0), mode);
    }
}
