package p081h.p203i.p204a.p224e.p259j.p271l;

import p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8228l9;
/* renamed from: h.i.a.e.j.l.b4 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/b4.class */
public final class C8022b4 extends AbstractC8228l9<C8022b4, C8023a> implements AbstractC8430wa {
    public static final AbstractC8371t9<Integer, EnumC8223l4> zzapy = new C8205k4();
    public static final C8022b4 zzard;
    public static volatile AbstractC8129gb<C8022b4> zzh;
    public long zzapt;
    public C8114g2 zzapv;
    public C8114g2 zzapw;
    public AbstractC8353s9 zzapx = AbstractC8228l9.m18352i();
    public boolean zzarc;
    public int zzj;

    /* renamed from: h.i.a.e.j.l.b4$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/b4$a.class */
    public static final class C8023a extends AbstractC8228l9.C8230b<C8022b4, C8023a> implements AbstractC8430wa {
        public C8023a() {
            super(C8022b4.zzard);
        }

        public /* synthetic */ C8023a(C8045c4 c4Var) {
            this();
        }
    }

    static {
        C8022b4 b4Var = new C8022b4();
        zzard = b4Var;
        AbstractC8228l9.m18357a(C8022b4.class, b4Var);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8228l9
    /* renamed from: a */
    public final Object mo17912a(int i, Object obj, Object obj2) {
        switch (C8045c4.f18776a[i - 1]) {
            case 1:
                return new C8022b4();
            case 2:
                return new C8023a(null);
            case 3:
                return AbstractC8228l9.m18360a(zzard, "\u0001\u0005��\u0001\u0001\u0005\u0005��\u0001��\u0001ဉ��\u0002ဉ\u0001\u0003\u001e\u0004ဃ\u0002\u0005ဇ\u0003", new Object[]{"zzj", "zzapv", "zzapw", "zzapx", EnumC8223l4.m18364b(), "zzapt", "zzarc"});
            case 4:
                return zzard;
            case 5:
                AbstractC8129gb<C8022b4> gbVar = zzh;
                AbstractC8129gb<C8022b4> gbVar2 = gbVar;
                if (gbVar == null) {
                    synchronized (C8022b4.class) {
                        try {
                            AbstractC8129gb<C8022b4> gbVar3 = zzh;
                            gbVar2 = gbVar3;
                            if (gbVar3 == null) {
                                gbVar2 = new AbstractC8228l9.C8229a<>(zzard);
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
