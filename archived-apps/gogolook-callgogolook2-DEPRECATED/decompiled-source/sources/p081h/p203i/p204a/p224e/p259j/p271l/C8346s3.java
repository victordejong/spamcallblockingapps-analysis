package p081h.p203i.p204a.p224e.p259j.p271l;

import p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8228l9;
/* renamed from: h.i.a.e.j.l.s3 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/s3.class */
public final class C8346s3 extends AbstractC8228l9<C8346s3, C8347a> implements AbstractC8430wa {
    public static final C8346s3 zzaqk;
    public static volatile AbstractC8129gb<C8346s3> zzh;
    public C8454y1 zzaoc;
    public C8470z1 zzaps;
    public C8294p3 zzaqa;
    public int zzj;

    /* renamed from: h.i.a.e.j.l.s3$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/s3$a.class */
    public static final class C8347a extends AbstractC8228l9.C8230b<C8346s3, C8347a> implements AbstractC8430wa {
        public C8347a() {
            super(C8346s3.zzaqk);
        }

        public /* synthetic */ C8347a(C8045c4 c4Var) {
            this();
        }
    }

    static {
        C8346s3 s3Var = new C8346s3();
        zzaqk = s3Var;
        AbstractC8228l9.m18357a(C8346s3.class, s3Var);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8228l9
    /* renamed from: a */
    public final Object mo17912a(int i, Object obj, Object obj2) {
        switch (C8045c4.f18776a[i - 1]) {
            case 1:
                return new C8346s3();
            case 2:
                return new C8347a(null);
            case 3:
                return AbstractC8228l9.m18360a(zzaqk, "\u0001\u0003��\u0001\u0001\u0003\u0003������\u0001ဉ��\u0002ဉ\u0001\u0003ဉ\u0002", new Object[]{"zzj", "zzaps", "zzaqa", "zzaoc"});
            case 4:
                return zzaqk;
            case 5:
                AbstractC8129gb<C8346s3> gbVar = zzh;
                AbstractC8129gb<C8346s3> gbVar2 = gbVar;
                if (gbVar == null) {
                    synchronized (C8346s3.class) {
                        try {
                            AbstractC8129gb<C8346s3> gbVar3 = zzh;
                            gbVar2 = gbVar3;
                            if (gbVar3 == null) {
                                gbVar2 = new AbstractC8228l9.C8229a<>(zzaqk);
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
