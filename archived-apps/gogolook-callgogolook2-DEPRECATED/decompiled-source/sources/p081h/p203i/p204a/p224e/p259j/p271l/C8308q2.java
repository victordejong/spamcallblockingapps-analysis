package p081h.p203i.p204a.p224e.p259j.p271l;

import p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8228l9;
/* renamed from: h.i.a.e.j.l.q2 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/q2.class */
public final class C8308q2 extends AbstractC8228l9<C8308q2, C8310b> implements AbstractC8430wa {
    public static final C8308q2 zzbgm;
    public static volatile AbstractC8129gb<C8308q2> zzh;
    public C8114g2 zzbfu;
    public int zzbgh;
    public boolean zzbgi;
    public boolean zzbgj;
    public int zzbgk;
    public float zzbgl;
    public int zzj;

    /* renamed from: h.i.a.e.j.l.q2$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/q2$a.class */
    public enum EnumC8309a implements AbstractC8286o9 {
        MODE_UNSPECIFIED(0),
        STREAM(1),
        SINGLE_IMAGE(2);
        

        /* renamed from: a */
        public final int f19261a;

        static {
            new C8403v5();
        }

        EnumC8309a(int i) {
            this.f19261a = i;
        }

        /* renamed from: b */
        public static AbstractC8319q9 m18196b() {
            return C8385u5.f19330a;
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8286o9
        /* renamed from: a */
        public final int mo17910a() {
            return this.f19261a;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return "<" + EnumC8309a.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.f19261a + " name=" + name() + '>';
        }
    }

    /* renamed from: h.i.a.e.j.l.q2$b */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/q2$b.class */
    public static final class C8310b extends AbstractC8228l9.C8230b<C8308q2, C8310b> implements AbstractC8430wa {
        public C8310b() {
            super(C8308q2.zzbgm);
        }

        public /* synthetic */ C8310b(C8045c4 c4Var) {
            this();
        }
    }

    static {
        C8308q2 q2Var = new C8308q2();
        zzbgm = q2Var;
        AbstractC8228l9.m18357a(C8308q2.class, q2Var);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8228l9
    /* renamed from: a */
    public final Object mo17912a(int i, Object obj, Object obj2) {
        switch (C8045c4.f18776a[i - 1]) {
            case 1:
                return new C8308q2();
            case 2:
                return new C8310b(null);
            case 3:
                return AbstractC8228l9.m18360a(zzbgm, "\u0001\u0006��\u0001\u0001\u0006\u0006������\u0001ဌ��\u0002ဇ\u0001\u0003ဇ\u0002\u0004ဋ\u0003\u0005ခ\u0004\u0006ဉ\u0005", new Object[]{"zzj", "zzbgh", EnumC8309a.m18196b(), "zzbgi", "zzbgj", "zzbgk", "zzbgl", "zzbfu"});
            case 4:
                return zzbgm;
            case 5:
                AbstractC8129gb<C8308q2> gbVar = zzh;
                AbstractC8129gb<C8308q2> gbVar2 = gbVar;
                if (gbVar == null) {
                    synchronized (C8308q2.class) {
                        try {
                            AbstractC8129gb<C8308q2> gbVar3 = zzh;
                            gbVar2 = gbVar3;
                            if (gbVar3 == null) {
                                gbVar2 = new AbstractC8228l9.C8229a<>(zzbgm);
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
