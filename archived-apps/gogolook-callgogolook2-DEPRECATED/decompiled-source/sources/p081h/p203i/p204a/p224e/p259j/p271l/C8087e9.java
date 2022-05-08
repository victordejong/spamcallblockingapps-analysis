package p081h.p203i.p204a.p224e.p259j.p271l;

import java.io.IOException;
import java.util.Iterator;
import java.util.Map;
import p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8127g9;
/* renamed from: h.i.a.e.j.l.e9 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/e9.class */
public final class C8087e9<T extends AbstractC8127g9<T>> {

    /* renamed from: d */
    public static final C8087e9 f18817d = new C8087e9(true);

    /* renamed from: a */
    public final C8288ob<T, Object> f18818a;

    /* renamed from: b */
    public boolean f18819b;

    /* renamed from: c */
    public boolean f18820c;

    public C8087e9() {
        this.f18818a = C8288ob.m18227c(16);
    }

    public C8087e9(C8288ob<T, Object> obVar) {
        this.f18818a = obVar;
        m18566e();
    }

    public C8087e9(boolean z) {
        this(C8288ob.m18227c(0));
        m18566e();
    }

    /* renamed from: a */
    public static int m18576a(EnumC8374u uVar, int i, Object obj) {
        int e = AbstractC8447x8.m18046e(i);
        int i2 = e;
        if (uVar == EnumC8374u.GROUP) {
            C8302p9.m18206a((AbstractC8390ua) obj);
            i2 = e << 1;
        }
        return i2 + m18575a(uVar, obj);
    }

