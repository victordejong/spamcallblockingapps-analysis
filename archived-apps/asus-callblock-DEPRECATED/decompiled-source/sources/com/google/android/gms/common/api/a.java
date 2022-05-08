package com.google.android.gms.common.api;

import android.content.Context;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.common.api.a.AbstractC0110a;
import com.google.android.gms.common.api.b;
import com.google.android.gms.common.internal.k;
import com.google.android.gms.common.internal.n;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/a.class */
public final class a<O extends AbstractC0110a> {

    /* renamed from: a  reason: collision with root package name */
    public final b<?, O> f3947a;

    /* renamed from: b  reason: collision with root package name */
    public final g<?> f3948b;
    public final String c;
    private final i<?, O> d = null;
    private final j<?> e = null;

    /* renamed from: com.google.android.gms.common.api.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/a$a.class */
    public interface AbstractC0110a {

        /* renamed from: com.google.android.gms.common.api.a$a$a  reason: collision with other inner class name */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/a$a$a.class */
        public interface AbstractC0111a extends AbstractC0110a {
        }

        /* renamed from: com.google.android.gms.common.api.a$a$b */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/a$a$b.class */
        public interface b extends AbstractC0110a {
        }

        /* renamed from: com.google.android.gms.common.api.a$a$c */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/a$a$c.class */
        public interface c extends AbstractC0111a, b {
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/a$b.class */
    public static abstract class b<T extends f, O> extends e<T, O> {
        public abstract T a(Context context, Looper looper, n nVar, O o, b.AbstractC0112b bVar, b.c cVar);
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/a$c.class */
    public interface c {
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/a$d.class */
    public static class d<C extends c> {
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/a$e.class */
    public static abstract class e<T extends c, O> {
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/a$f.class */
    public interface f extends c {
        void a();

        void a(k.f fVar);

        void a(Set<Scope> set);

        boolean b();

        boolean c();
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/a$g.class */
    public static final class g<C extends f> extends d<C> {
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/a$h.class */
    public interface h<T extends IInterface> extends c {
        String a();

        String b();

        T c();
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/a$i.class */
    public static abstract class i<T extends h, O> extends e<T, O> {
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/a$j.class */
    public static final class j<C extends h> extends d<C> {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <C extends f> a(String str, b<C, O> bVar, g<C> gVar) {
        com.google.android.gms.common.internal.b.a(bVar, "Cannot construct an Api with a null ClientBuilder");
        com.google.android.gms.common.internal.b.a(gVar, "Cannot construct an Api with a null ClientKey");
        this.c = str;
        this.f3947a = bVar;
        this.f3948b = gVar;
    }
}
