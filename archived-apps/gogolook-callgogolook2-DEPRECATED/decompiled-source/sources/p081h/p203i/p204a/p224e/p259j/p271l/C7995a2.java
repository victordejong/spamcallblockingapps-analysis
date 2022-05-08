package p081h.p203i.p204a.p224e.p259j.p271l;

import p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8228l9;
import p081h.p203i.p204a.p224e.p259j.p271l.C8454y1;
/* renamed from: h.i.a.e.j.l.a2 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/a2.class */
public final class C7995a2 extends AbstractC8228l9<C7995a2, C7996a> implements AbstractC8430wa {
    public static final C7995a2 zzbbd;
    public static volatile AbstractC8129gb<C7995a2> zzh;
    public int zzbae;
    public long zzbas;
    public int zzbay;
    public int zzbaz;
    public int zzbba;
    public int zzbbb;
    public int zzbbc;
    public int zzj;

    /* renamed from: h.i.a.e.j.l.a2$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/a2$a.class */
    public static final class C7996a extends AbstractC8228l9.C8230b<C7995a2, C7996a> implements AbstractC8430wa {
        public C7996a() {
            super(C7995a2.zzbbd);
        }

        public /* synthetic */ C7996a(C8045c4 c4Var) {
            this();
        }
    }

    /* renamed from: h.i.a.e.j.l.a2$b */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/a2$b.class */
    public enum EnumC7997b implements AbstractC8286o9 {
        SOURCE_UNKNOWN(0),
        BITMAP(1),
        BYTEARRAY(2),
        BYTEBUFFER(3),
        FILEPATH(4),
        ANDROID_MEDIA_IMAGE(5);
        

        /* renamed from: a */
        public final int f18722a;

        static {
            new C8024b5();
        }

        EnumC7997b(int i) {
            this.f18722a = i;
        }

        /* renamed from: b */
        public static AbstractC8319q9 m18697b() {
            return C8046c5.f18777a;
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8286o9
        /* renamed from: a */
        public final int mo17910a() {
            return this.f18722a;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return "<" + EnumC7997b.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.f18722a + " name=" + name() + '>';
        }
    }

    static {
        C7995a2 a2Var = new C7995a2();
        zzbbd = a2Var;
        AbstractC8228l9.m18357a(C7995a2.class, a2Var);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8228l9
    /* renamed from: a */
    public final Object mo17912a(int i, Object obj, Object obj2) {
        switch (C8045c4.f18776a[i - 1]) {
            case 1:
                return new C7995a2();
            case 2:
                return new C7996a(null);
            case 3:
                return AbstractC8228l9.m18360a(zzbbd, "\u0001\u0007��\u0001\u0001\u0007\u0007������\u0001ဃ��\u0002ဌ\u0001\u0003ဌ\u0002\u0004ဋ\u0003\u0005ဋ\u0004\u0006ဋ\u0005\u0007ဋ\u0006", new Object[]{"zzj", "zzbas", "zzbay", EnumC7997b.m18697b(), "zzbae", C8454y1.EnumC8455a.m17994b(), "zzbaz", "zzbba", "zzbbb", "zzbbc"});
            case 4:
                return zzbbd;
            case 5:
                AbstractC8129gb<C7995a2> gbVar = zzh;
                AbstractC8129gb<C7995a2> gbVar2 = gbVar;
                if (gbVar == null) {
                    synchronized (C7995a2.class) {
                        try {
                            AbstractC8129gb<C7995a2> gbVar3 = zzh;
                            gbVar2 = gbVar3;
                            if (gbVar3 == null) {
                                gbVar2 = new AbstractC8228l9.C8229a<>(zzbbd);
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
