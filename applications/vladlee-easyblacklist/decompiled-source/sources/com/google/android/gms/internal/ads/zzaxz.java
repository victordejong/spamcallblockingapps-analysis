package com.google.android.gms.internal.ads;

import android.graphics.Bitmap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaxz.class */
public final class zzaxz {

    /* renamed from: a */
    private Map<Integer, Bitmap> f11516a = new ConcurrentHashMap();

    /* renamed from: b */
    private AtomicInteger f11517b = new AtomicInteger(0);

    public final Bitmap zza(Integer num) {
        return this.f11516a.get(num);
    }
}
