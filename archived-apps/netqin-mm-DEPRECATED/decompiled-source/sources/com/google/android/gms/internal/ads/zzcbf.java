package com.google.android.gms.internal.ads;

import android.view.View;
import com.google.android.gms.internal.ads.zzbgj;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcbf.class */
public class zzcbf {

    /* renamed from: a */
    public final zzccm f25671a;

    /* renamed from: b */
    public final zzbgj f25672b;

    public zzcbf(zzccm zzccmVar) {
        this(zzccmVar, null);
    }

    public zzcbf(zzccm zzccmVar, zzbgj zzbgjVar) {
        this.f25671a = zzccmVar;
        this.f25672b = zzbgjVar;
    }

    /* renamed from: a */
    public final zzbgj m14848a() {
        return this.f25672b;
    }

    /* renamed from: a */
    public final zzcab<zzbxz> m14846a(Executor executor) {
        final zzbgj zzbgjVar = this.f25672b;
        return new zzcab<>(new zzbxz(zzbgjVar) { // from class: c.d.b.d.g.a.yg

            /* renamed from: a */
            public final zzbgj f16217a;

            {
                this.f16217a = zzbgjVar;
            }

            @Override // com.google.android.gms.internal.ads.zzbxz
            /* renamed from: n */
            public final void mo14957n() {
                zzbgj zzbgjVar2 = this.f16217a;
                if (zzbgjVar2.mo15595O() != null) {
                    zzbgjVar2.mo15595O().m18018Q1();
                }
            }
        }, executor);
    }

    /* renamed from: a */
    public Set<zzcab<zzbuh>> mo14847a(zzbtd zzbtdVar) {
        return Collections.singleton(zzcab.m14868a(zzbtdVar, zzbbz.f24769f));
    }

    /* renamed from: b */
    public final zzccm m14845b() {
        return this.f25671a;
    }

    /* renamed from: b */
    public Set<zzcab<zzbzu>> mo14844b(zzbtd zzbtdVar) {
        return Collections.singleton(zzcab.m14868a(zzbtdVar, zzbbz.f24769f));
    }

    /* renamed from: c */
    public final View m14843c() {
        zzbgj zzbgjVar = this.f25672b;
        if (zzbgjVar != null) {
            return zzbgjVar.getWebView();
        }
        return null;
    }

    /* renamed from: d */
    public final View m14842d() {
        zzbgj zzbgjVar = this.f25672b;
        if (zzbgjVar == null) {
            return null;
        }
        return zzbgjVar.getWebView();
    }
}
