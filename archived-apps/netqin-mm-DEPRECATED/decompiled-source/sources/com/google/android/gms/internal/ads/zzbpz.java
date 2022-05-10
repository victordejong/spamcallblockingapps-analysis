package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbpz.class */
public final class zzbpz implements zzeoy<Runnable> {

    /* renamed from: a */
    public final zzbqa f25341a;

    public zzbpz(zzbqa zzbqaVar) {
        this.f25341a = zzbqaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        Runnable b = this.f25341a.m15182b();
        zzepe.m12187a(b, "Cannot return null from a non-@Nullable @Provides method");
        return b;
    }
}
