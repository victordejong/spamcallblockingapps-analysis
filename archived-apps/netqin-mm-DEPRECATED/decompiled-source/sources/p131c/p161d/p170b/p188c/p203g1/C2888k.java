package p131c.p161d.p170b.p188c.p203g1;

import android.os.Handler;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import p131c.p161d.p170b.p188c.p203g1.C2888k;
/* renamed from: c.d.b.c.g1.k */
/* loaded from: classes-dex2jar.jar:c/d/b/c/g1/k.class */
public final class C2888k<T> {

    /* renamed from: a */
    public final CopyOnWriteArrayList<C2890b<T>> f10489a = new CopyOnWriteArrayList<>();

    /* renamed from: c.d.b.c.g1.k$a */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/g1/k$a.class */
    public interface AbstractC2889a<T> {
        /* renamed from: a */
        void mo28620a(T t);
    }

    /* renamed from: c.d.b.c.g1.k$b */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/g1/k$b.class */
    public static final class C2890b<T> {

        /* renamed from: a */
        public final Handler f10490a;

        /* renamed from: b */
        public final T f10491b;

        /* renamed from: c */
        public boolean f10492c;

        /* renamed from: a */
        public void m28619a(final AbstractC2889a<T> aVar) {
            this.f10490a.post(new Runnable() { // from class: c.d.b.c.g1.a
                @Override // java.lang.Runnable
                public final void run() {
                    C2888k.C2890b.this.m28618b(aVar);
                }
            });
        }

        /* renamed from: b */
        public /* synthetic */ void m28618b(AbstractC2889a aVar) {
            if (!this.f10492c) {
                aVar.mo28620a(this.f10491b);
            }
        }
    }

    /* renamed from: a */
    public void m28621a(AbstractC2889a<T> aVar) {
        Iterator<C2890b<T>> it = this.f10489a.iterator();
        while (it.hasNext()) {
            it.next().m28619a(aVar);
        }
    }
}
