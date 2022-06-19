package com.google.android.gms.auth.api.signin.internal;
/* renamed from: com.google.android.gms.auth.api.signin.internal.b */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/signin/internal/b.class */
public class C0772b {

    /* renamed from: b */
    private static int f3260b = 31;

    /* renamed from: a */
    private int f3261a = 1;

    /* renamed from: a */
    public C0772b m3774a(Object obj) {
        this.f3261a = (f3260b * this.f3261a) + (obj == null ? 0 : obj.hashCode());
        return this;
    }

    /* renamed from: b */
    public int m3773b() {
        return this.f3261a;
    }

    /* renamed from: c */
    public final C0772b m3772c(boolean z) {
        this.f3261a = (f3260b * this.f3261a) + (z ? 1 : 0);
        return this;
    }
}
