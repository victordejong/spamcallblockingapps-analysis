package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.PackageManager;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdam.class */
public final class zzdam {

    /* renamed from: a */
    private final Map<String, zzdao> f14116a = new HashMap();

    /* renamed from: b */
    private final Context f14117b;

    /* renamed from: c */
    private final zzave f14118c;

    /* renamed from: d */
    private final zzazb f14119d;

    public zzdam(Context context, zzazb zzazbVar, zzave zzaveVar) {
        this.f14117b = context;
        this.f14119d = zzazbVar;
        this.f14118c = zzaveVar;
    }

    /* renamed from: a */
    private final zzdao m3631a() {
        return new zzdao(this.f14117b, this.f14118c.zzvf(), this.f14118c.zzvh(), (byte) 0);
    }

    /* renamed from: a */
    private final zzdao m3630a(String str) {
        zzarf zzz = zzarf.zzz(this.f14117b);
        try {
            zzz.setAppPackageName(str);
            zzavx zzavxVar = new zzavx();
            zzavxVar.zza(this.f14117b, str, false);
            zzavy zzavyVar = new zzavy(this.f14118c.zzvf(), zzavxVar);
            return new zzdao(zzz, zzavyVar, new zzavp(zzayk.zzxf(), zzavyVar), (byte) 0);
        } catch (PackageManager.NameNotFoundException e) {
            return m3631a();
        }
    }

    public final zzdao zzgl(String str) {
        if (str == null) {
            return m3631a();
        }
        if (this.f14116a.containsKey(str)) {
            return this.f14116a.get(str);
        }
        zzdao a = m3630a(str);
        this.f14116a.put(str, a);
        return a;
    }
}
