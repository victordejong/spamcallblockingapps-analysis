package com.google.android.material.p060a;

import android.animation.TimeInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import androidx.p040d.p041a.p042a.C0805a;
import androidx.p040d.p041a.p042a.C0806b;
import androidx.p040d.p041a.p042a.C0807c;
/* renamed from: com.google.android.material.a.a */
/* loaded from: classes-dex2jar.jar:com/google/android/material/a/a.class */
public final class C2925a {

    /* renamed from: a */
    public static final TimeInterpolator f17810a = new LinearInterpolator();

    /* renamed from: b */
    public static final TimeInterpolator f17811b = new C0806b();

    /* renamed from: c */
    public static final TimeInterpolator f17812c = new C0805a();

    /* renamed from: d */
    public static final TimeInterpolator f17813d = new C0807c();

    /* renamed from: e */
    public static final TimeInterpolator f17814e = new DecelerateInterpolator();

    /* renamed from: a */
    public static float m1549a(float f, float f2, float f3) {
        return f + (f3 * (f2 - f));
    }

    /* renamed from: a */
    public static int m1548a(int i, int i2, float f) {
        return i + Math.round(f * (i2 - i));
    }
}
