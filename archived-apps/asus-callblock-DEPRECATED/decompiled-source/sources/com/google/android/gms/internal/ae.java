package com.google.android.gms.internal;

import com.google.android.gms.analytics.zzg;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ae.class */
public final class ae extends zzg<ae> {

    /* renamed from: a  reason: collision with root package name */
    public Map<Integer, Double> f4101a = new HashMap(4);

    public final String toString() {
        HashMap hashMap = new HashMap();
        for (Map.Entry<Integer, Double> entry : this.f4101a.entrySet()) {
            String valueOf = String.valueOf(entry.getKey());
            hashMap.put(new StringBuilder(String.valueOf(valueOf).length() + 6).append("metric").append(valueOf).toString(), entry.getValue());
        }
        return zzj(hashMap);
    }

    @Override // com.google.android.gms.analytics.zzg
    public final /* synthetic */ void zzb(ae aeVar) {
        aeVar.f4101a.putAll(this.f4101a);
    }
}
