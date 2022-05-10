package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.internal.ads.zzcf;
import java.lang.reflect.InvocationTargetException;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfl.class */
public final class zzfl extends zzgm {

    /* renamed from: i */
    public static zzgl<String> f28206i = new zzgl<>();

    /* renamed from: h */
    public final Context f28207h;

    public zzfl(zzex zzexVar, String str, String str2, zzcf.zza.C10493zza zzaVar, int i, int i2, Context context) {
        super(zzexVar, str, str2, zzaVar, i, 29);
        this.f28207h = context;
    }

    @Override // com.google.android.gms.internal.ads.zzgm
    /* renamed from: a */
    public final void mo12118a() throws IllegalAccessException, InvocationTargetException {
        this.f28238d.m14494g("E");
        AtomicReference<String> a = f28206i.m12119a(this.f28207h.getPackageName());
        if (a.get() == null) {
            synchronized (a) {
                if (a.get() == null) {
                    a.set((String) this.f28239e.invoke(null, this.f28207h));
                }
            }
        }
        String str = a.get();
        synchronized (this.f28238d) {
            this.f28238d.m14494g(zzcv.m13832a(str.getBytes(), true));
        }
    }
}
