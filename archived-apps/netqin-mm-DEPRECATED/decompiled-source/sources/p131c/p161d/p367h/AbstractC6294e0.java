package p131c.p161d.p367h;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import p131c.p161d.p367h.C6381y;
/* renamed from: c.d.h.e0 */
/* loaded from: classes2-dex2jar.jar:c/d/h/e0.class */
public abstract class AbstractC6294e0 {

    /* renamed from: a */
    public static final AbstractC6294e0 f19873a = new C6296b();

    /* renamed from: b */
    public static final AbstractC6294e0 f19874b = new C6297c();

    /* renamed from: c.d.h.e0$b */
    /* loaded from: classes2-dex2jar.jar:c/d/h/e0$b.class */
    public static final class C6296b extends AbstractC6294e0 {

        /* renamed from: c */
        public static final Class<?> f19875c = Collections.unmodifiableList(Collections.emptyList()).getClass();

        public C6296b() {
            super();
        }

        /* renamed from: a */
        public static <L> List<L> m21626a(Object obj, long j, int i) {
            C6286c0 c0Var;
            List<L> c = m21625c(obj, j);
            if (c.isEmpty()) {
                c0Var = c instanceof AbstractC6289d0 ? new C6286c0(i) : (!(c instanceof AbstractC6378w0) || !(c instanceof C6381y.AbstractC6390i)) ? new ArrayList(i) : ((C6381y.AbstractC6390i) c).mo20996b(i);
                C6347m1.m21238a(obj, j, c0Var);
            } else if (f19875c.isAssignableFrom(c.getClass())) {
                ArrayList arrayList = new ArrayList(c.size() + i);
                arrayList.addAll(c);
                C6347m1.m21238a(obj, j, arrayList);
                c0Var = arrayList;
            } else if (c instanceof C6342l1) {
                C6286c0 c0Var2 = new C6286c0(c.size() + i);
                c0Var2.addAll((C6342l1) c);
                C6347m1.m21238a(obj, j, c0Var2);
                c0Var = c0Var2;
            } else {
                c0Var = c;
                if (c instanceof AbstractC6378w0) {
                    c0Var = c;
                    if (c instanceof C6381y.AbstractC6390i) {
                        C6381y.AbstractC6390i iVar = (C6381y.AbstractC6390i) c;
                        c0Var = c;
                        if (!iVar.mo21000L()) {
                            c0Var = iVar.mo20996b(c.size() + i);
                            C6347m1.m21238a(obj, j, c0Var);
                        }
                    }
                }
            }
            return c0Var;
        }

        /* renamed from: c */
        public static <E> List<E> m21625c(Object obj, long j) {
            return (List) C6347m1.m21202n(obj, j);
        }

        @Override // p131c.p161d.p367h.AbstractC6294e0
        /* renamed from: a */
        public void mo21624a(Object obj, long j) {
            Object obj2;
            List list = (List) C6347m1.m21202n(obj, j);
            if (list instanceof AbstractC6289d0) {
                obj2 = ((AbstractC6289d0) list).mo21265G();
            } else if (!f19875c.isAssignableFrom(list.getClass())) {
                if (!(list instanceof AbstractC6378w0) || !(list instanceof C6381y.AbstractC6390i)) {
                    obj2 = Collections.unmodifiableList(list);
                } else {
                    C6381y.AbstractC6390i iVar = (C6381y.AbstractC6390i) list;
                    if (iVar.mo21000L()) {
                        iVar.mo20999l();
                        return;
                    }
                    return;
                }
            } else {
                return;
            }
            C6347m1.m21238a(obj, j, obj2);
        }

        @Override // p131c.p161d.p367h.AbstractC6294e0
        /* renamed from: a */
        public <E> void mo21623a(Object obj, Object obj2, long j) {
            List c = m21625c(obj2, j);
            List a = m21626a(obj, j, c.size());
            int size = a.size();
            int size2 = c.size();
            if (size > 0 && size2 > 0) {
                a.addAll(c);
            }
            if (size > 0) {
                c = a;
            }
            C6347m1.m21238a(obj, j, c);
        }

        @Override // p131c.p161d.p367h.AbstractC6294e0
        /* renamed from: b */
        public <L> List<L> mo21622b(Object obj, long j) {
            return m21626a(obj, j, 10);
        }
    }

    /* renamed from: c.d.h.e0$c */
    /* loaded from: classes2-dex2jar.jar:c/d/h/e0$c.class */
    public static final class C6297c extends AbstractC6294e0 {
        public C6297c() {
            super();
        }

        /* renamed from: c */
        public static <E> C6381y.AbstractC6390i<E> m21621c(Object obj, long j) {
            return (C6381y.AbstractC6390i) C6347m1.m21202n(obj, j);
        }

        @Override // p131c.p161d.p367h.AbstractC6294e0
        /* renamed from: a */
        public void mo21624a(Object obj, long j) {
            m21621c(obj, j).mo20999l();
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r7v5, types: [java.util.List] */
        @Override // p131c.p161d.p367h.AbstractC6294e0
        /* renamed from: a */
        public <E> void mo21623a(Object obj, Object obj2, long j) {
            C6381y.AbstractC6390i c = m21621c(obj, j);
            C6381y.AbstractC6390i c2 = m21621c(obj2, j);
            int size = c.size();
            int size2 = c2.size();
            C6381y.AbstractC6390i iVar = c;
            if (size > 0) {
                iVar = c;
                if (size2 > 0) {
                    C6381y.AbstractC6390i<E> iVar2 = c;
                    if (!c.mo21000L()) {
                        iVar2 = c.mo20996b(size2 + size);
                    }
                    iVar2.addAll(c2);
                    iVar = iVar2;
                }
            }
            iVar = c2;
            if (size > 0) {
            }
            C6347m1.m21238a(obj, j, iVar);
        }

        @Override // p131c.p161d.p367h.AbstractC6294e0
        /* renamed from: b */
        public <L> List<L> mo21622b(Object obj, long j) {
            C6381y.AbstractC6390i c = m21621c(obj, j);
            C6381y.AbstractC6390i iVar = c;
            if (!c.mo21000L()) {
                int size = c.size();
                iVar = c.mo20996b(size == 0 ? 10 : size * 2);
                C6347m1.m21238a(obj, j, iVar);
            }
            return iVar;
        }
    }

    public AbstractC6294e0() {
    }

    /* renamed from: a */
    public static AbstractC6294e0 m21628a() {
        return f19873a;
    }

    /* renamed from: b */
    public static AbstractC6294e0 m21627b() {
        return f19874b;
    }

    /* renamed from: a */
    public abstract void mo21624a(Object obj, long j);

    /* renamed from: a */
    public abstract <L> void mo21623a(Object obj, Object obj2, long j);

    /* renamed from: b */
    public abstract <L> List<L> mo21622b(Object obj, long j);
}
