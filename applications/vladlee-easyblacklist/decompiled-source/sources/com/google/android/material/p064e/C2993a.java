package com.google.android.material.p064e;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import androidx.appcompat.p020a.p021a.C0258a;
/* renamed from: com.google.android.material.e.a */
/* loaded from: classes-dex2jar.jar:com/google/android/material/e/a.class */
public final class C2993a {
    /* renamed from: a */
    public static ColorStateList m1195a(Context context, TypedArray typedArray, int i) {
        int resourceId;
        ColorStateList a;
        return (!typedArray.hasValue(i) || (resourceId = typedArray.getResourceId(i, 0)) == 0 || (a = C0258a.m9952a(context, resourceId)) == null) ? typedArray.getColorStateList(i) : a;
    }

    /* renamed from: b */
    public static Drawable m1194b(Context context, TypedArray typedArray, int i) {
        int resourceId;
        Drawable b;
        return (!typedArray.hasValue(i) || (resourceId = typedArray.getResourceId(i, 0)) == 0 || (b = C0258a.m9951b(context, resourceId)) == null) ? typedArray.getDrawable(i) : b;
    }
}
