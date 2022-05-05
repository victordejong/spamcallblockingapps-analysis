package com.google.android.gms.internal.ads;

import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzej.class */
public final class zzej extends zzcj<Integer, Long> {
    public Long zzya;
    public Long zzyb;

    public zzej() {
    }

    public zzej(String str) {
        mo3274a(str);
    }

    @Override // com.google.android.gms.internal.ads.zzcj
    /* renamed from: a */
    protected final HashMap<Integer, Long> mo3275a() {
        HashMap<Integer, Long> hashMap = new HashMap<>();
        hashMap.put(0, this.zzya);
        hashMap.put(1, this.zzyb);
        return hashMap;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzcj
    /* renamed from: a */
    public final void mo3274a(String str) {
        HashMap b = m3757b(str);
        if (b != null) {
            this.zzya = (Long) b.get(0);
            this.zzyb = (Long) b.get(1);
        }
    }
}
