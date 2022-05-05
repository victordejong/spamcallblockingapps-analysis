package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/anq.class */
final class anq {

    /* renamed from: a */
    public final int f7914a;

    /* renamed from: b */
    public int f7915b;

    /* renamed from: c */
    public int f7916c;

    /* renamed from: d */
    public long f7917d;

    /* renamed from: e */
    private final boolean f7918e;

    /* renamed from: f */
    private final zzoj f7919f;

    /* renamed from: g */
    private final zzoj f7920g;

    /* renamed from: h */
    private int f7921h;

    /* renamed from: i */
    private int f7922i;

    public anq(zzoj zzojVar, zzoj zzojVar2, boolean z) {
        this.f7920g = zzojVar;
        this.f7919f = zzojVar2;
        this.f7918e = z;
        zzojVar2.zzbe(12);
        this.f7914a = zzojVar2.zzis();
        zzojVar.zzbe(12);
        this.f7922i = zzojVar.zzis();
        zzoc.checkState(zzojVar.readInt() != 1 ? false : true, "first_chunk must be 1");
        this.f7915b = -1;
    }

    /* renamed from: a */
    public final boolean m4841a() {
        int i = this.f7915b + 1;
        this.f7915b = i;
        if (i == this.f7914a) {
            return false;
        }
        this.f7917d = this.f7918e ? this.f7919f.zzit() : this.f7919f.zzip();
        if (this.f7915b != this.f7921h) {
            return true;
        }
        this.f7916c = this.f7920g.zzis();
        this.f7920g.zzbf(4);
        int i2 = this.f7922i - 1;
        this.f7922i = i2;
        this.f7921h = i2 > 0 ? this.f7920g.zzis() - 1 : -1;
        return true;
    }
}
