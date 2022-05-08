package com.bumptech.glide.f;

import com.bumptech.glide.load.b;
import com.bumptech.glide.load.c.j;
import com.bumptech.glide.load.e;
import com.bumptech.glide.load.f;
import com.bumptech.glide.load.resource.e.c;
import java.io.File;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/f/a.class */
public final class a<A, T, Z, R> implements f<A, T, Z, R>, Cloneable {

    /* renamed from: a  reason: collision with root package name */
    public e<T, Z> f3409a;

    /* renamed from: b  reason: collision with root package name */
    public b<T> f3410b;
    private final f<A, T, Z, R> c;
    private e<File, Z> d;
    private f<Z> e;
    private c<Z, R> f;

    public a(f<A, T, Z, R> fVar) {
        this.c = fVar;
    }

    @Override // com.bumptech.glide.f.b
    public final e<File, Z> a() {
        return this.d != null ? this.d : this.c.a();
    }

    @Override // com.bumptech.glide.f.b
    public final e<T, Z> b() {
        return this.f3409a != null ? this.f3409a : this.c.b();
    }

    @Override // com.bumptech.glide.f.b
    public final b<T> c() {
        return this.f3410b != null ? this.f3410b : this.c.c();
    }

    @Override // com.bumptech.glide.f.b
    public final f<Z> d() {
        return this.e != null ? this.e : this.c.d();
    }

    @Override // com.bumptech.glide.f.f
    public final j<A, T> e() {
        return this.c.e();
    }

    @Override // com.bumptech.glide.f.f
    public final c<Z, R> f() {
        return this.f != null ? this.f : this.c.f();
    }

    /* renamed from: g */
    public final a<A, T, Z, R> clone() {
        try {
            return (a) super.clone();
        } catch (CloneNotSupportedException e) {
            throw new RuntimeException(e);
        }
    }
}
