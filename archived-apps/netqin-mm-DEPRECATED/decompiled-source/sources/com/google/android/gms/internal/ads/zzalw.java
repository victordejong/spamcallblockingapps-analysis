package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzalw.class */
public final class zzalw {

    /* renamed from: a */
    public final Object f24175a = new Object();

    /* renamed from: b */
    public final Object f24176b = new Object();

    /* renamed from: c */
    public zzamb f24177c;

    /* renamed from: d */
    public zzamb f24178d;

    /* renamed from: a */
    public static Context m16668a(Context context) {
        Context applicationContext = context.getApplicationContext();
        return applicationContext == null ? context : applicationContext;
    }

    /* renamed from: a */
    public final zzamb m16667a(Context context, zzbbx zzbbxVar) {
        zzamb zzambVar;
        synchronized (this.f24176b) {
            if (this.f24178d == null) {
                this.f24178d = new zzamb(m16668a(context), zzbbxVar, zzade.f24012a.mo16862a());
            }
            zzambVar = this.f24178d;
        }
        return zzambVar;
    }

    /* renamed from: b */
    public final zzamb m16666b(Context context, zzbbx zzbbxVar) {
        zzamb zzambVar;
        synchronized (this.f24175a) {
            if (this.f24177c == null) {
                this.f24177c = new zzamb(m16668a(context), zzbbxVar, (String) zzwm.m11166e().m16921a(zzabb.f23778a));
            }
            zzambVar = this.f24177c;
        }
        return zzambVar;
    }
}
