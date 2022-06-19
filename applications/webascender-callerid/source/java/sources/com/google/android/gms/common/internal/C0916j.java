package com.google.android.gms.common.internal;

import android.util.Log;
/* renamed from: com.google.android.gms.common.internal.j */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/j.class */
public final class C0916j {

    /* renamed from: a */
    private final String f3552a;

    /* renamed from: b */
    private final String f3553b;

    public C0916j(String str) {
        this(str, null);
    }

    public C0916j(String str, String str2) {
        C0931r.m3307l(str, "log tag cannot be null");
        C0931r.m3316c(str.length() <= 23, "tag \"%s\" is longer than the %d character maximum", str, 23);
        this.f3552a = str;
        if (str2 == null || str2.length() <= 0) {
            this.f3553b = null;
        } else {
            this.f3553b = str2;
        }
    }

    /* renamed from: f */
    private final String m3334f(String str) {
        String str2 = this.f3553b;
        return str2 == null ? str : str2.concat(str);
    }

    /* renamed from: a */
    public final boolean m3339a(int i) {
        return Log.isLoggable(this.f3552a, i);
    }

    /* renamed from: b */
    public final void m3338b(String str, String str2) {
        if (m3339a(3)) {
            Log.d(str, m3334f(str2));
        }
    }

    /* renamed from: c */
    public final void m3337c(String str, String str2, Throwable th) {
        if (m3339a(6)) {
            Log.e(str, m3334f(str2), th);
        }
    }

    /* renamed from: d */
    public final void m3336d(String str, String str2) {
        if (m3339a(2)) {
            Log.v(str, m3334f(str2));
        }
    }

    /* renamed from: e */
    public final void m3335e(String str, String str2) {
        if (m3339a(5)) {
            Log.w(str, m3334f(str2));
        }
    }
}
