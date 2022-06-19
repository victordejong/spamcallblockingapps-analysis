package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.net.Uri;
/* renamed from: com.google.android.gms.internal.measurement.y3 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/y3.class */
public final class C1411y3 {

    /* renamed from: b */
    final Uri f3981b;

    /* renamed from: a */
    final String f3980a = null;

    /* renamed from: c */
    final String f3982c = "";

    /* renamed from: d */
    final String f3983d = "";

    /* renamed from: e */
    final boolean f3984e = false;

    /* renamed from: f */
    final boolean f3985f = false;

    /* renamed from: g */
    final boolean f3986g = false;

    /* renamed from: h */
    final boolean f3987h = false;

    /* renamed from: i */
    final AbstractC1313f4<Context, Boolean> f3988i = null;

    public C1411y3(Uri uri) {
        this.f3981b = uri;
    }

    /* renamed from: a */
    public final AbstractC1285a4<Long> m1883a(String str, long j) {
        return new u3(this, str, Long.valueOf(j), true);
    }

    /* renamed from: b */
    public final AbstractC1285a4<Boolean> m1882b(String str, boolean z) {
        return new v3(this, str, Boolean.valueOf(z), true);
    }

    /* renamed from: c */
    public final AbstractC1285a4<Double> m1881c(String str, double d) {
        return new w3(this, "measurement.test.double_flag", Double.valueOf(-3.0d), true);
    }

    /* renamed from: d */
    public final AbstractC1285a4<String> m1880d(String str, String str2) {
        return new x3(this, str, str2, true);
    }
}
