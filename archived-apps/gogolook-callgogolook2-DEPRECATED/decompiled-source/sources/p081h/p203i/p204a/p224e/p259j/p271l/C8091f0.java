package p081h.p203i.p204a.p224e.p259j.p271l;

import p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8228l9;
/* renamed from: h.i.a.e.j.l.f0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/f0.class */
public final class C8091f0 extends AbstractC8228l9<C8091f0, C8092a> implements AbstractC8430wa {
    public static final C8091f0 zzdbl;
    public static volatile AbstractC8129gb<C8091f0> zzh;
    public byte zzco = (byte) 2;
    public C8014b0 zzdbc;
    public C8150i0 zzdbd;
    public C8054d0 zzdbe;
    public int zzdbf;
    public C8032c0 zzdbg;
    public C8214l0 zzdbh;
    public long zzdbi;
    public boolean zzdbj;
    public int zzdbk;
    public int zzj;
    public long zzoo;

    /* renamed from: h.i.a.e.j.l.f0$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/f0$a.class */
    public static final class C8092a extends AbstractC8228l9.C8230b<C8091f0, C8092a> implements AbstractC8430wa {
        public C8092a() {
            super(C8091f0.zzdbl);
        }

        public /* synthetic */ C8092a(C8238m0 m0Var) {
            this();
        }
    }

    static {
        C8091f0 f0Var = new C8091f0();
        zzdbl = f0Var;
        AbstractC8228l9.m18357a(C8091f0.class, f0Var);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8228l9
    /* renamed from: a */
    public final Object mo17912a(int i, Object obj, Object obj2) {
        int i2 = C8238m0.f19083a[i - 1];
        int i3 = 0;
        switch (i2) {
            case 1:
                return new C8091f0();
            case 2:
                return new C8092a(null);
            case 3:
                return AbstractC8228l9.m18360a(zzdbl, "\u0001\n��\u0001\u0001\n\n����\u0001\u0001ဉ��\u0002ဉ\u0001\u0003ဌ\u0003\u0004ဉ\u0004\u0005ᐉ\u0005\u0006ဂ\u0006\u0007ဂ\u0007\bဇ\b\tင\t\nဉ\u0002", new Object[]{"zzj", "zzdbc", "zzdbd", "zzdbf", EnumC8375u0.m18157b(), "zzdbg", "zzdbh", "zzoo", "zzdbi", "zzdbj", "zzdbk", "zzdbe"});
            case 4:
                return zzdbl;
            case 5:
                AbstractC8129gb<C8091f0> gbVar = zzh;
                AbstractC8129gb<C8091f0> gbVar2 = gbVar;
                if (gbVar == null) {
                    synchronized (C8091f0.class) {
                        try {
                            AbstractC8129gb<C8091f0> gbVar3 = zzh;
                            gbVar2 = gbVar3;
                            if (gbVar3 == null) {
                                gbVar2 = new AbstractC8228l9.C8229a<>(zzdbl);
                                zzh = gbVar2;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
                return gbVar2;
            case 6:
                return Byte.valueOf(this.zzco);
            case 7:
                if (obj != null) {
                    i3 = 1;
                }
                this.zzco = (byte) i3;
                return null;
            default:
                throw new UnsupportedOperationException();
        }
    }
}
