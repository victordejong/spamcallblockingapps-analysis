package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.common.internal.C0931r;
import java.util.Iterator;
/* renamed from: com.google.android.gms.measurement.internal.o */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/o.class */
public final class C1558o {

    /* renamed from: a */
    final String f4408a;

    /* renamed from: b */
    final String f4409b;

    /* renamed from: c */
    final String f4410c;

    /* renamed from: d */
    final long f4411d;

    /* renamed from: e */
    final long f4412e;

    /* renamed from: f */
    final r f4413f;

    C1558o(r4 r4Var, String str, String str2, String str3, long j, long j2, Bundle bundle) {
        r rVar;
        C0931r.m3312g(str2);
        C0931r.m3312g(str3);
        this.f4408a = str2;
        this.f4409b = str3;
        this.f4410c = true == TextUtils.isEmpty(str) ? null : str;
        this.f4411d = j;
        this.f4412e = j2;
        if (j2 != 0 && j2 > j) {
            r4Var.c().r().m1569b("Event created with reverse previous/current timestamps. appId", n3.x(str2));
        }
        if (bundle == null || bundle.isEmpty()) {
            rVar = new r(new Bundle());
        } else {
            Bundle bundle2 = new Bundle(bundle);
            Iterator<String> it = bundle2.keySet().iterator();
            while (it.hasNext()) {
                String next = it.next();
                if (next == null) {
                    r4Var.c().o().m1570a("Param name can't be null");
                    it.remove();
                } else {
                    Object s = r4Var.G().s(next, bundle2.get(next));
                    if (s == null) {
                        r4Var.c().r().m1569b("Param value can't be null", r4Var.H().q(next));
                        it.remove();
                    } else {
                        r4Var.G().z(bundle2, next, s);
                    }
                }
            }
            rVar = new r(bundle2);
        }
        this.f4413f = rVar;
    }

    private C1558o(r4 r4Var, String str, String str2, String str3, long j, long j2, r rVar) {
        C0931r.m3312g(str2);
        C0931r.m3312g(str3);
        C0931r.m3308k(rVar);
        this.f4408a = str2;
        this.f4409b = str3;
        this.f4410c = true == TextUtils.isEmpty(str) ? null : str;
        this.f4411d = j;
        this.f4412e = j2;
        if (j2 != 0 && j2 > j) {
            r4Var.c().r().m1568c("Event created with reverse previous/current timestamps. appId, name", n3.x(str2), n3.x(str3));
        }
        this.f4413f = rVar;
    }

    /* renamed from: a */
    final C1558o m1549a(r4 r4Var, long j) {
        return new C1558o(r4Var, this.f4410c, this.f4408a, this.f4409b, this.f4411d, j, this.f4413f);
    }

    public final String toString() {
        String str = this.f4408a;
        String str2 = this.f4409b;
        String valueOf = String.valueOf(this.f4413f);
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 33 + String.valueOf(str2).length() + String.valueOf(valueOf).length());
        sb.append("Event{appId='");
        sb.append(str);
        sb.append("', name='");
        sb.append(str2);
        sb.append("', params=");
        sb.append(valueOf);
        sb.append('}');
        return sb.toString();
    }
}
