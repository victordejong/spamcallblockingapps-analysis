package com.google.android.gms.internal.ads;

import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcl.class */
public final class zzcl extends zzcj<Integer, Object> {
    public String zzmv;
    public long zzmw;
    public String zzmx;
    public String zzmy;
    public String zzmz;

    public zzcl() {
        this.zzmv = "E";
        this.zzmw = -1L;
        this.zzmx = "E";
        this.zzmy = "E";
        this.zzmz = "E";
    }

    public zzcl(String str) {
        this();
        mo3274a(str);
    }

    @Override // com.google.android.gms.internal.ads.zzcj
    /* renamed from: a */
    protected final HashMap<Integer, Object> mo3275a() {
        HashMap<Integer, Object> hashMap = new HashMap<>();
        hashMap.put(0, this.zzmv);
        hashMap.put(4, this.zzmz);
        hashMap.put(3, this.zzmy);
        hashMap.put(2, this.zzmx);
        hashMap.put(1, Long.valueOf(this.zzmw));
        return hashMap;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzcj
    /* renamed from: a */
    public final void mo3274a(String str) {
        HashMap b = m3757b(str);
        if (b != null) {
            String str2 = "E";
            this.zzmv = b.get(0) == null ? "E" : (String) b.get(0);
            this.zzmw = b.get(1) == null ? -1L : ((Long) b.get(1)).longValue();
            this.zzmx = b.get(2) == null ? "E" : (String) b.get(2);
            this.zzmy = b.get(3) == null ? "E" : (String) b.get(3);
            if (b.get(4) != null) {
                str2 = (String) b.get(4);
            }
            this.zzmz = str2;
        }
    }
}
