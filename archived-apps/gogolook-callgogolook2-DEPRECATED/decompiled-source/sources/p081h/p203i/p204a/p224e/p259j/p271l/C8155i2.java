package p081h.p203i.p204a.p224e.p259j.p271l;

import p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8228l9;
/* renamed from: h.i.a.e.j.l.i2 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/i2.class */
public final class C8155i2 extends AbstractC8228l9<C8155i2, C8158c> implements AbstractC8430wa {
    public static final AbstractC8371t9<Integer, EnumC8156a> zzaop = new C8260n5();
    public static final AbstractC8371t9<Integer, EnumC8157b> zzaor = new C8282o5();
    public static final C8155i2 zzbeg;
    public static volatile AbstractC8129gb<C8155i2> zzh;
    public C8454y1 zzaoc;
    public C8316q7 zzaon;
    public AbstractC8353s9 zzaoo = AbstractC8228l9.m18352i();
    public AbstractC8353s9 zzaoq = AbstractC8228l9.m18352i();
    public C8470z1 zzaps;
    public int zzj;

    /* renamed from: h.i.a.e.j.l.i2$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/i2$a.class */
    public enum EnumC8156a implements AbstractC8286o9 {
        FORMAT_UNKNOWN(0),
        FORMAT_CODE_128(1),
        FORMAT_CODE_39(2),
        FORMAT_CODE_93(4),
        FORMAT_CODABAR(8),
        FORMAT_DATA_MATRIX(16),
        FORMAT_EAN_13(32),
        FORMAT_EAN_8(64),
        FORMAT_ITF(128),
        FORMAT_QR_CODE(256),
        FORMAT_UPC_A(512),
        FORMAT_UPC_E(1024),
        FORMAT_PDF417(2048),
        FORMAT_AZTEC(4096);
        

        /* renamed from: a */
        public final int f18898a;

        static {
            new C8314q5();
        }

        EnumC8156a(int i) {
            this.f18898a = i;
        }

        /* renamed from: b */
        public static AbstractC8319q9 m18470b() {
            return C8298p5.f19245a;
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8286o9
        /* renamed from: a */
        public final int mo17910a() {
            return this.f18898a;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return "<" + EnumC8156a.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.f18898a + " name=" + name() + '>';
        }
    }

    /* renamed from: h.i.a.e.j.l.i2$b */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/i2$b.class */
    public enum EnumC8157b implements AbstractC8286o9 {
        TYPE_UNKNOWN(0),
        TYPE_CONTACT_INFO(1),
        TYPE_EMAIL(2),
        TYPE_ISBN(3),
        TYPE_PHONE(4),
        TYPE_PRODUCT(5),
        TYPE_SMS(6),
        TYPE_TEXT(7),
        TYPE_URL(8),
        TYPE_WIFI(9),
        TYPE_GEO(10),
        TYPE_CALENDAR_EVENT(11),
        TYPE_DRIVER_LICENSE(12);
        

        /* renamed from: a */
        public final int f18913a;

        static {
            new C8330r5();
        }

        EnumC8157b(int i) {
            this.f18913a = i;
        }

        /* renamed from: b */
        public static AbstractC8319q9 m18469b() {
            return C8349s5.f19290a;
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8286o9
        /* renamed from: a */
        public final int mo17910a() {
            return this.f18913a;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return "<" + EnumC8157b.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.f18913a + " name=" + name() + '>';
        }
    }

    /* renamed from: h.i.a.e.j.l.i2$c */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/i2$c.class */
    public static final class C8158c extends AbstractC8228l9.C8230b<C8155i2, C8158c> implements AbstractC8430wa {
        public C8158c() {
            super(C8155i2.zzbeg);
        }

        public /* synthetic */ C8158c(C8045c4 c4Var) {
            this();
        }
    }

    static {
        C8155i2 i2Var = new C8155i2();
        zzbeg = i2Var;
        AbstractC8228l9.m18357a(C8155i2.class, i2Var);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8228l9
    /* renamed from: a */
    public final Object mo17912a(int i, Object obj, Object obj2) {
        switch (C8045c4.f18776a[i - 1]) {
            case 1:
                return new C8155i2();
            case 2:
                return new C8158c(null);
            case 3:
                return AbstractC8228l9.m18360a(zzbeg, "\u0001\u0005��\u0001\u0001\u0005\u0005��\u0002��\u0001ဉ��\u0002ဉ\u0001\u0003\u001e\u0004\u001e\u0005ဉ\u0002", new Object[]{"zzj", "zzaps", "zzaon", "zzaoo", EnumC8156a.m18470b(), "zzaoq", EnumC8157b.m18469b(), "zzaoc"});
            case 4:
                return zzbeg;
            case 5:
                AbstractC8129gb<C8155i2> gbVar = zzh;
                AbstractC8129gb<C8155i2> gbVar2 = gbVar;
                if (gbVar == null) {
                    synchronized (C8155i2.class) {
                        try {
                            AbstractC8129gb<C8155i2> gbVar3 = zzh;
                            gbVar2 = gbVar3;
                            if (gbVar3 == null) {
                                gbVar2 = new AbstractC8228l9.C8229a<>(zzbeg);
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
