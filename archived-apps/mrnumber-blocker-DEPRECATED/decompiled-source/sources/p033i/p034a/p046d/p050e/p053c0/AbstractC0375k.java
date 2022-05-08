package p033i.p034a.p046d.p050e.p053c0;

import java.util.Collections;
import p033i.p034a.p035a.p036f.AbstractC0302r;
import p033i.p034a.p046d.p047c.AbstractC0359e;
import p033i.p034a.p046d.p055f.AbstractC0407h;
/* renamed from: i.a.d.e.c0.k */
/* loaded from: classes2-dex2jar.jar:i/a/d/e/c0/k.class */
public abstract class AbstractC0375k {

    /* renamed from: i.a.d.e.c0.k$a */
    /* loaded from: classes2-dex2jar.jar:i/a/d/e/c0/k$a.class */
    public enum EnumC0376a {
        DELTA,
        CUMULATIVE
    }

    /* renamed from: i.a.d.e.c0.k$b */
    /* loaded from: classes2-dex2jar.jar:i/a/d/e/c0/k$b.class */
    static abstract class AbstractC0377b {
        AbstractC0377b() {
        }
    }

    /* renamed from: i.a.d.e.c0.k$k */
    /* loaded from: classes2-dex2jar.jar:i/a/d/e/c0/k$k.class */
    public static abstract class AbstractC0378k {
        AbstractC0378k() {
        }

        /* renamed from: a */
        public abstract long m287a();

        /* renamed from: b */
        public abstract AbstractC0302r m286b();

        /* renamed from: c */
        public abstract long m285c();
    }

    /* renamed from: i.a.d.e.c0.k$m */
    /* loaded from: classes2-dex2jar.jar:i/a/d/e/c0/k$m.class */
    public enum EnumC0379m {
        LONG_GAUGE,
        DOUBLE_GAUGE,
        LONG_SUM,
        DOUBLE_SUM,
        SUMMARY
    }

    /* renamed from: i.a.d.e.c0.k$n */
    /* loaded from: classes2-dex2jar.jar:i/a/d/e/c0/k$n.class */
    public static abstract class AbstractC0380n {
        AbstractC0380n() {
        }

        /* renamed from: a */
        public static AbstractC0380n m284a(double d, double d2) {
            return new j(d, d2);
        }

        /* renamed from: b */
        public abstract double m283b();

        /* renamed from: c */
        public abstract double m282c();
    }

    static {
        c.a(Collections.emptyList());
        h.a(Collections.emptyList());
        EnumC0376a aVar = EnumC0376a.CUMULATIVE;
        e.c(false, aVar, Collections.emptyList());
        j.c(false, aVar, Collections.emptyList());
        f.a(Collections.emptyList());
    }

    AbstractC0375k() {
    }

    /* renamed from: a */
    public static AbstractC0375k m299a(AbstractC0407h hVar, AbstractC0359e eVar, String str, String str2, String str3, c cVar) {
        return new a(hVar, eVar, str, str2, str3, EnumC0379m.DOUBLE_GAUGE, cVar);
    }

    /* renamed from: b */
    public static AbstractC0375k m298b(AbstractC0407h hVar, AbstractC0359e eVar, String str, String str2, String str3, e eVar2) {
        return new a(hVar, eVar, str, str2, str3, EnumC0379m.DOUBLE_SUM, eVar2);
    }

    /* renamed from: c */
    public static AbstractC0375k m297c(AbstractC0407h hVar, AbstractC0359e eVar, String str, String str2, String str3, f fVar) {
        return new a(hVar, eVar, str, str2, str3, EnumC0379m.SUMMARY, fVar);
    }

    /* renamed from: d */
    public static AbstractC0375k m296d(AbstractC0407h hVar, AbstractC0359e eVar, String str, String str2, String str3, h hVar2) {
        return new a(hVar, eVar, str, str2, str3, EnumC0379m.LONG_GAUGE, hVar2);
    }

    /* renamed from: e */
    public static AbstractC0375k m295e(AbstractC0407h hVar, AbstractC0359e eVar, String str, String str2, String str3, j jVar) {
        return new a(hVar, eVar, str, str2, str3, EnumC0379m.LONG_SUM, jVar);
    }

    /* renamed from: f */
    abstract AbstractC0377b m294f();

    /* renamed from: g */
    public abstract String m293g();

    /* renamed from: h */
    public abstract AbstractC0359e m292h();

    /* renamed from: i */
    public abstract String m291i();

    /* renamed from: j */
    public abstract AbstractC0407h m290j();

    /* renamed from: k */
    public abstract EnumC0379m m289k();

    /* renamed from: l */
    public abstract String m288l();
}
