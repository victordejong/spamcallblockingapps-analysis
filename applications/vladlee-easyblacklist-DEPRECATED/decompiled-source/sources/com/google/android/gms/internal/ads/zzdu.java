package com.google.android.gms.internal.ads;

import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdu.class */
public final class zzdu extends zzcj<Integer, Long> {
    public long zzwx;
    public long zzwy;

    public zzdu() {
        this.zzwx = -1L;
        this.zzwy = -1L;
    }

    public zzdu(String str) {
        this();
        mo3274a(str);
    }

    @Override // com.google.android.gms.internal.ads.zzcj
    /* renamed from: a */
    protected final HashMap<Integer, Long> mo3275a() {
        HashMap<Integer, Long> hashMap = new HashMap<>();
        hashMap.put(0, Long.valueOf(this.zzwx));
        hashMap.put(1, Long.valueOf(this.zzwy));
        return hashMap;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzcj
    /* renamed from: a */
    public final void mo3274a(String str) {
        HashMap b = m3757b(str);
        if (b != null) {
            this.zzwx = ((Long) b.get(0)).longValue();
            this.zzwy = ((Long) b.get(1)).longValue();
        }
    }
}
