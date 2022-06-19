package com.google.android.gms.measurement.internal;

import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import com.appsflyer.internal.referrer.Payload;
/* renamed from: com.google.android.gms.measurement.internal.ca */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/ca.class */
public final class C1489ca {

    /* renamed from: a */
    private final r4 f4204a;

    public C1489ca(r4 r4Var) {
        this.f4204a = r4Var;
    }

    /* renamed from: a */
    public final void m1699a() {
        this.f4204a.e().h();
        if (!m1695e()) {
            return;
        }
        if (m1696d()) {
            this.f4204a.A().z.m1700b(null);
            Bundle bundle = new Bundle();
            bundle.putString(Payload.SOURCE, "(not set)");
            bundle.putString("medium", "(not set)");
            bundle.putString("_cis", "intent");
            bundle.putLong("_cc", 1L);
            this.f4204a.F().X("auto", "_cmpx", bundle);
        } else {
            String m1701a = this.f4204a.A().z.m1701a();
            if (TextUtils.isEmpty(m1701a)) {
                this.f4204a.c().p().m1570a("Cache still valid but referrer not found");
            } else {
                long m1484a = this.f4204a.A().A.m1484a() / 3600000;
                Uri parse = Uri.parse(m1701a);
                Bundle bundle2 = new Bundle();
                Pair pair = new Pair(parse.getPath(), bundle2);
                for (String str : parse.getQueryParameterNames()) {
                    bundle2.putString(str, parse.getQueryParameter(str));
                }
                ((Bundle) pair.second).putLong("_cc", (m1484a - 1) * 3600000);
                this.f4204a.F().X((String) pair.first, "_cmp", (Bundle) pair.second);
            }
            this.f4204a.A().z.m1700b(null);
        }
        this.f4204a.A().A.m1483b(0L);
    }

    /* renamed from: b */
    public final void m1698b(String str, Bundle bundle) {
        String str2;
        this.f4204a.e().h();
        if (!this.f4204a.k()) {
            if (bundle.isEmpty()) {
                str2 = null;
            } else {
                String str3 = str;
                if (true == str.isEmpty()) {
                    str3 = "auto";
                }
                Uri.Builder builder = new Uri.Builder();
                builder.path(str3);
                for (String str4 : bundle.keySet()) {
                    builder.appendQueryParameter(str4, bundle.getString(str4));
                }
                str2 = builder.build().toString();
            }
            if (TextUtils.isEmpty(str2)) {
                return;
            }
            this.f4204a.A().z.m1700b(str2);
            this.f4204a.A().A.m1483b(this.f4204a.a().m3166b());
        }
    }

    /* renamed from: c */
    final void m1697c() {
        if (!m1695e() || !m1696d()) {
            return;
        }
        this.f4204a.A().z.m1700b(null);
    }

    /* renamed from: d */
    final boolean m1696d() {
        return m1695e() && this.f4204a.a().m3166b() - this.f4204a.A().A.m1484a() > this.f4204a.z().s((String) null, C1470a3.f4082R);
    }

    /* renamed from: e */
    final boolean m1695e() {
        return this.f4204a.A().A.m1484a() > 0;
    }
}
