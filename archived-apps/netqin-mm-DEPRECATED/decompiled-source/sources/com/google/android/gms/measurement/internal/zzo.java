package com.google.android.gms.measurement.internal;

import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import com.mopub.common.Constants;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzo.class */
public final class zzo {

    /* renamed from: a */
    public final zzfu f30177a;

    public zzo(zzfu zzfuVar) {
        this.f30177a = zzfuVar;
    }

    /* renamed from: a */
    public final void m8670a() {
        this.f30177a.mo8795j().mo9085c();
        if (m8666d()) {
            if (m8667c()) {
                this.f30177a.m9050l().f17206A.m9125a(null);
                Bundle bundle = new Bundle();
                bundle.putString("source", "(not set)");
                bundle.putString("medium", "(not set)");
                bundle.putString("_cis", Constants.INTENT_SCHEME);
                bundle.putLong("_cc", 1L);
                this.f30177a.m9045r().m8974a("auto", "_cmpx", bundle);
            } else {
                String a = this.f30177a.m9050l().f17206A.m9126a();
                if (TextUtils.isEmpty(a)) {
                    this.f30177a.mo8789p().m9151r().m9143a("Cache still valid but referrer not found");
                } else {
                    long a2 = this.f30177a.m9050l().f17207B.m9131a() / 3600000;
                    Uri parse = Uri.parse(a);
                    Bundle bundle2 = new Bundle();
                    Pair pair = new Pair(parse.getPath(), bundle2);
                    for (String str : parse.getQueryParameterNames()) {
                        bundle2.putString(str, parse.getQueryParameter(str));
                    }
                    ((Bundle) pair.second).putLong("_cc", (a2 - 1) * 3600000);
                    this.f30177a.m9045r().m8974a((String) pair.first, "_cmp", (Bundle) pair.second);
                }
                this.f30177a.m9050l().f17206A.m9125a(null);
            }
            this.f30177a.m9050l().f17207B.m9130a(0L);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x002c, code lost:
        if (r6.isEmpty() != false) goto L_0x002f;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m8669a(java.lang.String r6, android.os.Bundle r7) {
        /*
            r5 = this;
            r0 = r5
            com.google.android.gms.measurement.internal.zzfu r0 = r0.f30177a
            com.google.android.gms.measurement.internal.zzfr r0 = r0.mo8795j()
            r0.mo9085c()
            r0 = r5
            com.google.android.gms.measurement.internal.zzfu r0 = r0.f30177a
            boolean r0 = r0.m9058c()
            if (r0 != 0) goto L_0x00a9
            r0 = r7
            if (r0 == 0) goto L_0x0079
            r0 = r7
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L_0x0022
            goto L_0x0079
        L_0x0022:
            r0 = r6
            if (r0 == 0) goto L_0x002f
            r0 = r6
            r8 = r0
            r0 = r6
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L_0x0032
        L_0x002f:
            java.lang.String r0 = "auto"
            r8 = r0
        L_0x0032:
            android.net.Uri$Builder r0 = new android.net.Uri$Builder
            r1 = r0
            r1.<init>()
            r6 = r0
            r0 = r6
            r1 = r8
            android.net.Uri$Builder r0 = r0.path(r1)
            r0 = r7
            java.util.Set r0 = r0.keySet()
            java.util.Iterator r0 = r0.iterator()
            r9 = r0
        L_0x004b:
            r0 = r9
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L_0x006e
            r0 = r9
            java.lang.Object r0 = r0.next()
            java.lang.String r0 = (java.lang.String) r0
            r8 = r0
            r0 = r6
            r1 = r8
            r2 = r7
            r3 = r8
            java.lang.String r2 = r2.getString(r3)
            android.net.Uri$Builder r0 = r0.appendQueryParameter(r1, r2)
            goto L_0x004b
        L_0x006e:
            r0 = r6
            android.net.Uri r0 = r0.build()
            java.lang.String r0 = r0.toString()
            r6 = r0
            goto L_0x007b
        L_0x0079:
            r0 = 0
            r6 = r0
        L_0x007b:
            r0 = r6
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto L_0x00a9
            r0 = r5
            com.google.android.gms.measurement.internal.zzfu r0 = r0.f30177a
            c.d.b.d.i.a.k3 r0 = r0.m9050l()
            com.google.android.gms.measurement.internal.zzfi r0 = r0.f17206A
            r1 = r6
            r0.m9125a(r1)
            r0 = r5
            com.google.android.gms.measurement.internal.zzfu r0 = r0.f30177a
            c.d.b.d.i.a.k3 r0 = r0.m9050l()
            com.google.android.gms.measurement.internal.zzfg r0 = r0.f17207B
            r1 = r5
            com.google.android.gms.measurement.internal.zzfu r1 = r1.f30177a
            com.google.android.gms.common.util.Clock r1 = r1.mo8779z()
            long r1 = r1.mo17091b()
            r0.m9130a(r1)
        L_0x00a9:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzo.m8669a(java.lang.String, android.os.Bundle):void");
    }

    /* renamed from: b */
    public final void m8668b() {
        if (m8666d() && m8667c()) {
            this.f30177a.m9050l().f17206A.m9125a(null);
        }
    }

    /* renamed from: c */
    public final boolean m8667c() {
        return m8666d() && this.f30177a.mo8779z().mo17091b() - this.f30177a.m9050l().f17207B.m9131a() > this.f30177a.m9062b().m9352a((String) null, zzas.f29825E0);
    }

    /* renamed from: d */
    public final boolean m8666d() {
        return this.f30177a.m9050l().f17207B.m9131a() > 0;
    }
}
