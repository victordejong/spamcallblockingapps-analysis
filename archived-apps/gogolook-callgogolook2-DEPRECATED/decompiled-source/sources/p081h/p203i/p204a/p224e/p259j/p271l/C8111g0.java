package p081h.p203i.p204a.p224e.p259j.p271l;

import p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8228l9;
/* renamed from: h.i.a.e.j.l.g0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/g0.class */
public final class C8111g0 extends AbstractC8228l9<C8111g0, C8112a> implements AbstractC8430wa {
    public static final C8111g0 zzdbm;
    public static volatile AbstractC8129gb<C8111g0> zzh;
    public AbstractC8353s9 zzaqu = AbstractC8228l9.m18352i();

    /* renamed from: h.i.a.e.j.l.g0$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/g0$a.class */
    public static final class C8112a extends AbstractC8228l9.C8230b<C8111g0, C8112a> implements AbstractC8430wa {
        public C8112a() {
            super(C8111g0.zzdbm);
        }

        public /* synthetic */ C8112a(C8238m0 m0Var) {
            this();
        }
    }

    static {
        C8111g0 g0Var = new C8111g0();
        zzdbm = g0Var;
        AbstractC8228l9.m18357a(C8111g0.class, g0Var);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8228l9
    /* renamed from: a */
    public final Object mo17912a(int i, Object obj, Object obj2) {
        switch (C8238m0.f19083a[i - 1]) {
            case 1:
                return new C8111g0();
            case 2:
                return new C8112a(null);
            case 3:
                return AbstractC8228l9.m18360a(zzdbm, "\u0001\u0001����\u0001\u0001\u0001��\u0001��\u0001\u0016", new Object[]{"zzaqu"});
            case 4:
                return zzdbm;
            case 5:
                AbstractC8129gb<C8111g0> gbVar = zzh;
                AbstractC8129gb<C8111g0> gbVar2 = gbVar;
                if (gbVar == null) {
                    synchronized (C8111g0.class) {
                        try {
                            AbstractC8129gb<C8111g0> gbVar3 = zzh;
                            gbVar2 = gbVar3;
                            if (gbVar3 == null) {
                                gbVar2 = new AbstractC8228l9.C8229a<>(zzdbm);
                                zzh = gbVar2;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
                return gbVar2;
            case 6:
                return (byte) 1;
            case 7:
                return null;
            default:
                throw new UnsupportedOperationException();
        }
    }
}
