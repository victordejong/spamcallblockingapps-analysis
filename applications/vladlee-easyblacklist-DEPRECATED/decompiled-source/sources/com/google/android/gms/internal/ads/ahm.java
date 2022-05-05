package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ahm.class */
public final class ahm {

    /* renamed from: a */
    private final zzdrb f7362a;

    /* renamed from: b */
    private final byte[] f7363b;

    private ahm(int i) {
        this.f7363b = new byte[i];
        this.f7362a = zzdrb.zzw(this.f7363b);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ ahm(int i, byte b) {
        this(i);
    }

    /* renamed from: a */
    public final zzdqk m5403a() {
        this.f7362a.zzazd();
        return new aho(this.f7363b);
    }

    /* renamed from: b */
    public final zzdrb m5402b() {
        return this.f7362a;
    }
}
