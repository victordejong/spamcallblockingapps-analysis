package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcdu.class */
public final class zzcdu implements zzdcx {

    /* renamed from: b */
    private final zzcds f12989b;

    /* renamed from: c */
    private final Clock f12990c;

    /* renamed from: a */
    private final Map<zzdco, Long> f12988a = new HashMap();

    /* renamed from: d */
    private final Map<zzdco, C2175qp> f12991d = new HashMap();

    public zzcdu(zzcds zzcdsVar, Set<C2175qp> set, Clock clock) {
        zzdco zzdcoVar;
        this.f12989b = zzcdsVar;
        for (C2175qp qpVar : set) {
            Map<zzdco, C2175qp> map = this.f12991d;
            zzdcoVar = qpVar.f10373c;
            map.put(zzdcoVar, qpVar);
        }
        this.f12990c = clock;
    }

    /* renamed from: a */
    private final void m3807a(zzdco zzdcoVar, boolean z) {
        zzdco zzdcoVar2;
        String str;
        zzdcoVar2 = this.f12991d.get(zzdcoVar).f10372b;
        String str2 = z ? "s." : "f.";
        if (this.f12988a.containsKey(zzdcoVar2)) {
            long elapsedRealtime = this.f12990c.elapsedRealtime();
            long longValue = this.f12988a.get(zzdcoVar2).longValue();
            Map<String, String> zzqu = this.f12989b.zzqu();
            str = this.f12991d.get(zzdcoVar).f10371a;
            String valueOf = String.valueOf(str);
            String concat = valueOf.length() != 0 ? "label.".concat(valueOf) : new String("label.");
            String valueOf2 = String.valueOf(Long.toString(elapsedRealtime - longValue));
            zzqu.put(concat, valueOf2.length() != 0 ? str2.concat(valueOf2) : new String(str2));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdcx
    public final void zza(zzdco zzdcoVar, String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzdcx
    public final void zza(zzdco zzdcoVar, String str, Throwable th) {
        if (this.f12988a.containsKey(zzdcoVar)) {
            long elapsedRealtime = this.f12990c.elapsedRealtime();
            long longValue = this.f12988a.get(zzdcoVar).longValue();
            Map<String, String> zzqu = this.f12989b.zzqu();
            String valueOf = String.valueOf(str);
            String concat = valueOf.length() != 0 ? "task.".concat(valueOf) : new String("task.");
            String valueOf2 = String.valueOf(Long.toString(elapsedRealtime - longValue));
            zzqu.put(concat, valueOf2.length() != 0 ? "f.".concat(valueOf2) : new String("f."));
        }
        if (this.f12991d.containsKey(zzdcoVar)) {
            m3807a(zzdcoVar, false);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdcx
    public final void zzb(zzdco zzdcoVar, String str) {
        this.f12988a.put(zzdcoVar, Long.valueOf(this.f12990c.elapsedRealtime()));
    }

    @Override // com.google.android.gms.internal.ads.zzdcx
    public final void zzc(zzdco zzdcoVar, String str) {
        if (this.f12988a.containsKey(zzdcoVar)) {
            long elapsedRealtime = this.f12990c.elapsedRealtime();
            long longValue = this.f12988a.get(zzdcoVar).longValue();
            Map<String, String> zzqu = this.f12989b.zzqu();
            String valueOf = String.valueOf(str);
            String concat = valueOf.length() != 0 ? "task.".concat(valueOf) : new String("task.");
            String valueOf2 = String.valueOf(Long.toString(elapsedRealtime - longValue));
            zzqu.put(concat, valueOf2.length() != 0 ? "s.".concat(valueOf2) : new String("s."));
        }
        if (this.f12991d.containsKey(zzdcoVar)) {
            m3807a(zzdcoVar, true);
        }
    }
}
