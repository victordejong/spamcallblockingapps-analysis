package com.google.android.gms.internal.ads;

import java.io.InputStream;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aqj.class */
public final class aqj extends zzazl<InputStream> {

    /* renamed from: a */
    private final /* synthetic */ zzse f8170a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aqj(zzse zzseVar) {
        this.f8170a = zzseVar;
    }

    @Override // com.google.android.gms.internal.ads.zzazl, java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        zzse.m3077a(this.f8170a);
        return super.cancel(z);
    }
}
