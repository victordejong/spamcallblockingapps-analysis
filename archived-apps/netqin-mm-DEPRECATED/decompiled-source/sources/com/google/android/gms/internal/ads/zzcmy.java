package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import p131c.p161d.p170b.p224d.p252g.p253a.C3549fl;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcmy.class */
public final class zzcmy implements zzdso {

    /* renamed from: b */
    public final zzcms f26269b;

    /* renamed from: c */
    public final Clock f26270c;

    /* renamed from: a */
    public final Map<zzdsf, Long> f26268a = new HashMap();

    /* renamed from: d */
    public final Map<zzdsf, C3549fl> f26271d = new HashMap();

    public zzcmy(zzcms zzcmsVar, Set<C3549fl> set, Clock clock) {
        zzdsf zzdsfVar;
        this.f26269b = zzcmsVar;
        for (C3549fl flVar : set) {
            Map<zzdsf, C3549fl> map = this.f26271d;
            zzdsfVar = flVar.f12983c;
            map.put(zzdsfVar, flVar);
        }
        this.f26270c = clock;
    }

    @Override // com.google.android.gms.internal.ads.zzdso
    /* renamed from: a */
    public final void mo13247a(zzdsf zzdsfVar, String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzdso
    /* renamed from: a */
    public final void mo13246a(zzdsf zzdsfVar, String str, Throwable th) {
        if (this.f26268a.containsKey(zzdsfVar)) {
            long a = this.f26270c.mo17092a();
            long longValue = this.f26268a.get(zzdsfVar).longValue();
            Map<String, String> a2 = this.f26269b.m14053a();
            String valueOf = String.valueOf(str);
            String concat = valueOf.length() != 0 ? "task.".concat(valueOf) : new String("task.");
            String valueOf2 = String.valueOf(Long.toString(a - longValue));
            a2.put(concat, valueOf2.length() != 0 ? "f.".concat(valueOf2) : new String("f."));
        }
        if (this.f26271d.containsKey(zzdsfVar)) {
            m14038a(zzdsfVar, false);
        }
    }

    /* renamed from: a */
    public final void m14038a(zzdsf zzdsfVar, boolean z) {
        zzdsf zzdsfVar2;
        String str;
        zzdsfVar2 = this.f26271d.get(zzdsfVar).f12982b;
        String str2 = z ? "s." : "f.";
        if (this.f26268a.containsKey(zzdsfVar2)) {
            long a = this.f26270c.mo17092a();
            long longValue = this.f26268a.get(zzdsfVar2).longValue();
            Map<String, String> a2 = this.f26269b.m14053a();
            str = this.f26271d.get(zzdsfVar).f12981a;
            String valueOf = String.valueOf(str);
            String concat = valueOf.length() != 0 ? "label.".concat(valueOf) : new String("label.");
            String valueOf2 = String.valueOf(Long.toString(a - longValue));
            a2.put(concat, valueOf2.length() != 0 ? str2.concat(valueOf2) : new String(str2));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdso
    /* renamed from: b */
    public final void mo13245b(zzdsf zzdsfVar, String str) {
        this.f26268a.put(zzdsfVar, Long.valueOf(this.f26270c.mo17092a()));
    }

    @Override // com.google.android.gms.internal.ads.zzdso
    /* renamed from: c */
    public final void mo13244c(zzdsf zzdsfVar, String str) {
        if (this.f26268a.containsKey(zzdsfVar)) {
            long a = this.f26270c.mo17092a();
            long longValue = this.f26268a.get(zzdsfVar).longValue();
            Map<String, String> a2 = this.f26269b.m14053a();
            String valueOf = String.valueOf(str);
            String concat = valueOf.length() != 0 ? "task.".concat(valueOf) : new String("task.");
            String valueOf2 = String.valueOf(Long.toString(a - longValue));
            a2.put(concat, valueOf2.length() != 0 ? "s.".concat(valueOf2) : new String("s."));
        }
        if (this.f26271d.containsKey(zzdsfVar)) {
            m14038a(zzdsfVar, true);
        }
    }
}
