package p081h.p203i.p204a.p224e.p259j.p271l;

import p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8228l9;
/* renamed from: h.i.a.e.j.l.y2 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/y2.class */
public final class C8457y2 extends AbstractC8228l9<C8457y2, C8458a> implements AbstractC8430wa {
    public static final C8457y2 zzbht;
    public static volatile AbstractC8129gb<C8457y2> zzh;
    public C8454y1 zzaoc;
    public C8470z1 zzaps;
    public int zzj;

    /* renamed from: h.i.a.e.j.l.y2$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/y2$a.class */
    public static final class C8458a extends AbstractC8228l9.C8230b<C8457y2, C8458a> implements AbstractC8430wa {
        public C8458a() {
            super(C8457y2.zzbht);
        }

        public /* synthetic */ C8458a(C8045c4 c4Var) {
            this();
        }
    }

    static {
        C8457y2 y2Var = new C8457y2();
        zzbht = y2Var;
        AbstractC8228l9.m18357a(C8457y2.class, y2Var);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8228l9
    /* renamed from: a */
    public final Object mo17912a(int i, Object obj, Object obj2) {
        switch (C8045c4.f18776a[i - 1]) {
            case 1:
                return new C8457y2();
            case 2:
                return new C8458a(null);
            case 3:
                return AbstractC8228l9.m18360a(zzbht, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001ဉ��\u0002ဉ\u0001", new Object[]{"zzj", "zzaps", "zzaoc"});
            case 4:
                return zzbht;
            case 5:
                AbstractC8129gb<C8457y2> gbVar = zzh;
                AbstractC8129gb<C8457y2> gbVar2 = gbVar;
                if (gbVar == null) {
                    synchronized (C8457y2.class) {
                        try {
                            AbstractC8129gb<C8457y2> gbVar3 = zzh;
                            gbVar2 = gbVar3;
                            if (gbVar3 == null) {
                                gbVar2 = new AbstractC8228l9.C8229a<>(zzbht);
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
