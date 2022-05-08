package p081h.p203i.p204a.p224e.p259j.p271l;

import p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8228l9;
/* renamed from: h.i.a.e.j.l.h2 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/h2.class */
public final class C8134h2 extends AbstractC8228l9<C8134h2, C8136b> implements AbstractC8430wa {
    public static final C8134h2 zzbdx;
    public static volatile AbstractC8129gb<C8134h2> zzh;
    public int zzbdt;
    public float zzbdu;
    public int zzbdv;
    public int zzbdw;
    public int zzj;

    /* renamed from: h.i.a.e.j.l.h2$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/h2$a.class */
    public enum EnumC8135a implements AbstractC8286o9 {
        CATEGORY_UNKNOWN(0),
        CATEGORY_HOME_GOOD(1),
        CATEGORY_FASHION_GOOD(2),
        CATEGORY_ANIMAL(3),
        CATEGORY_FOOD(4),
        CATEGORY_PLACE(5),
        CATEGORY_PLANT(6);
        

        /* renamed from: a */
        public final int f18868a;

        static {
            new C8245m5();
        }

        EnumC8135a(int i) {
            this.f18868a = i;
        }

        /* renamed from: b */
        public static AbstractC8319q9 m18482b() {
            return C8224l5.f19059a;
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8286o9
        /* renamed from: a */
        public final int mo17910a() {
            return this.f18868a;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return "<" + EnumC8135a.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.f18868a + " name=" + name() + '>';
        }
    }

    /* renamed from: h.i.a.e.j.l.h2$b */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/h2$b.class */
    public static final class C8136b extends AbstractC8228l9.C8230b<C8134h2, C8136b> implements AbstractC8430wa {
        public C8136b() {
            super(C8134h2.zzbdx);
        }

        public /* synthetic */ C8136b(C8045c4 c4Var) {
            this();
        }
    }

    static {
        C8134h2 h2Var = new C8134h2();
        zzbdx = h2Var;
        AbstractC8228l9.m18357a(C8134h2.class, h2Var);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8228l9
    /* renamed from: a */
    public final Object mo17912a(int i, Object obj, Object obj2) {
        switch (C8045c4.f18776a[i - 1]) {
            case 1:
                return new C8134h2();
            case 2:
                return new C8136b(null);
            case 3:
                return AbstractC8228l9.m18360a(zzbdx, "\u0001\u0004��\u0001\u0001\u0004\u0004������\u0001ဌ��\u0002ခ\u0001\u0003င\u0002\u0004ဋ\u0003", new Object[]{"zzj", "zzbdt", EnumC8135a.m18482b(), "zzbdu", "zzbdv", "zzbdw"});
            case 4:
                return zzbdx;
            case 5:
                AbstractC8129gb<C8134h2> gbVar = zzh;
                AbstractC8129gb<C8134h2> gbVar2 = gbVar;
                if (gbVar == null) {
                    synchronized (C8134h2.class) {
                        try {
                            AbstractC8129gb<C8134h2> gbVar3 = zzh;
                            gbVar2 = gbVar3;
                            if (gbVar3 == null) {
                                gbVar2 = new AbstractC8228l9.C8229a<>(zzbdx);
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
