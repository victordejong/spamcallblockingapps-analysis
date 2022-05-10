package com.google.android.gms.internal.ads;

import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzabp.class */
public final class zzabp {

    /* renamed from: a */
    public final Map<String, zzabq> f23940a = new HashMap();

    /* renamed from: b */
    public final zzabs f23941b;

    public zzabp(zzabs zzabsVar) {
        this.f23941b = zzabsVar;
    }

    /* renamed from: a */
    public final zzabs m16892a() {
        return this.f23941b;
    }

    /* renamed from: a */
    public final void m16891a(String str, zzabq zzabqVar) {
        this.f23940a.put(str, zzabqVar);
    }

    /* renamed from: a */
    public final void m16890a(String str, String str2, long j) {
        zzabs zzabsVar = this.f23941b;
        zzabq zzabqVar = this.f23940a.get(str2);
        if (!(zzabsVar == null || zzabqVar == null)) {
            zzabsVar.m16884a(zzabqVar, j, str);
        }
        Map<String, zzabq> map = this.f23940a;
        zzabs zzabsVar2 = this.f23941b;
        map.put(str, zzabsVar2 == null ? null : zzabsVar2.m16885a(j));
    }
}
