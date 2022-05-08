package com.google.android.gms.measurement.internal;

import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import androidx.annotation.WorkerThread;
import com.google.firebase.messaging.Constants;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzp.class */
public final class zzp {

    /* renamed from: a */
    private final zzfv f9751a;

    public zzp(zzfv zzfvVar) {
        this.f9751a = zzfvVar;
    }

    /* renamed from: d */
    private final boolean m10921d() {
        return m10920e() && this.f9751a.mo11085a().mo14335a() - this.f9751a.m11349x().f9182B.m11433a() > this.f9751a.m11366e().m10883o(null, zzat.f8896E0);
    }

    /* renamed from: e */
    private final boolean m10920e() {
        return this.f9751a.m11349x().f9182B.m11433a() > 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    /* renamed from: a */
    public final void m10924a() {
        this.f9751a.mo11083b().mo11316e();
        if (m10920e()) {
            if (m10921d()) {
                this.f9751a.m11349x().f9181A.m11427b(null);
                Bundle bundle = new Bundle();
                bundle.putString("source", "(not set)");
                bundle.putString("medium", "(not set)");
                bundle.putString("_cis", "intent");
                bundle.putLong("_cc", 1L);
                this.f9751a.m11382F().m11273X("auto", "_cmpx", bundle);
            } else {
                String a = this.f9751a.m11349x().f9181A.m11428a();
                if (TextUtils.isEmpty(a)) {
                    this.f9751a.mo11081c().m11559E().m11540a("Cache still valid but referrer not found");
                } else {
                    long a2 = this.f9751a.m11349x().f9182B.m11433a() / 3600000;
                    Uri parse = Uri.parse(a);
                    Bundle bundle2 = new Bundle();
                    Pair pair = new Pair(parse.getPath(), bundle2);
                    for (String str : parse.getQueryParameterNames()) {
                        bundle2.putString(str, parse.getQueryParameter(str));
                    }
                    ((Bundle) pair.second).putLong("_cc", (a2 - 1) * 3600000);
                    this.f9751a.m11382F().m11273X((String) pair.first, Constants.ScionAnalytics.EVENT_FIREBASE_CAMPAIGN, (Bundle) pair.second);
                }
                this.f9751a.m11349x().f9181A.m11427b(null);
            }
            this.f9751a.m11349x().f9182B.m11432b(0L);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x002c, code lost:
        if (r6.isEmpty() != false) goto L_0x002f;
     */
    @androidx.annotation.WorkerThread
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m10923b(java.lang.String r6, android.os.Bundle r7) {
        /*
            r5 = this;
            r0 = r5
            com.google.android.gms.measurement.internal.zzfv r0 = r0.f9751a
            com.google.android.gms.measurement.internal.zzfo r0 = r0.mo11083b()
            r0.mo11316e()
            r0 = r5
            com.google.android.gms.measurement.internal.zzfv r0 = r0.f9751a
            boolean r0 = r0.m11357p()
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
            com.google.android.gms.measurement.internal.zzfv r0 = r0.f9751a
            com.google.android.gms.measurement.internal.zzfd r0 = r0.m11349x()
            com.google.android.gms.measurement.internal.zzfj r0 = r0.f9181A
            r1 = r6
            r0.m11427b(r1)
            r0 = r5
            com.google.android.gms.measurement.internal.zzfv r0 = r0.f9751a
            com.google.android.gms.measurement.internal.zzfd r0 = r0.m11349x()
            com.google.android.gms.measurement.internal.zzfh r0 = r0.f9182B
            r1 = r5
            com.google.android.gms.measurement.internal.zzfv r1 = r1.f9751a
            com.google.android.gms.common.util.Clock r1 = r1.mo11085a()
            long r1 = r1.mo14335a()
            r0.m11432b(r1)
        L_0x00a9:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzp.m10923b(java.lang.String, android.os.Bundle):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public final void m10922c() {
        if (m10920e() && m10921d()) {
            this.f9751a.m11349x().f9181A.m11427b(null);
        }
    }
}
