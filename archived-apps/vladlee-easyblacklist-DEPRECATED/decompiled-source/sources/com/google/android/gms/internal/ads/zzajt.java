package com.google.android.gms.internal.ads;

import android.content.Context;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzajt.class */
public final class zzajt {

    /* renamed from: a */
    private final Object f10956a = new Object();

    /* renamed from: b */
    private final Object f10957b = new Object();

    /* renamed from: c */
    private zzakc f10958c;

    /* renamed from: d */
    private zzakc f10959d;

    /* renamed from: a */
    private static Context m4379a(Context context) {
        Context applicationContext = context.getApplicationContext();
        return applicationContext == null ? context : applicationContext;
    }

    public final zzakc zza(Context context, zzazb zzazbVar) {
        zzakc zzakcVar;
        synchronized (this.f10957b) {
            if (this.f10959d == null) {
                this.f10959d = new zzakc(m4379a(context), zzazbVar, zzabh.zzcuh.get());
            }
            zzakcVar = this.f10959d;
        }
        return zzakcVar;
    }

    public final zzakc zzb(Context context, zzazb zzazbVar) {
        zzakc zzakcVar;
        synchronized (this.f10956a) {
            if (this.f10958c == null) {
                this.f10958c = new zzakc(m4379a(context), zzazbVar, (String) zzve.zzoy().zzd(zzzn.zzcgh));
            }
            zzakcVar = this.f10958c;
        }
        return zzakcVar;
    }
}
