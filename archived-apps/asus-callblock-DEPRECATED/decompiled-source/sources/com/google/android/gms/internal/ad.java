package com.google.android.gms.internal;

import com.google.android.gms.analytics.zzg;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ad.class */
public final class ad extends zzg<ad> {

    /* renamed from: a  reason: collision with root package name */
    public Map<Integer, String> f4100a = new HashMap(4);

    public final String toString() {
        HashMap hashMap = new HashMap();
        for (Map.Entry<Integer, String> entry : this.f4100a.entrySet()) {
            String valueOf = String.valueOf(entry.getKey());
            hashMap.put(new StringBuilder(String.valueOf(valueOf).length() + 9).append("dimension").append(valueOf).toString(), entry.getValue());
        }
        return zzj(hashMap);
    }

    @Override // com.google.android.gms.analytics.zzg
    public final /* synthetic */ void zzb(ad adVar) {
        adVar.f4100a.putAll(this.f4100a);
    }
}
