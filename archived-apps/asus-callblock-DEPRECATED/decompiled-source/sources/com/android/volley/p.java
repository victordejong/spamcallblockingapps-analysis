package com.android.volley;

import com.android.volley.b;
/* loaded from: classes-dex2jar.jar:com/android/volley/p.class */
public final class p<T> {

    /* renamed from: a  reason: collision with root package name */
    public final T f2310a;

    /* renamed from: b  reason: collision with root package name */
    public final b.a f2311b;
    public final u c;
    public boolean d;

    /* loaded from: classes-dex2jar.jar:com/android/volley/p$a.class */
    public interface a {
        void a(u uVar);
    }

    /* loaded from: classes-dex2jar.jar:com/android/volley/p$b.class */
    public interface b<T> {
        void a(T t);
    }

    private p(u uVar) {
        this.d = false;
        this.f2310a = null;
        this.f2311b = null;
        this.c = uVar;
    }

    private p(T t, b.a aVar) {
        this.d = false;
        this.f2310a = t;
        this.f2311b = aVar;
        this.c = null;
    }

    public static <T> p<T> a(u uVar) {
        return new p<>(uVar);
    }

    public static <T> p<T> a(T t, b.a aVar) {
        return new p<>(t, aVar);
    }
}
