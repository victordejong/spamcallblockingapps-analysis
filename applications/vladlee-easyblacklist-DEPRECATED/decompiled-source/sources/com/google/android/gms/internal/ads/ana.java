package com.google.android.gms.internal.ads;

import android.media.MediaCodec;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ana.class */
final class ana {

    /* renamed from: a */
    private final MediaCodec.CryptoInfo f7756a;

    /* renamed from: b */
    private final MediaCodec.CryptoInfo.Pattern f7757b;

    private ana(MediaCodec.CryptoInfo cryptoInfo) {
        this.f7756a = cryptoInfo;
        this.f7757b = new MediaCodec.CryptoInfo.Pattern(0, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ ana(MediaCodec.CryptoInfo cryptoInfo, byte b) {
        this(cryptoInfo);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static /* synthetic */ void m4873a(ana anaVar) {
        anaVar.f7757b.set(0, 0);
        anaVar.f7756a.setPattern(anaVar.f7757b);
    }
}
