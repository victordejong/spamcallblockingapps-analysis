package com.google.p051a.p053b.p054a;

import com.google.p051a.AbstractC1378ae;
import com.google.p051a.AbstractC1380ag;
import com.google.p051a.C1507k;
import com.google.p051a.p053b.AbstractC1491z;
import com.google.p051a.p053b.C1457b;
import com.google.p051a.p053b.C1464c;
import com.google.p051a.p057c.C1493a;
import com.google.p051a.p058d.C1495a;
import com.google.p051a.p058d.C1498d;
import com.google.p051a.p058d.EnumC1497c;
import java.lang.reflect.Type;
import java.util.Collection;
/* renamed from: com.google.a.b.a.c */
/* loaded from: classes-dex2jar.jar:com/google/a/b/a/c.class */
public final class C1420c implements AbstractC1380ag {

    /* renamed from: a */
    private final C1464c f5504a;

    /* renamed from: com.google.a.b.a.c$a */
    /* loaded from: classes-dex2jar.jar:com/google/a/b/a/c$a.class */
    private static final class C1421a<E> extends AbstractC1378ae<Collection<E>> {

        /* renamed from: a */
        private final AbstractC1378ae<E> f5505a;

        /* renamed from: b */
        private final AbstractC1491z<? extends Collection<E>> f5506b;

        public C1421a(C1507k kVar, Type type, AbstractC1378ae<E> aeVar, AbstractC1491z<? extends Collection<E>> zVar) {
            this.f5505a = new C1444v(kVar, aeVar, type);
            this.f5506b = zVar;
        }

        @Override // com.google.p051a.AbstractC1378ae
        /* renamed from: a */
        public final /* synthetic */ Object mo6175a(C1495a aVar) {
            if (aVar.mo6236f() == EnumC1497c.NULL) {
                aVar.mo6232j();
                return null;
            }
            Collection collection = (Collection) this.f5506b.mo6257a();
            aVar.mo6250a();
            while (aVar.mo6237e()) {
                collection.add(this.f5505a.mo6175a(aVar));
            }
            aVar.mo6245b();
            return collection;
        }

        @Override // com.google.p051a.AbstractC1378ae
        /* renamed from: a */
        public final /* synthetic */ void mo6174a(C1498d dVar, Object obj) {
            Collection<E> collection = (Collection) obj;
            if (collection == null) {
                dVar.mo6195f();
                return;
            }
            dVar.mo6206b();
            for (E e : collection) {
                this.f5505a.mo6174a(dVar, e);
            }
            dVar.mo6202c();
        }
    }

    public C1420c(C1464c cVar) {
        this.f5504a = cVar;
    }

    @Override // com.google.p051a.AbstractC1380ag
    /* renamed from: a */
    public final <T> AbstractC1378ae<T> mo6276a(C1507k kVar, C1493a<T> aVar) {
        Type b = aVar.m6251b();
        Class<? super T> a = aVar.m6254a();
        if (!Collection.class.isAssignableFrom(a)) {
            return null;
        }
        Type a2 = C1457b.m6299a(b, (Class<?>) a);
        return new C1421a(kVar, a2, kVar.m6182a((C1493a) C1493a.m6252a(a2)), this.f5504a.m6282a(aVar));
    }
}
