package p081h.p203i.p204a.p224e.p259j.p271l;

import p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8228l9;
/* renamed from: h.i.a.e.j.l.a3 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/a3.class */
public final class C7998a3 extends AbstractC8228l9<C7998a3, C7999a> implements AbstractC8430wa {
    public static final C7998a3 zzbjm;
    public static volatile AbstractC8129gb<C7998a3> zzh;
    public int zzaoa;
    public int zzbjl;
    public int zzj;

    /* renamed from: h.i.a.e.j.l.a3$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/a3$a.class */
    public static final class C7999a extends AbstractC8228l9.C8230b<C7998a3, C7999a> implements AbstractC8430wa {
        public C7999a() {
            super(C7998a3.zzbjm);
        }

        public /* synthetic */ C7999a(C8045c4 c4Var) {
            this();
        }
    }

    /* renamed from: h.i.a.e.j.l.a3$b */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/a3$b.class */
    public enum EnumC8000b implements AbstractC8286o9 {
        UNKNOWN(0),
        CANONICAL(1),
        TFLITE(2),
        TFLITE_SUPPORT(3);
        

        /* renamed from: a */
        public final int f18728a;

        static {
            new C8084e6();
        }

        EnumC8000b(int i) {
            this.f18728a = i;
        }

        /* renamed from: b */
        public static AbstractC8319q9 m18695b() {
            return C8104f6.f18840a;
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8286o9
        /* renamed from: a */
        public final int mo17910a() {
            return this.f18728a;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return "<" + EnumC8000b.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.f18728a + " name=" + name() + '>';
        }
    }

    static {
        C7998a3 a3Var = new C7998a3();
        zzbjm = a3Var;
        AbstractC8228l9.m18357a(C7998a3.class, a3Var);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8228l9
    /* renamed from: a */
    public final Object mo17912a(int i, Object obj, Object obj2) {
        switch (C8045c4.f18776a[i - 1]) {
            case 1:
                return new C7998a3();
            case 2:
                return new C7999a(null);
            case 3:
                return AbstractC8228l9.m18360a(zzbjm, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001ဌ��\u0002င\u0001", new Object[]{"zzj", "zzbjl", EnumC8000b.m18695b(), "zzaoa"});
            case 4:
                return zzbjm;
            case 5:
                AbstractC8129gb<C7998a3> gbVar = zzh;
                AbstractC8129gb<C7998a3> gbVar2 = gbVar;
                if (gbVar == null) {
                    synchronized (C7998a3.class) {
                        try {
                            AbstractC8129gb<C7998a3> gbVar3 = zzh;
                            gbVar2 = gbVar3;
                            if (gbVar3 == null) {
                                gbVar2 = new AbstractC8228l9.C8229a<>(zzbjm);
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
