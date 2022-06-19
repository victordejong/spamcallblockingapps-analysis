package androidx.work.impl.utils.p016n;

import com.google.common.util.concurrent.c;
/* renamed from: androidx.work.impl.utils.n.a$g */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/n/a$g.class */
final class a$g<V> implements Runnable {

    /* renamed from: f */
    final a<V> f2666f;

    /* renamed from: g */
    final c<? extends V> f2667g;

    a$g(a<V> aVar, c<? extends V> cVar) {
        this.f2666f = aVar;
        this.f2667g = cVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.f2666f.f != this) {
            return;
        }
        if (!a.k.m4325b(this.f2666f, this, a.j(this.f2667g))) {
            return;
        }
        a.g(this.f2666f);
    }
}
