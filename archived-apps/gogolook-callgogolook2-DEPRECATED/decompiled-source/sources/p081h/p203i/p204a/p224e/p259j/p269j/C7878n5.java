package p081h.p203i.p204a.p224e.p259j.p269j;

import p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7869n1;
/* renamed from: h.i.a.e.j.j.n5 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/j/n5.class */
public final class C7878n5 extends AbstractC7869n1<C7878n5, C7879a> implements AbstractC7939v2 {
    public static volatile AbstractC7794e3<C7878n5> zzfm;
    public static final C7878n5 zzto = new C7878n5();
    public int zzfh;
    public int zztm = -1;
    public int zztn;

    /* renamed from: h.i.a.e.j.j.n5$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/j/n5$a.class */
    public static final class C7879a extends AbstractC7869n1.C7870a<C7878n5, C7879a> implements AbstractC7939v2 {
        public C7879a() {
            super(C7878n5.zzto);
        }

        public /* synthetic */ C7879a(C7888o5 o5Var) {
            this();
        }
    }

    /* renamed from: h.i.a.e.j.j.n5$b */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/j/n5$b.class */
    public enum EnumC7880b implements AbstractC7898q1 {
        UNKNOWN_MOBILE_SUBTYPE(0),
        GPRS(1),
        EDGE(2),
        UMTS(3),
        CDMA(4),
        EVDO_0(5),
        EVDO_A(6),
        RTT(7),
        HSDPA(8),
        HSUPA(9),
        HSPA(10),
        IDEN(11),
        EVDO_B(12),
        LTE(13),
        EHRPD(14),
        HSPAP(15),
        GSM(16),
        TD_SCDMA(17),
        IWLAN(18),
        LTE_CA(19),
        COMBINED(100);
        

        /* renamed from: a */
        public final int f18471a;

        static {
            new C7895p5();
        }

        EnumC7880b(int i) {
            this.f18471a = i;
        }

        /* renamed from: a */
        public static EnumC7880b m19122a(int i) {
            if (i == 100) {
                return COMBINED;
            }
            switch (i) {
                case 0:
                    return UNKNOWN_MOBILE_SUBTYPE;
                case 1:
                    return GPRS;
                case 2:
                    return EDGE;
                case 3:
                    return UMTS;
                case 4:
                    return CDMA;
                case 5:
                    return EVDO_0;
                case 6:
                    return EVDO_A;
                case 7:
                    return RTT;
                case 8:
                    return HSDPA;
                case 9:
                    return HSUPA;
                case 10:
                    return HSPA;
                case 11:
                    return IDEN;
                case 12:
                    return EVDO_B;
                case 13:
                    return LTE;
                case 14:
                    return EHRPD;
                case 15:
                    return HSPAP;
                case 16:
                    return GSM;
                case 17:
                    return TD_SCDMA;
                case 18:
                    return IWLAN;
                case 19:
                    return LTE_CA;
                default:
                    return null;
            }
        }

        /* renamed from: a */
        public static AbstractC7905r1 m19123a() {
            return C7902q5.f18523a;
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7898q1
        /* renamed from: F */
        public final int mo19088F() {
            return this.f18471a;
        }
    }

    /* renamed from: h.i.a.e.j.j.n5$c */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/j/n5$c.class */
    public enum EnumC7881c implements AbstractC7898q1 {
        NONE(-1),
        MOBILE(0),
        WIFI(1),
        MOBILE_MMS(2),
        MOBILE_SUPL(3),
        MOBILE_DUN(4),
        MOBILE_HIPRI(5),
        WIMAX(6),
        BLUETOOTH(7),
        DUMMY(8),
        ETHERNET(9),
        MOBILE_FOTA(10),
        MOBILE_IMS(11),
        MOBILE_CBS(12),
        WIFI_P2P(13),
        MOBILE_IA(14),
        MOBILE_EMERGENCY(15),
        PROXY(16),
        VPN(17);
        

        /* renamed from: a */
        public final int f18492a;

        static {
            new C7909r5();
        }

        EnumC7881c(int i) {
            this.f18492a = i;
        }

        /* renamed from: a */
        public static EnumC7881c m19120a(int i) {
            switch (i) {
                case -1:
                    return NONE;
                case 0:
                    return MOBILE;
                case 1:
                    return WIFI;
                case 2:
                    return MOBILE_MMS;
                case 3:
                    return MOBILE_SUPL;
                case 4:
                    return MOBILE_DUN;
                case 5:
                    return MOBILE_HIPRI;
                case 6:
                    return WIMAX;
                case 7:
                    return BLUETOOTH;
                case 8:
                    return DUMMY;
                case 9:
                    return ETHERNET;
                case 10:
                    return MOBILE_FOTA;
                case 11:
                    return MOBILE_IMS;
                case 12:
                    return MOBILE_CBS;
                case 13:
                    return WIFI_P2P;
                case 14:
                    return MOBILE_IA;
                case 15:
                    return MOBILE_EMERGENCY;
                case 16:
                    return PROXY;
                case 17:
                    return VPN;
                default:
                    return null;
            }
        }

        /* renamed from: a */
        public static AbstractC7905r1 m19121a() {
            return C7916s5.f18566a;
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7898q1
        /* renamed from: F */
        public final int mo19088F() {
            return this.f18492a;
        }
    }

    static {
        AbstractC7869n1.m19159a(C7878n5.class, zzto);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7869n1
    /* renamed from: a */
    public final Object mo19125a(int i, Object obj, Object obj2) {
        switch (C7888o5.f18495a[i - 1]) {
            case 1:
                return new C7878n5();
            case 2:
                return new C7879a(null);
            case 3:
                return AbstractC7869n1.m19161a(zzto, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001\f��\u0002\f\u0001", new Object[]{"zzfh", "zztm", EnumC7881c.m19121a(), "zztn", EnumC7880b.m19123a()});
            case 4:
                return zzto;
            case 5:
                AbstractC7794e3<C7878n5> e3Var = zzfm;
                AbstractC7794e3<C7878n5> e3Var2 = e3Var;
                if (e3Var == null) {
                    synchronized (C7878n5.class) {
                        try {
                            AbstractC7794e3<C7878n5> e3Var3 = zzfm;
                            e3Var2 = e3Var3;
                            if (e3Var3 == null) {
                                e3Var2 = new AbstractC7869n1.C7871b<>(zzto);
                                zzfm = e3Var2;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
                return e3Var2;
            case 6:
                return (byte) 1;
            case 7:
                return null;
            default:
                throw new UnsupportedOperationException();
        }
    }
}