    /* renamed from: a */
    public static int m18575a(EnumC8374u uVar, Object obj) {
        switch (C8146h9.f18875b[uVar.ordinal()]) {
            case 1:
                return AbstractC8447x8.m18069b(((Double) obj).doubleValue());
            case 2:
                return AbstractC8447x8.m18068b(((Float) obj).floatValue());
            case 3:
                return AbstractC8447x8.m18029i(((Long) obj).longValue());
            case 4:
                return AbstractC8447x8.m18047d(((Long) obj).longValue());
            case 5:
                return AbstractC8447x8.m18043f(((Integer) obj).intValue());
            case 6:
                return AbstractC8447x8.m18040f(((Long) obj).longValue());
            case 7:
                return AbstractC8447x8.m18031i(((Integer) obj).intValue());
            case 8:
                return AbstractC8447x8.m18057b(((Boolean) obj).booleanValue());
            case 9:
                return AbstractC8447x8.m18051c((AbstractC8390ua) obj);
            case 10:
                return obj instanceof C8482z9 ? AbstractC8447x8.m18075a((C8482z9) obj) : AbstractC8447x8.m18059b((AbstractC8390ua) obj);
            case 11:
                return obj instanceof AbstractC8209k8 ? AbstractC8447x8.m18060b((AbstractC8209k8) obj) : AbstractC8447x8.m18058b((String) obj);
            case 12:
                return obj instanceof AbstractC8209k8 ? AbstractC8447x8.m18060b((AbstractC8209k8) obj) : AbstractC8447x8.m18056b((byte[]) obj);
            case 13:
                return AbstractC8447x8.m18039g(((Integer) obj).intValue());
            case 14:
                return AbstractC8447x8.m18028j(((Integer) obj).intValue());
            case 15:
                return AbstractC8447x8.m18036g(((Long) obj).longValue());
            case 16:
                return AbstractC8447x8.m18035h(((Integer) obj).intValue());
            case 17:
                return AbstractC8447x8.m18044e(((Long) obj).longValue());
            case 18:
                return obj instanceof AbstractC8286o9 ? AbstractC8447x8.m18026k(((AbstractC8286o9) obj).mo17910a()) : AbstractC8447x8.m18026k(((Integer) obj).intValue());
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
    }

    /* renamed from: a */
    public static void m18574a(AbstractC8447x8 x8Var, EnumC8374u uVar, int i, Object obj) throws IOException {
        if (uVar == EnumC8374u.GROUP) {
            AbstractC8390ua uaVar = (AbstractC8390ua) obj;
            C8302p9.m18206a(uaVar);
            x8Var.mo18019a(i, 3);
            uaVar.mo18134a(x8Var);
            x8Var.mo18019a(i, 4);
            return;
        }
        x8Var.mo18019a(i, uVar.m18158b());
        switch (C8146h9.f18875b[uVar.ordinal()]) {
            case 1:
                x8Var.m18080a(((Double) obj).doubleValue());
                return;
            case 2:
                x8Var.m18079a(((Float) obj).floatValue());
                return;
            case 3:
                x8Var.mo18012a(((Long) obj).longValue());
                return;
            case 4:
                x8Var.mo18012a(((Long) obj).longValue());
                return;
            case 5:
                x8Var.mo18020a(((Integer) obj).intValue());
                return;
            case 6:
                x8Var.mo18001c(((Long) obj).longValue());
                return;
            case 7:
                x8Var.mo17999d(((Integer) obj).intValue());
                return;
            case 8:
                x8Var.m18072a(((Boolean) obj).booleanValue());
                return;
            case 9:
                ((AbstractC8390ua) obj).mo18134a(x8Var);
                return;
            case 10:
                x8Var.mo18010a((AbstractC8390ua) obj);
                return;
            case 11:
                if (obj instanceof AbstractC8209k8) {
                    x8Var.mo18011a((AbstractC8209k8) obj);
                    return;
                } else {
                    x8Var.mo18009a((String) obj);
                    return;
                }
            case 12:
                if (obj instanceof AbstractC8209k8) {
                    x8Var.mo18011a((AbstractC8209k8) obj);
                    return;
                }
                byte[] bArr = (byte[]) obj;
                x8Var.mo18004b(bArr, 0, bArr.length);
                return;
            case 13:
                x8Var.mo18007b(((Integer) obj).intValue());
                return;
            case 14:
                x8Var.mo17999d(((Integer) obj).intValue());
                return;
            case 15:
                x8Var.mo18001c(((Long) obj).longValue());
                return;
            case 16:
                x8Var.m18054c(((Integer) obj).intValue());
                return;
            case 17:
                x8Var.m18061b(((Long) obj).longValue());
                return;
            case 18:
                if (obj instanceof AbstractC8286o9) {
                    x8Var.mo18020a(((AbstractC8286o9) obj).mo17910a());
                    return;
                } else {
                    x8Var.mo18020a(((Integer) obj).intValue());
                    return;
                }
            default:
                return;
        }
    }

    /* renamed from: b */
    public static int m18571b(AbstractC8127g9<?> g9Var, Object obj) {
        g9Var.mo18342O();
        throw null;
    }

    /* renamed from: b */
    public static <T extends AbstractC8127g9<T>> boolean m18570b(Map.Entry<T, Object> entry) {
        entry.getKey().mo18340S();
        throw null;
    }

    /* renamed from: c */
    public static int m18568c(Map.Entry<T, Object> entry) {
        entry.getValue();
        entry.getKey().mo18340S();
        throw null;
    }

    /* renamed from: g */
    public static <T extends AbstractC8127g9<T>> C8087e9<T> m18564g() {
        return f18817d;
    }

    /* renamed from: a */
    public final Iterator<Map.Entry<T, Object>> m18579a() {
        return this.f18820c ? new C8011aa(this.f18818a.m18223e().iterator()) : this.f18818a.m18223e().iterator();
    }

    /* renamed from: a */
    public final void m18578a(C8087e9<T> e9Var) {
        if (e9Var.f18818a.m18228c() <= 0) {
            Iterator<Map.Entry<T, Object>> it = e9Var.f18818a.m18225d().iterator();
            if (it.hasNext()) {
                m18573a(it.next());
                throw null;
            }
            return;
        }
        m18573a(e9Var.f18818a.m18236a(0));
        throw null;
    }

    /* renamed from: a */
    public final void m18577a(T t, Object obj) {
        t.mo18341R();
        throw null;
    }

    /* renamed from: a */
    public final void m18573a(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        Object value = entry.getValue();
        if (value instanceof C8482z9) {
            C8482z9 z9Var = (C8482z9) value;
            C8482z9.m17908c();
            throw null;
        }
        key.mo18341R();
        throw null;
    }

    /* renamed from: b */
    public final boolean m18572b() {
        return this.f18819b;
    }

    /* renamed from: c */
    public final boolean m18569c() {
        if (this.f18818a.m18228c() <= 0) {
            Iterator<Map.Entry<T, Object>> it = this.f18818a.m18225d().iterator();
            if (!it.hasNext()) {
                return true;
            }
            m18570b(it.next());
            throw null;
        }
        m18570b(this.f18818a.m18236a(0));
        throw null;
    }

    public final /* synthetic */ Object clone() throws CloneNotSupportedException {
        C8087e9 e9Var = new C8087e9();
        if (this.f18818a.m18228c() <= 0) {
            Iterator<Map.Entry<T, Object>> it = this.f18818a.m18225d().iterator();
            if (!it.hasNext()) {
                e9Var.f18820c = this.f18820c;
                return e9Var;
            }
            Map.Entry<T, Object> next = it.next();
            e9Var.m18577a((C8087e9) next.getKey(), next.getValue());
            throw null;
        }
        Map.Entry<T, Object> a = this.f18818a.m18236a(0);
        e9Var.m18577a((C8087e9) a.getKey(), a.getValue());
        throw null;
    }

    /* renamed from: d */
    public final Iterator<Map.Entry<T, Object>> m18567d() {
        return this.f18820c ? new C8011aa(this.f18818a.entrySet().iterator()) : this.f18818a.entrySet().iterator();
    }

    /* renamed from: e */
    public final void m18566e() {
        if (!this.f18819b) {
            this.f18818a.mo18231b();
            this.f18819b = true;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C8087e9)) {
            return false;
        }
        return this.f18818a.equals(((C8087e9) obj).f18818a);
    }

    /* renamed from: f */
    public final int m18565f() {
        if (this.f18818a.m18228c() <= 0) {
            Iterator<Map.Entry<T, Object>> it = this.f18818a.m18225d().iterator();
            if (!it.hasNext()) {
                return 0;
            }
            m18568c(it.next());
            throw null;
        }
        m18568c(this.f18818a.m18236a(0));
        throw null;
    }

    public final int hashCode() {
        return this.f18818a.hashCode();
    }
}
