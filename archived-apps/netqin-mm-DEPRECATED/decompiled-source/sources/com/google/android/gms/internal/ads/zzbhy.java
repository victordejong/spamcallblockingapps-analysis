package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbhy.class */
public final class zzbhy {

    /* renamed from: a */
    public final int f25001a;

    /* renamed from: b */
    public final int f25002b;

    /* renamed from: c */
    public final int f25003c;

    public zzbhy(int i, int i2, int i3) {
        this.f25001a = i;
        this.f25003c = i2;
        this.f25002b = i3;
    }

    /* renamed from: a */
    public static zzbhy m15512a(int i, int i2) {
        return new zzbhy(1, i, i2);
    }

    /* renamed from: a */
    public static zzbhy m15511a(zzvn zzvnVar) {
        return zzvnVar.f29038d ? new zzbhy(3, 0, 0) : zzvnVar.f29043i ? new zzbhy(2, 0, 0) : zzvnVar.f29042h ? m15506f() : m15512a(zzvnVar.f29040f, zzvnVar.f29037c);
    }

    /* renamed from: f */
    public static zzbhy m15506f() {
        return new zzbhy(0, 0, 0);
    }

    /* renamed from: g */
    public static zzbhy m15505g() {
        return new zzbhy(4, 0, 0);
    }

    /* renamed from: h */
    public static zzbhy m15504h() {
        return new zzbhy(5, 0, 0);
    }

    /* renamed from: a */
    public final boolean m15513a() {
        return this.f25001a == 2;
    }

    /* renamed from: b */
    public final boolean m15510b() {
        return this.f25001a == 3;
    }

    /* renamed from: c */
    public final boolean m15509c() {
        return this.f25001a == 0;
    }

    /* renamed from: d */
    public final boolean m15508d() {
        return this.f25001a == 4;
    }

    /* renamed from: e */
    public final boolean m15507e() {
        return this.f25001a == 5;
    }
}
