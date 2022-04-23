package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/anu.class */
final class anu implements ant {

    /* renamed from: a */
    private final zzoj f7935a;

    /* renamed from: b */
    private final int f7936b;

    /* renamed from: c */
    private final int f7937c;

    /* renamed from: d */
    private int f7938d;

    /* renamed from: e */
    private int f7939e;

    public anu(ano anoVar) {
        this.f7935a = anoVar.f7910az;
        this.f7935a.zzbe(12);
        this.f7937c = this.f7935a.zzis() & 255;
        this.f7936b = this.f7935a.zzis();
    }

    @Override // com.google.android.gms.internal.ads.ant
    /* renamed from: a */
    public final int mo4834a() {
        return this.f7936b;
    }

    @Override // com.google.android.gms.internal.ads.ant
    /* renamed from: b */
    public final int mo4833b() {
        int i = this.f7937c;
        if (i == 8) {
            return this.f7935a.readUnsignedByte();
        }
        if (i == 16) {
            return this.f7935a.readUnsignedShort();
        }
        int i2 = this.f7938d;
        this.f7938d = i2 + 1;
        if (i2 % 2 != 0) {
            return this.f7939e & 15;
        }
        this.f7939e = this.f7935a.readUnsignedByte();
        return (this.f7939e & 240) >> 4;
    }

    @Override // com.google.android.gms.internal.ads.ant
    /* renamed from: c */
    public final boolean mo4832c() {
        return false;
    }
}
