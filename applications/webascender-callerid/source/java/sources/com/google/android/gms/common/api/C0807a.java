package com.google.android.gms.common.api;

import com.google.android.gms.common.api.C0807a.AbstractC0810d;
import com.google.android.gms.common.internal.C0931r;
import java.util.Collections;
import java.util.List;
/* renamed from: com.google.android.gms.common.api.a */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/a.class */
public final class C0807a<O extends AbstractC0810d> {

    /* renamed from: a */
    private final a<?, O> f3326a;

    /* renamed from: b */
    private final g<?> f3327b;

    /* renamed from: c */
    private final String f3328c;

    /* renamed from: com.google.android.gms.common.api.a$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/a$b.class */
    public interface AbstractC0808b {
    }

    /* renamed from: com.google.android.gms.common.api.a$c */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/a$c.class */
    public static class C0809c<C extends AbstractC0808b> {
    }

    /* renamed from: com.google.android.gms.common.api.a$d */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/a$d.class */
    public interface AbstractC0810d {
    }

    /* renamed from: com.google.android.gms.common.api.a$e */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/a$e.class */
    public static class C0811e<T extends AbstractC0808b, O> {
        /* renamed from: a */
        public List<Scope> m3692a(O o) {
            return Collections.emptyList();
        }

        /* renamed from: b */
        public int m3691b() {
            return Integer.MAX_VALUE;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <C extends f> C0807a(String str, a<C, O> aVar, g<C> gVar) {
        C0931r.m3307l(aVar, "Cannot construct an Api with a null ClientBuilder");
        C0931r.m3307l(gVar, "Cannot construct an Api with a null ClientKey");
        this.f3328c = str;
        this.f3326a = aVar;
        this.f3327b = gVar;
    }

    /* renamed from: a */
    public final C0811e<?, O> m3696a() {
        C0811e<?, O> c0811e = this.f3326a;
        C0931r.m3308k(c0811e);
        return c0811e;
    }

    /* renamed from: b */
    public final a<?, O> m3695b() {
        C0931r.m3304o(this.f3326a != null, "This API was constructed with a SimpleClientBuilder. Use getSimpleClientBuilder");
        return this.f3326a;
    }

    /* renamed from: c */
    public final C0809c<?> m3694c() {
        g<?> gVar = this.f3327b;
        if (gVar != null) {
            return gVar;
        }
        throw new IllegalStateException("This API was constructed with null client keys. This should not be possible.");
    }

    /* renamed from: d */
    public final String m3693d() {
        return this.f3328c;
    }
}
