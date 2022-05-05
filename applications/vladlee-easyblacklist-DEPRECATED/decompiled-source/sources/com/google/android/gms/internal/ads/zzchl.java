package com.google.android.gms.internal.ads;

import android.content.Context;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzchl.class */
public final class zzchl implements zzdby<zzcho, zzchn> {

    /* renamed from: a */
    private final Context f13130a;

    /* renamed from: b */
    private final String f13131b;

    /* renamed from: c */
    private final zzarb f13132c;

    /* renamed from: d */
    private final String f13133d;

    public zzchl(Context context, String str, zzarb zzarbVar, String str2) {
        this.f13130a = context;
        this.f13131b = str;
        this.f13132c = zzarbVar;
        this.f13133d = str2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:119:0x0387, code lost:
        r0 = new java.lang.StringBuilder(46);
        r0.append("Received error HTTP response code: ");
        r0.append(r0);
        com.google.android.gms.internal.ads.zzavs.zzez(r0.toString());
        r0 = new java.lang.StringBuilder(46);
        r0.append("Received error HTTP response code: ");
        r0.append(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x03ca, code lost:
        throw new com.google.android.gms.internal.ads.zzcgt(r0.toString());
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final com.google.android.gms.internal.ads.zzchn m3773a(java.lang.String r7, com.google.android.gms.internal.ads.zzaqq r8, org.json.JSONObject r9, java.lang.String r10) {
        /*
            Method dump skipped, instructions count: 1077
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzchl.m3773a(java.lang.String, com.google.android.gms.internal.ads.zzaqq, org.json.JSONObject, java.lang.String):com.google.android.gms.internal.ads.zzchn");
    }

    @Override // com.google.android.gms.internal.ads.zzdby
    public final /* synthetic */ zzchn apply(zzcho zzchoVar) {
        zzaqq zzaqqVar;
        zzaqq zzaqqVar2;
        JSONObject jSONObject;
        zzcho zzchoVar2 = zzchoVar;
        zzaqqVar = zzchoVar2.f13145b;
        String url = zzaqqVar.getUrl();
        zzaqqVar2 = zzchoVar2.f13145b;
        jSONObject = zzchoVar2.f13144a;
        return m3773a(url, zzaqqVar2, jSONObject, this.f13133d);
    }
}
