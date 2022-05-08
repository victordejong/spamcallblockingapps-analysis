package p081h.p203i.p204a.p224e.p259j.p271l;

import p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8228l9;
/* renamed from: h.i.a.e.j.l.d2 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/d2.class */
public final class C8057d2 extends AbstractC8228l9<C8057d2, C8059b> implements AbstractC8430wa {
    public static final C8057d2 zzbbr;
    public static volatile AbstractC8129gb<C8057d2> zzh;
    public int zzbbq;
    public int zzj;

    /* renamed from: h.i.a.e.j.l.d2$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/d2$a.class */
    public enum EnumC8058a implements AbstractC8286o9 {
        UNKNOWN(0),
        TRANSLATE(1);
        

        /* renamed from: a */
        public final int f18786a;

        static {
            new C8063d5();
        }

        EnumC8058a(int i) {
            this.f18786a = i;
        }

        /* renamed from: b */
        public static AbstractC8319q9 m18631b() {
            return C8083e5.f18815a;
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8286o9
        /* renamed from: a */
        public final int mo17910a() {
            return this.f18786a;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return "<" + EnumC8058a.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.f18786a + " name=" + name() + '>';
        }
    }

    /* renamed from: h.i.a.e.j.l.d2$b */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/d2$b.class */
    public static final class C8059b extends AbstractC8228l9.C8230b<C8057d2, C8059b> implements AbstractC8430wa {
        public C8059b() {
            super(C8057d2.zzbbr);
        }

        public /* synthetic */ C8059b(C8045c4 c4Var) {
            this();
        }
    }

    static {
        C8057d2 d2Var = new C8057d2();
        zzbbr = d2Var;
        AbstractC8228l9.m18357a(C8057d2.class, d2Var);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8228l9
    /* renamed from: a */
    public final Object mo17912a(int i, Object obj, Object obj2) {
        switch (C8045c4.f18776a[i - 1]) {
            case 1:
                return new C8057d2();
            case 2:
                return new C8059b(null);
            case 3:
                return AbstractC8228l9.m18360a(zzbbr, "\u0001\u0001��\u0001\u0001\u0001\u0001������\u0001ဌ��", new Object[]{"zzj", "zzbbq", EnumC8058a.m18631b()});
            case 4:
                return zzbbr;
            case 5:
                AbstractC8129gb<C8057d2> gbVar = zzh;
                AbstractC8129gb<C8057d2> gbVar2 = gbVar;
                if (gbVar == null) {
                    synchronized (C8057d2.class) {
                        try {
                            AbstractC8129gb<C8057d2> gbVar3 = zzh;
                            gbVar2 = gbVar3;
                            if (gbVar3 == null) {
                                gbVar2 = new AbstractC8228l9.C8229a<>(zzbbr);
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
