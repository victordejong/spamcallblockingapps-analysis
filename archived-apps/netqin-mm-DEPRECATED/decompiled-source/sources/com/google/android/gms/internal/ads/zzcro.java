package com.google.android.gms.internal.ads;

import android.content.Context;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcro.class */
public final class zzcro implements zzdrp<zzcrn, zzcrq> {

    /* renamed from: a */
    public final Context f26428a;

    /* renamed from: b */
    public final String f26429b;

    /* renamed from: c */
    public final zzatt f26430c;

    /* renamed from: d */
    public final String f26431d;

    /* renamed from: e */
    public final int f26432e;

    public zzcro(Context context, String str, zzatt zzattVar, String str2, int i) {
        this.f26428a = context;
        this.f26429b = str;
        this.f26430c = zzattVar;
        this.f26431d = str2;
        this.f26432e = i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:119:0x038f, code lost:
        r0 = new java.lang.StringBuilder(46);
        r0.append("Received error HTTP response code: ");
        r0.append(r0);
        com.google.android.gms.internal.ads.zzbbq.m15852d(r0.toString());
        r0 = com.google.android.gms.internal.ads.zzdpg.INTERNAL_ERROR;
        r0 = new java.lang.StringBuilder(46);
        r0.append("Received error HTTP response code: ");
        r0.append(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x03d7, code lost:
        throw new com.google.android.gms.internal.ads.zzcof(r0, r0.toString());
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.internal.ads.zzcrq m13909a(java.lang.String r7, com.google.android.gms.internal.ads.zzati r8, org.json.JSONObject r9, java.lang.String r10) throws com.google.android.gms.internal.ads.zzcof {
        /*
            Method dump skipped, instructions count: 1064
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcro.m13909a(java.lang.String, com.google.android.gms.internal.ads.zzati, org.json.JSONObject, java.lang.String):com.google.android.gms.internal.ads.zzcrq");
    }

    @Override // com.google.android.gms.internal.ads.zzdrp
    public final /* synthetic */ zzcrq apply(zzcrn zzcrnVar) throws Exception {
        zzati zzatiVar;
        zzati zzatiVar2;
        JSONObject jSONObject;
        zzcrn zzcrnVar2 = zzcrnVar;
        zzatiVar = zzcrnVar2.f26427b;
        String b = zzatiVar.m16374b();
        zzatiVar2 = zzcrnVar2.f26427b;
        jSONObject = zzcrnVar2.f26426a;
        return m13909a(b, zzatiVar2, jSONObject, this.f26431d);
    }
}
