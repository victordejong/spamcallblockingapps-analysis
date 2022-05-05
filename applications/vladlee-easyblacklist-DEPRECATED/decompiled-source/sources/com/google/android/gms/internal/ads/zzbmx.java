package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.zzo;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbmx.class */
public final class zzbmx implements zzo {

    /* renamed from: a */
    private final zzbpm f12155a;

    /* renamed from: b */
    private AtomicBoolean f12156b = new AtomicBoolean(false);

    public zzbmx(zzbpm zzbpmVar) {
        this.f12155a = zzbpmVar;
    }

    public final boolean isClosed() {
        return this.f12156b.get();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void onPause() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void onResume() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzte() {
        this.f12156b.set(true);
        this.f12155a.onAdClosed();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zztf() {
        this.f12155a.onAdOpened();
    }
}
