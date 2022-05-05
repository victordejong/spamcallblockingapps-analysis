package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.zy */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zy.class */
final class C2427zy {

    /* renamed from: a */
    private final zzdbf f10787a = new zzdbf();

    /* renamed from: b */
    private int f10788b;

    /* renamed from: c */
    private int f10789c;

    /* renamed from: d */
    private int f10790d;

    /* renamed from: e */
    private int f10791e;

    /* renamed from: f */
    private int f10792f;

    /* renamed from: a */
    public final void m4444a() {
        this.f10790d++;
    }

    /* renamed from: b */
    public final void m4443b() {
        this.f10791e++;
    }

    /* renamed from: c */
    public final void m4442c() {
        this.f10788b++;
        this.f10787a.zzgoq = true;
    }

    /* renamed from: d */
    public final void m4441d() {
        this.f10789c++;
        this.f10787a.zzgor = true;
    }

    /* renamed from: e */
    public final void m4440e() {
        this.f10792f++;
    }

    /* renamed from: f */
    public final zzdbf m4439f() {
        zzdbf zzdbfVar = (zzdbf) this.f10787a.clone();
        zzdbf zzdbfVar2 = this.f10787a;
        zzdbfVar2.zzgoq = false;
        zzdbfVar2.zzgor = false;
        return zzdbfVar;
    }

    /* renamed from: g */
    public final String m4438g() {
        return "\n\tPool does not exist: " + this.f10790d + "\n\tNew pools created: " + this.f10788b + "\n\tPools removed: " + this.f10789c + "\n\tEntries added: " + this.f10792f + "\n\tNo entries retrieved: " + this.f10791e + "\n";
    }
}
