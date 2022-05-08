package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/anv.class */
final class anv implements ant {

    /* renamed from: a */
    private final int f7940a;

    /* renamed from: b */
    private final int f7941b;

    /* renamed from: c */
    private final zzoj f7942c;

    public anv(ano anoVar) {
        this.f7942c = anoVar.f7910az;
        this.f7942c.zzbe(12);
        this.f7940a = this.f7942c.zzis();
        this.f7941b = this.f7942c.zzis();
    }

    @Override // com.google.android.gms.internal.ads.ant
    /* renamed from: a */
    public final int mo4834a() {
        return this.f7941b;
    }

    @Override // com.google.android.gms.internal.ads.ant
    /* renamed from: b */
    public final int mo4833b() {
        int i = this.f7940a;
        return i == 0 ? this.f7942c.zzis() : i;
    }

    @Override // com.google.android.gms.internal.ads.ant
    /* renamed from: c */
    public final boolean mo4832c() {
        return this.f7940a != 0;
    }
}
