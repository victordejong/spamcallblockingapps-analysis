package com.google.android.gms.internal.ads;

import android.view.View;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbox.class */
public final class zzbox implements zzeoy<View> {

    /* renamed from: a */
    public final zzbot f25303a;

    public zzbox(zzbot zzbotVar) {
        this.f25303a = zzbotVar;
    }

    /* renamed from: a */
    public static View m15222a(zzbot zzbotVar) {
        View b = zzbotVar.m15226b();
        zzepe.m12187a(b, "Cannot return null from a non-@Nullable @Provides method");
        return b;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return m15222a(this.f25303a);
    }
}
