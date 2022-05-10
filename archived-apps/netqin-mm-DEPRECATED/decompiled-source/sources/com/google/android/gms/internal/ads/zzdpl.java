package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.PackageManager;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdpl.class */
public final class zzdpl {

    /* renamed from: a */
    public final Map<String, zzdpn> f27700a = new HashMap();

    /* renamed from: b */
    public final Context f27701b;

    /* renamed from: c */
    public final zzayb f27702c;

    /* renamed from: d */
    public final zzbbx f27703d;

    public zzdpl(Context context, zzbbx zzbbxVar, zzayb zzaybVar) {
        this.f27701b = context;
        this.f27703d = zzbbxVar;
        this.f27702c = zzaybVar;
    }

    /* renamed from: a */
    public final zzdpn m13332a() {
        return new zzdpn(this.f27701b, this.f27702c.m16176i(), this.f27702c.m16174k());
    }

    /* renamed from: a */
    public final zzdpn m13331a(String str) {
        if (str == null) {
            return m13332a();
        }
        if (this.f27700a.containsKey(str)) {
            return this.f27700a.get(str);
        }
        zzdpn b = m13330b(str);
        this.f27700a.put(str, b);
        return b;
    }

    /* renamed from: b */
    public final zzdpn m13330b(String str) {
        zzatx a = zzatx.m16351a(this.f27701b);
        try {
            a.m16349a(str);
            zzayq zzayqVar = new zzayq();
            zzayqVar.m16151a(this.f27701b, str, false);
            zzayv zzayvVar = new zzayv(this.f27702c.m16176i(), zzayqVar);
            return new zzdpn(a, zzayvVar, new zzayi(zzbbg.m15894c(), zzayvVar));
        } catch (PackageManager.NameNotFoundException e) {
            return m13332a();
        }
    }
}
