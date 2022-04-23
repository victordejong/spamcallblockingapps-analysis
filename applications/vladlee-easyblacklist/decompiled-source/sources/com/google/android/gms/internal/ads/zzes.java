package com.google.android.gms.internal.ads;

import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzes.class */
public final class zzes extends zzcj<Integer, Long> {
    public Long zzzf;
    public Long zzzg;
    public Long zzzh;
    public Long zzzi;

    public zzes() {
    }

    public zzes(String str) {
        mo3274a(str);
    }

    @Override // com.google.android.gms.internal.ads.zzcj
    /* renamed from: a */
    protected final HashMap<Integer, Long> mo3275a() {
        HashMap<Integer, Long> hashMap = new HashMap<>();
        hashMap.put(0, this.zzzf);
        hashMap.put(1, this.zzzg);
        hashMap.put(2, this.zzzh);
        hashMap.put(3, this.zzzi);
        return hashMap;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzcj
    /* renamed from: a */
    public final void mo3274a(String str) {
        HashMap b = m3757b(str);
        if (b != null) {
            this.zzzf = (Long) b.get(0);
            this.zzzg = (Long) b.get(1);
            this.zzzh = (Long) b.get(2);
            this.zzzi = (Long) b.get(3);
        }
    }
}
