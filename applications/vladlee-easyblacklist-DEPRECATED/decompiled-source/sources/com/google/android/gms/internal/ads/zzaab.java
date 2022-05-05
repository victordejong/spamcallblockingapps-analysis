package com.google.android.gms.internal.ads;

import java.util.HashMap;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaab.class */
public final class zzaab {

    /* renamed from: a */
    private final Map<String, zzaac> f10794a = new HashMap();

    /* renamed from: b */
    private final zzaae f10795b;

    public zzaab(zzaae zzaaeVar) {
        this.f10795b = zzaaeVar;
    }

    public final void zza(String str, zzaac zzaacVar) {
        this.f10794a.put(str, zzaacVar);
    }

    public final void zza(String str, String str2, long j) {
        zzaae zzaaeVar = this.f10795b;
        zzaac zzaacVar = this.f10794a.get(str2);
        if (!(zzaaeVar == null || zzaacVar == null)) {
            zzaaeVar.zza(zzaacVar, j, str);
        }
        Map<String, zzaac> map = this.f10794a;
        zzaae zzaaeVar2 = this.f10795b;
        map.put(str, zzaaeVar2 == null ? null : zzaaeVar2.zzex(j));
    }

    public final zzaae zzqp() {
        return this.f10795b;
    }
}
