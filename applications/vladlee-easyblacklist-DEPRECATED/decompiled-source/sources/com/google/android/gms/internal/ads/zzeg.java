package com.google.android.gms.internal.ads;

import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeg.class */
public final class zzeg extends zzcj<Integer, Object> {
    public Long zzxh;
    public Boolean zzxi;
    public Boolean zzxj;

    public zzeg() {
    }

    public zzeg(String str) {
        mo3274a(str);
    }

    @Override // com.google.android.gms.internal.ads.zzcj
    /* renamed from: a */
    protected final HashMap<Integer, Object> mo3275a() {
        HashMap<Integer, Object> hashMap = new HashMap<>();
        hashMap.put(0, this.zzxh);
        hashMap.put(1, this.zzxi);
        hashMap.put(2, this.zzxj);
        return hashMap;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzcj
    /* renamed from: a */
    public final void mo3274a(String str) {
        HashMap b = m3757b(str);
        if (b != null) {
            this.zzxh = (Long) b.get(0);
            this.zzxi = (Boolean) b.get(1);
            this.zzxj = (Boolean) b.get(2);
        }
    }
}
