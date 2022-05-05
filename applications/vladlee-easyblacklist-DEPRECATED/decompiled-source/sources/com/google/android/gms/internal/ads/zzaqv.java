package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.WeakHashMap;
import java.util.concurrent.Future;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaqv.class */
public final class zzaqv {

    /* renamed from: a */
    private WeakHashMap<Context, C1819dk> f11319a = new WeakHashMap<>();

    public final Future<zzaqt> zzx(Context context) {
        return zzazd.zzdwe.zzd(new CallableC1818dj(this, context));
    }
}
