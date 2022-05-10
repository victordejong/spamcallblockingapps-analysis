package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import com.google.android.gms.internal.ads.zzbtm;
import com.google.android.gms.internal.ads.zzdzc;
import java.util.List;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbtm.class */
public final class zzbtm {

    /* renamed from: a */
    public final zzdsi f25504a;

    /* renamed from: b */
    public final zzbbx f25505b;

    /* renamed from: c */
    public final ApplicationInfo f25506c;

    /* renamed from: d */
    public final String f25507d;

    /* renamed from: e */
    public final List<String> f25508e;

    /* renamed from: f */
    public final PackageInfo f25509f;

    /* renamed from: g */
    public final zzeos<zzdzc<String>> f25510g;

    /* renamed from: h */
    public final zzayr f25511h;

    /* renamed from: i */
    public final String f25512i;

    /* renamed from: j */
    public final zzdgw<Bundle> f25513j;

    public zzbtm(zzdsi zzdsiVar, zzbbx zzbbxVar, ApplicationInfo applicationInfo, String str, List<String> list, PackageInfo packageInfo, zzeos<zzdzc<String>> zzeosVar, zzayr zzayrVar, String str2, zzdgw<Bundle> zzdgwVar) {
        this.f25504a = zzdsiVar;
        this.f25505b = zzbbxVar;
        this.f25506c = applicationInfo;
        this.f25507d = str;
        this.f25508e = list;
        this.f25509f = packageInfo;
        this.f25510g = zzeosVar;
        this.f25511h = zzayrVar;
        this.f25512i = str2;
        this.f25513j = zzdgwVar;
    }

    /* renamed from: a */
    public final /* synthetic */ zzatc m15077a(zzdzc zzdzcVar) throws Exception {
        return new zzatc((Bundle) zzdzcVar.get(), this.f25505b, this.f25506c, this.f25507d, this.f25508e, this.f25509f, this.f25510g.get().get(), this.f25511h.mo16060d(), this.f25512i, null, null);
    }

    /* renamed from: a */
    public final zzdzc<Bundle> m15078a() {
        return this.f25504a.m13273a((zzdsi) zzdsf.SIGNALS).m13266a(this.f25513j.m13602a(new Bundle())).m13263a();
    }

    /* renamed from: b */
    public final zzdzc<zzatc> m15076b() {
        final zzdzc<Bundle> a = m15078a();
        return this.f25504a.m13271a((zzdsi) zzdsf.REQUEST_PARCEL, a, this.f25510g.get()).m13268a(new Callable(this, a) { // from class: c.d.b.d.g.a.ld

            /* renamed from: a */
            public final zzbtm f13955a;

            /* renamed from: b */
            public final zzdzc f13956b;

            {
                this.f13955a = this;
                this.f13956b = a;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f13955a.m15077a(this.f13956b);
            }
        }).m13263a();
    }
}
