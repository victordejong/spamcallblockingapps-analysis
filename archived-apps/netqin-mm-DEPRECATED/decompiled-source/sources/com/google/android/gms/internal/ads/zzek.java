package com.google.android.gms.internal.ads;

import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzek.class */
public final class zzek extends zzcu<Integer, Long> {

    /* renamed from: b */
    public long f28086b;

    /* renamed from: c */
    public long f28087c;

    public zzek() {
        this.f28086b = -1L;
        this.f28087c = -1L;
    }

    public zzek(String str) {
        this();
        m12376b(str);
    }

    @Override // com.google.android.gms.internal.ads.zzcu
    /* renamed from: a */
    public final HashMap<Integer, Long> mo12145a() {
        HashMap<Integer, Long> hashMap = new HashMap<>();
        hashMap.put(0, Long.valueOf(this.f28086b));
        hashMap.put(1, Long.valueOf(this.f28087c));
        return hashMap;
    }

    /* renamed from: b */
    public final void m12376b(String str) {
        HashMap a = zzcu.m13859a(str);
        if (a != null) {
            this.f28086b = ((Long) a.get(0)).longValue();
            this.f28087c = ((Long) a.get(1)).longValue();
        }
    }
}
