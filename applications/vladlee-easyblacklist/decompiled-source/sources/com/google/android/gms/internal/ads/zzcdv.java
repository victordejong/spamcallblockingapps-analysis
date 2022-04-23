package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.zzq;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcdv.class */
public final class zzcdv {

    /* renamed from: b */
    private final Executor f12993b;

    /* renamed from: c */
    private final zzayy f12994c;

    /* renamed from: d */
    private final Context f12995d;

    /* renamed from: e */
    private final String f12996e;

    /* renamed from: a */
    private final String f12992a = zzaav.zzcsv.get();

    /* renamed from: f */
    private final Map<String, String> f12997f = new HashMap();

    public zzcdv(Executor executor, zzayy zzayyVar, Context context) {
        this.f12993b = executor;
        this.f12994c = zzayyVar;
        this.f12995d = context;
        this.f12996e = context.getPackageName();
        this.f12997f.put("s", "gmob_sdk");
        this.f12997f.put("v", "3");
        this.f12997f.put("os", Build.VERSION.RELEASE);
        this.f12997f.put("sdk", Build.VERSION.SDK);
        Map<String, String> map = this.f12997f;
        zzq.zzkq();
        map.put("device", zzawb.zzwl());
        this.f12997f.put("app", this.f12996e);
        Map<String, String> map2 = this.f12997f;
        zzq.zzkq();
        map2.put("is_lite_sdk", zzawb.zzay(this.f12995d) ? "1" : "0");
        this.f12997f.put("e", TextUtils.join(",", zzzn.zzqh()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ void m3806a(String str) {
        this.f12994c.zzen(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0080  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m3805a(java.util.Map<java.lang.String, java.lang.String> r7) {
        /*
            r6 = this;
            r0 = r6
            java.lang.String r0 = r0.f12992a
            android.net.Uri r0 = android.net.Uri.parse(r0)
            android.net.Uri$Builder r0 = r0.buildUpon()
            r8 = r0
            r0 = r7
            java.util.Set r0 = r0.entrySet()
            java.util.Iterator r0 = r0.iterator()
            r7 = r0
        L_0x0017:
            r0 = r7
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L_0x0044
            r0 = r7
            java.lang.Object r0 = r0.next()
            java.util.Map$Entry r0 = (java.util.Map.Entry) r0
            r9 = r0
            r0 = r8
            r1 = r9
            java.lang.Object r1 = r1.getKey()
            java.lang.String r1 = (java.lang.String) r1
            r2 = r9
            java.lang.Object r2 = r2.getValue()
            java.lang.String r2 = (java.lang.String) r2
            android.net.Uri$Builder r0 = r0.appendQueryParameter(r1, r2)
            goto L_0x0017
        L_0x0044:
            r0 = r8
            android.net.Uri r0 = r0.build()
            java.lang.String r0 = r0.toString()
            r7 = r0
            com.google.android.gms.internal.ads.zzaan<java.lang.Boolean> r0 = com.google.android.gms.internal.ads.zzaav.zzcsw
            java.lang.Object r0 = r0.get()
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            if (r0 != 0) goto L_0x0078
            com.google.android.gms.internal.ads.zzzc<java.lang.Boolean> r0 = com.google.android.gms.internal.ads.zzzn.zzcku
            r8 = r0
            com.google.android.gms.internal.ads.zzzj r0 = com.google.android.gms.internal.ads.zzve.zzoy()
            r1 = r8
            java.lang.Object r0 = r0.zzd(r1)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            if (r0 == 0) goto L_0x0072
            goto L_0x0078
        L_0x0072:
            r0 = 0
            r10 = r0
            goto L_0x007b
        L_0x0078:
            r0 = 1
            r10 = r0
        L_0x007b:
            r0 = r10
            if (r0 == 0) goto L_0x0092
            r0 = r6
            java.util.concurrent.Executor r0 = r0.f12993b
            com.google.android.gms.internal.ads.qq r1 = new com.google.android.gms.internal.ads.qq
            r2 = r1
            r3 = r6
            r4 = r7
            r2.<init>(r3, r4)
            r0.execute(r1)
        L_0x0092:
            r0 = r7
            com.google.android.gms.internal.ads.zzavs.zzed(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcdv.m3805a(java.util.Map):void");
    }

    public final Map<String, String> zzalg() {
        return new HashMap(this.f12997f);
    }

    public final ConcurrentHashMap<String, String> zzalh() {
        return new ConcurrentHashMap<>(this.f12997f);
    }
}
