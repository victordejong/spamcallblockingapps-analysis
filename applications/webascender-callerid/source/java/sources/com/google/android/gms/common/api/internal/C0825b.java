package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.C0807a;
import com.google.android.gms.common.api.C0807a.AbstractC0810d;
import com.google.android.gms.common.internal.C0925p;
/* renamed from: com.google.android.gms.common.api.internal.b */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/b.class */
public final class C0825b<O extends C0807a.AbstractC0810d> {

    /* renamed from: a */
    private final int f3366a;

    /* renamed from: b */
    private final C0807a<O> f3367b;

    /* renamed from: c */
    private final O f3368c;

    private C0825b(C0807a<O> c0807a, O o) {
        this.f3367b = c0807a;
        this.f3368c = o;
        this.f3366a = C0925p.m3326b(c0807a, o);
    }

    /* renamed from: b */
    public static <O extends C0807a.AbstractC0810d> C0825b<O> m3625b(C0807a<O> c0807a, O o) {
        return new C0825b<>(c0807a, o);
    }

    /* renamed from: a */
    public final String m3626a() {
        return this.f3367b.m3693d();
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C0825b)) {
            return false;
        }
        C0825b c0825b = (C0825b) obj;
        return C0925p.m3327a(this.f3367b, c0825b.f3367b) && C0925p.m3327a(this.f3368c, c0825b.f3368c);
    }

    public final int hashCode() {
        return this.f3366a;
    }
}
