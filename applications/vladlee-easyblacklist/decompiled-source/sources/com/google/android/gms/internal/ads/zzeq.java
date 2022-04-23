package com.google.android.gms.internal.ads;

import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeq.class */
public final class zzeq extends zzcj<Integer, Long> {
    public Long zzyj;
    public Long zzyk;
    public Long zzyl;
    public Long zzym;
    public Long zzyn;
    public Long zzyo;
    public Long zzyp;
    public Long zzyq;
    public Long zzyr;
    public Long zzys;
    public Long zzyt;

    public zzeq() {
    }

    public zzeq(String str) {
        mo3274a(str);
    }

    @Override // com.google.android.gms.internal.ads.zzcj
    /* renamed from: a */
    protected final HashMap<Integer, Long> mo3275a() {
        HashMap<Integer, Long> hashMap = new HashMap<>();
        hashMap.put(0, this.zzyj);
        hashMap.put(1, this.zzyk);
        hashMap.put(2, this.zzyl);
        hashMap.put(3, this.zzym);
        hashMap.put(4, this.zzyn);
        hashMap.put(5, this.zzyo);
        hashMap.put(6, this.zzyp);
        hashMap.put(7, this.zzyq);
        hashMap.put(8, this.zzyr);
        hashMap.put(9, this.zzys);
        hashMap.put(10, this.zzyt);
        return hashMap;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzcj
    /* renamed from: a */
    public final void mo3274a(String str) {
        HashMap b = m3757b(str);
        if (b != null) {
            this.zzyj = (Long) b.get(0);
            this.zzyk = (Long) b.get(1);
            this.zzyl = (Long) b.get(2);
            this.zzym = (Long) b.get(3);
            this.zzyn = (Long) b.get(4);
            this.zzyo = (Long) b.get(5);
            this.zzyp = (Long) b.get(6);
            this.zzyq = (Long) b.get(7);
            this.zzyr = (Long) b.get(8);
            this.zzys = (Long) b.get(9);
            this.zzyt = (Long) b.get(10);
        }
    }
}
