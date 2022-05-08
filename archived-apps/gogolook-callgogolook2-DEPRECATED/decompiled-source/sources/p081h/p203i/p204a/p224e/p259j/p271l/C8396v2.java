package p081h.p203i.p204a.p224e.p259j.p271l;

import p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8228l9;
/* renamed from: h.i.a.e.j.l.v2 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/v2.class */
public final class C8396v2 extends AbstractC8228l9<C8396v2, C8397a> implements AbstractC8430wa {
    public static final C8396v2 zzbgv;
    public static volatile AbstractC8129gb<C8396v2> zzh;
    public int zzaxl;
    public int zzbgh;
    public int zzj;

    /* renamed from: h.i.a.e.j.l.v2$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/v2$a.class */
    public static final class C8397a extends AbstractC8228l9.C8230b<C8396v2, C8397a> implements AbstractC8430wa {
        public C8397a() {
            super(C8396v2.zzbgv);
        }

        public /* synthetic */ C8397a(C8045c4 c4Var) {
            this();
        }
    }

    /* renamed from: h.i.a.e.j.l.v2$b */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/v2$b.class */
    public enum EnumC8398b implements AbstractC8286o9 {
        INVALID_MODE(0),
        STREAM(1),
        SINGLE_IMAGE(2);
        

        /* renamed from: a */
        public final int f19339a;

        static {
            new C8425w5();
        }

        EnumC8398b(int i) {
            this.f19339a = i;
        }

        /* renamed from: b */
        public static AbstractC8319q9 m18129b() {
            return C8444x5.f19421a;
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8286o9
        /* renamed from: a */
        public final int mo17910a() {
            return this.f19339a;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return "<" + EnumC8398b.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.f19339a + " name=" + name() + '>';
        }
    }

    /* renamed from: h.i.a.e.j.l.v2$c */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/v2$c.class */
    public enum EnumC8399c implements AbstractC8286o9 {
        UNKNOWN_PERFORMANCE(0),
        FAST(1),
        ACCURATE(2);
        

        /* renamed from: a */
        public final int f19344a;

        static {
            new C8478z5();
        }

        EnumC8399c(int i) {
            this.f19344a = i;
        }

        /* renamed from: b */
        public static AbstractC8319q9 m18128b() {
            return C8462y5.f19442a;
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8286o9
        /* renamed from: a */
        public final int mo17910a() {
            return this.f19344a;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return "<" + EnumC8399c.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.f19344a + " name=" + name() + '>';
        }
    }

    static {
        C8396v2 v2Var = new C8396v2();
        zzbgv = v2Var;
        AbstractC8228l9.m18357a(C8396v2.class, v2Var);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8228l9
    /* renamed from: a */
    public final Object mo17912a(int i, Object obj, Object obj2) {
        switch (C8045c4.f18776a[i - 1]) {
            case 1:
                return new C8396v2();
            case 2:
                return new C8397a(null);
            case 3:
                return AbstractC8228l9.m18360a(zzbgv, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001ဌ��\u0002ဌ\u0001", new Object[]{"zzj", "zzbgh", EnumC8398b.m18129b(), "zzaxl", EnumC8399c.m18128b()});
            case 4:
                return zzbgv;
            case 5:
                AbstractC8129gb<C8396v2> gbVar = zzh;
                AbstractC8129gb<C8396v2> gbVar2 = gbVar;
                if (gbVar == null) {
                    synchronized (C8396v2.class) {
                        try {
                            AbstractC8129gb<C8396v2> gbVar3 = zzh;
                            gbVar2 = gbVar3;
                            if (gbVar3 == null) {
                                gbVar2 = new AbstractC8228l9.C8229a<>(zzbgv);
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
