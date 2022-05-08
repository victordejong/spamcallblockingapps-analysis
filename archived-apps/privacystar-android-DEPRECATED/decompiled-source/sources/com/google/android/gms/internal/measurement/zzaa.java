package com.google.android.gms.internal.measurement;

import com.google.android.gms.analytics.zzi;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzaa.class */
public final class zzaa extends zzi<zzaa> {
    private Map<Integer, Double> zzue = new HashMap(4);

    public final String toString() {
        HashMap hashMap = new HashMap();
        for (Map.Entry<Integer, Double> entry : this.zzue.entrySet()) {
            String valueOf = String.valueOf(entry.getKey());
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 6);
            sb.append("metric");
            sb.append(valueOf);
            hashMap.put(sb.toString(), entry.getValue());
        }
        return zza((Object) hashMap);
    }

    public final Map<Integer, Double> zzav() {
        return Collections.unmodifiableMap(this.zzue);
    }

    @Override // com.google.android.gms.analytics.zzi
    public final /* synthetic */ void zzb(zzaa zzaaVar) {
        zzaaVar.zzue.putAll(this.zzue);
    }
}
