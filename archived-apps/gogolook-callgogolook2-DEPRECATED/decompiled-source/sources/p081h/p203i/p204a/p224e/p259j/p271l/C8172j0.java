package p081h.p203i.p204a.p224e.p259j.p271l;

import p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8228l9;
/* renamed from: h.i.a.e.j.l.j0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/j0.class */
public final class C8172j0 extends AbstractC8228l9<C8172j0, C8174b> implements AbstractC8430wa {
    public static final C8172j0 zzdbu;
    public static volatile AbstractC8129gb<C8172j0> zzh;
    public int zzcyj;
    public C8131h0 zzdbs;
    public C8072e0 zzdbt;
    public int zzj;

    /* renamed from: h.i.a.e.j.l.j0$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/j0$a.class */
    public enum EnumC8173a implements AbstractC8286o9 {
        DELEGATE_NONE(0),
        NNAPI(1),
        GPU(2),
        HEXAGON(3),
        EDGETPU(4);
        

        /* renamed from: a */
        public final int f18930a;

        static {
            new C8433x0();
        }

        EnumC8173a(int i) {
            this.f18930a = i;
        }

        /* renamed from: b */
        public static AbstractC8319q9 m18453b() {
            return C8413w0.f19363a;
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8286o9
        /* renamed from: a */
        public final int mo17910a() {
            return this.f18930a;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return "<" + EnumC8173a.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.f18930a + " name=" + name() + '>';
        }
    }

    /* renamed from: h.i.a.e.j.l.j0$b */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/j0$b.class */
    public static final class C8174b extends AbstractC8228l9.C8230b<C8172j0, C8174b> implements AbstractC8430wa {
        public C8174b() {
            super(C8172j0.zzdbu);
        }

        public /* synthetic */ C8174b(C8238m0 m0Var) {
            this();
        }
    }

    static {
        C8172j0 j0Var = new C8172j0();
        zzdbu = j0Var;
        AbstractC8228l9.m18357a(C8172j0.class, j0Var);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8228l9
    /* renamed from: a */
    public final Object mo17912a(int i, Object obj, Object obj2) {
        switch (C8238m0.f19083a[i - 1]) {
            case 1:
                return new C8172j0();
            case 2:
                return new C8174b(null);
            case 3:
                return AbstractC8228l9.m18360a(zzdbu, "\u0001\u0003��\u0001\u0001\u0003\u0003������\u0001ဌ��\u0002ဉ\u0001\u0003ဉ\u0002", new Object[]{"zzj", "zzcyj", EnumC8173a.m18453b(), "zzdbs", "zzdbt"});
            case 4:
                return zzdbu;
            case 5:
                AbstractC8129gb<C8172j0> gbVar = zzh;
                AbstractC8129gb<C8172j0> gbVar2 = gbVar;
                if (gbVar == null) {
                    synchronized (C8172j0.class) {
                        try {
                            AbstractC8129gb<C8172j0> gbVar3 = zzh;
                            gbVar2 = gbVar3;
                            if (gbVar3 == null) {
                                gbVar2 = new AbstractC8228l9.C8229a<>(zzdbu);
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
