package com.google.android.gms.measurement.internal;

import android.os.Bundle;
/* renamed from: com.google.android.gms.measurement.internal.o3 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/o3.class */
public final class C1559o3 {

    /* renamed from: a */
    public final String f4414a;

    /* renamed from: b */
    public final String f4415b;

    /* renamed from: c */
    public final long f4416c;

    /* renamed from: d */
    public final Bundle f4417d;

    public C1559o3(String str, String str2, Bundle bundle, long j) {
        this.f4414a = str;
        this.f4415b = str2;
        this.f4417d = bundle;
        this.f4416c = j;
    }

    /* renamed from: a */
    public static C1559o3 m1548a(t tVar) {
        return new C1559o3(tVar.f, tVar.h, tVar.g.D1(), tVar.i);
    }

    /* renamed from: b */
    public final t m1547b() {
        return new t(this.f4414a, new r(new Bundle(this.f4417d)), this.f4415b, this.f4416c);
    }

    public final String toString() {
        String str = this.f4415b;
        String str2 = this.f4414a;
        String valueOf = String.valueOf(this.f4417d);
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 21 + String.valueOf(str2).length() + String.valueOf(valueOf).length());
        sb.append("origin=");
        sb.append(str);
        sb.append(",name=");
        sb.append(str2);
        sb.append(",params=");
        sb.append(valueOf);
        return sb.toString();
    }
}
