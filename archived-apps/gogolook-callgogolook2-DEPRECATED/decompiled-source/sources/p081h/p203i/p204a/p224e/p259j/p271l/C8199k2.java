package p081h.p203i.p204a.p224e.p259j.p271l;

import p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8228l9;
/* renamed from: h.i.a.e.j.l.k2 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/k2.class */
public final class C8199k2 extends AbstractC8228l9<C8199k2, C8200a> implements AbstractC8430wa {
    public static final C8199k2 zzbfm;
    public static volatile AbstractC8129gb<C8199k2> zzh;
    public int zzaoa;
    public C8255n2 zzapb;
    public int zzj;

    /* renamed from: h.i.a.e.j.l.k2$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/k2$a.class */
    public static final class C8200a extends AbstractC8228l9.C8230b<C8199k2, C8200a> implements AbstractC8430wa {
        public C8200a() {
            super(C8199k2.zzbfm);
        }

        public /* synthetic */ C8200a(C8045c4 c4Var) {
            this();
        }
    }

    static {
        C8199k2 k2Var = new C8199k2();
        zzbfm = k2Var;
        AbstractC8228l9.m18357a(C8199k2.class, k2Var);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8228l9
    /* renamed from: a */
    public final Object mo17912a(int i, Object obj, Object obj2) {
        switch (C8045c4.f18776a[i - 1]) {
            case 1:
                return new C8199k2();
            case 2:
                return new C8200a(null);
            case 3:
                return AbstractC8228l9.m18360a(zzbfm, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001ဉ��\u0002ဌ\u0001", new Object[]{"zzj", "zzapb", "zzaoa", EnumC8223l4.m18364b()});
            case 4:
                return zzbfm;
            case 5:
                AbstractC8129gb<C8199k2> gbVar = zzh;
                AbstractC8129gb<C8199k2> gbVar2 = gbVar;
                if (gbVar == null) {
                    synchronized (C8199k2.class) {
                        try {
                            AbstractC8129gb<C8199k2> gbVar3 = zzh;
                            gbVar2 = gbVar3;
                            if (gbVar3 == null) {
                                gbVar2 = new AbstractC8228l9.C8229a<>(zzbfm);
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
