package p081h.p203i.p204a.p224e.p259j.p271l;

import p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8228l9;
/* renamed from: h.i.a.e.j.l.e0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/e0.class */
public final class C8072e0 extends AbstractC8228l9<C8072e0, C8073a> implements AbstractC8430wa {
    public static final C8072e0 zzdbb;
    public static volatile AbstractC8129gb<C8072e0> zzh;
    public int zzcwx;
    public int zzj;

    /* renamed from: h.i.a.e.j.l.e0$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/e0$a.class */
    public static final class C8073a extends AbstractC8228l9.C8230b<C8072e0, C8073a> implements AbstractC8430wa {
        public C8073a() {
            super(C8072e0.zzdbb);
        }

        public /* synthetic */ C8073a(C8238m0 m0Var) {
            this();
        }
    }

    static {
        C8072e0 e0Var = new C8072e0();
        zzdbb = e0Var;
        AbstractC8228l9.m18357a(C8072e0.class, e0Var);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8228l9
    /* renamed from: a */
    public final Object mo17912a(int i, Object obj, Object obj2) {
        switch (C8238m0.f19083a[i - 1]) {
            case 1:
                return new C8072e0();
            case 2:
                return new C8073a(null);
            case 3:
                return AbstractC8228l9.m18360a(zzdbb, "\u0001\u0001��\u0001\u0001\u0001\u0001������\u0001င��", new Object[]{"zzj", "zzcwx"});
            case 4:
                return zzdbb;
            case 5:
                AbstractC8129gb<C8072e0> gbVar = zzh;
                AbstractC8129gb<C8072e0> gbVar2 = gbVar;
                if (gbVar == null) {
                    synchronized (C8072e0.class) {
                        try {
                            AbstractC8129gb<C8072e0> gbVar3 = zzh;
                            gbVar2 = gbVar3;
                            if (gbVar3 == null) {
                                gbVar2 = new AbstractC8228l9.C8229a<>(zzdbb);
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
