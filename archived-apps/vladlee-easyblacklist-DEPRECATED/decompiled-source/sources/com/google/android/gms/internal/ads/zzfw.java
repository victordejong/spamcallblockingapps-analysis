package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbs;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfw.class */
public abstract class zzfw implements Callable {

    /* renamed from: a */
    protected final zzei f14794a;

    /* renamed from: b */
    protected final zzbs.zza.zzb f14795b;

    /* renamed from: c */
    protected Method f14796c;

    /* renamed from: d */
    private final String f14797d = getClass().getSimpleName();

    /* renamed from: e */
    private final String f14798e;

    /* renamed from: f */
    private final String f14799f;

    /* renamed from: g */
    private final int f14800g;

    /* renamed from: h */
    private final int f14801h;

    public zzfw(zzei zzeiVar, String str, String str2, zzbs.zza.zzb zzbVar, int i, int i2) {
        this.f14794a = zzeiVar;
        this.f14798e = str;
        this.f14799f = str2;
        this.f14795b = zzbVar;
        this.f14800g = i;
        this.f14801h = i2;
    }

    /* renamed from: a */
    protected abstract void mo3267a();

    /* renamed from: zzcp */
    public Void call() {
        try {
            long nanoTime = System.nanoTime();
            this.f14796c = this.f14794a.zza(this.f14798e, this.f14799f);
            if (this.f14796c == null) {
                return null;
            }
            mo3267a();
            zzde zzcc = this.f14794a.zzcc();
            if (zzcc == null || this.f14800g == Integer.MIN_VALUE) {
                return null;
            }
            zzcc.zza(this.f14801h, this.f14800g, (System.nanoTime() - nanoTime) / 1000);
            return null;
        } catch (IllegalAccessException | InvocationTargetException e) {
            return null;
        }
    }
}
