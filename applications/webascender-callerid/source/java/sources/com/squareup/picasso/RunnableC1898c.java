package com.squareup.picasso;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.NetworkInfo;
import android.os.Build;
import com.squareup.picasso.Picasso;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicInteger;
import n.d0;
import n.h;
import n.r;
/* renamed from: com.squareup.picasso.c */
/* loaded from: classes2-dex2jar.jar:com/squareup/picasso/c.class */
public class RunnableC1898c implements Runnable {

    /* renamed from: f */
    final int f5120f = f5116A.incrementAndGet();

    /* renamed from: g */
    final Picasso f5121g;

    /* renamed from: h */
    final C1913i f5122h;

    /* renamed from: i */
    final AbstractC1905d f5123i;

    /* renamed from: j */
    final C1894a0 f5124j;

    /* renamed from: k */
    final String f5125k;

    /* renamed from: l */
    final C1926w f5126l;

    /* renamed from: m */
    final int f5127m;

    /* renamed from: n */
    int f5128n;

    /* renamed from: o */
    final AbstractC1930y f5129o;

    /* renamed from: p */
    AbstractC1892a f5130p;

    /* renamed from: q */
    List<AbstractC1892a> f5131q;

    /* renamed from: r */
    Bitmap f5132r;

    /* renamed from: s */
    Future<?> f5133s;

    /* renamed from: t */
    Picasso.EnumC1889e f5134t;

    /* renamed from: u */
    Exception f5135u;

    /* renamed from: v */
    int f5136v;

    /* renamed from: w */
    int f5137w;

    /* renamed from: x */
    Picasso.EnumC1890f f5138x;

    /* renamed from: y */
    private static final Object f5118y = new Object();

    /* renamed from: z */
    private static final ThreadLocal<StringBuilder> f5119z = new C1899a();

    /* renamed from: A */
    private static final AtomicInteger f5116A = new AtomicInteger();

    /* renamed from: B */
    private static final AbstractC1930y f5117B = new b();

    /* renamed from: com.squareup.picasso.c$a */
    /* loaded from: classes2-dex2jar.jar:com/squareup/picasso/c$a.class */
    static final class C1899a extends ThreadLocal<StringBuilder> {
        C1899a() {
        }

        /* renamed from: a */
        public StringBuilder initialValue() {
            return new StringBuilder("Picasso-");
        }
    }

    /* renamed from: com.squareup.picasso.c$c */
    /* loaded from: classes2-dex2jar.jar:com/squareup/picasso/c$c.class */
    public static final class RunnableC1900c implements Runnable {

        /* renamed from: f */
        final /* synthetic */ AbstractC1907e0 f5139f;

        /* renamed from: g */
        final /* synthetic */ RuntimeException f5140g;

        RunnableC1900c(AbstractC1907e0 abstractC1907e0, RuntimeException runtimeException) {
            this.f5139f = abstractC1907e0;
            this.f5140g = runtimeException;
        }

        @Override // java.lang.Runnable
        public void run() {
            throw new RuntimeException("Transformation " + this.f5139f.key() + " crashed with exception.", this.f5140g);
        }
    }

    /* renamed from: com.squareup.picasso.c$d */
    /* loaded from: classes2-dex2jar.jar:com/squareup/picasso/c$d.class */
    public static final class RunnableC1901d implements Runnable {

        /* renamed from: f */
        final /* synthetic */ StringBuilder f5141f;

        RunnableC1901d(StringBuilder sb) {
            this.f5141f = sb;
        }

        @Override // java.lang.Runnable
        public void run() {
            throw new NullPointerException(this.f5141f.toString());
        }
    }

    /* renamed from: com.squareup.picasso.c$e */
    /* loaded from: classes2-dex2jar.jar:com/squareup/picasso/c$e.class */
    public static final class RunnableC1902e implements Runnable {

        /* renamed from: f */
        final /* synthetic */ AbstractC1907e0 f5142f;

        RunnableC1902e(AbstractC1907e0 abstractC1907e0) {
            this.f5142f = abstractC1907e0;
        }

        @Override // java.lang.Runnable
        public void run() {
            throw new IllegalStateException("Transformation " + this.f5142f.key() + " returned input Bitmap but recycled it.");
        }
    }

    /* renamed from: com.squareup.picasso.c$f */
    /* loaded from: classes2-dex2jar.jar:com/squareup/picasso/c$f.class */
    public static final class RunnableC1903f implements Runnable {

        /* renamed from: f */
        final /* synthetic */ AbstractC1907e0 f5143f;

        RunnableC1903f(AbstractC1907e0 abstractC1907e0) {
            this.f5143f = abstractC1907e0;
        }

        @Override // java.lang.Runnable
        public void run() {
            throw new IllegalStateException("Transformation " + this.f5143f.key() + " mutated input Bitmap but failed to recycle the original.");
        }
    }

    RunnableC1898c(Picasso picasso, C1913i c1913i, AbstractC1905d abstractC1905d, C1894a0 c1894a0, AbstractC1892a abstractC1892a, AbstractC1930y abstractC1930y) {
        this.f5121g = picasso;
        this.f5122h = c1913i;
        this.f5123i = abstractC1905d;
        this.f5124j = c1894a0;
        this.f5130p = abstractC1892a;
        this.f5125k = abstractC1892a.m772d();
        this.f5126l = abstractC1892a.m767i();
        this.f5138x = abstractC1892a.m768h();
        this.f5127m = abstractC1892a.m771e();
        this.f5128n = abstractC1892a.m770f();
        this.f5129o = abstractC1930y;
        this.f5137w = abstractC1930y.m613e();
    }

    /* renamed from: a */
    static Bitmap m747a(List<AbstractC1907e0> list, Bitmap bitmap) {
        int size = list.size();
        int i = 0;
        while (i < size) {
            AbstractC1907e0 abstractC1907e0 = list.get(i);
            try {
                Bitmap transform = abstractC1907e0.transform(bitmap);
                if (transform == null) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("Transformation ");
                    sb.append(abstractC1907e0.key());
                    sb.append(" returned null after ");
                    sb.append(i);
                    sb.append(" previous transformation(s).\n\nTransformation list:\n");
                    for (AbstractC1907e0 abstractC1907e02 : list) {
                        sb.append(abstractC1907e02.key());
                        sb.append('\n');
                    }
                    Picasso.HANDLER.post(new RunnableC1901d(sb));
                    return null;
                } else if (transform == bitmap && bitmap.isRecycled()) {
                    Picasso.HANDLER.post(new RunnableC1902e(abstractC1907e0));
                    return null;
                } else if (transform != bitmap && !bitmap.isRecycled()) {
                    Picasso.HANDLER.post(new RunnableC1903f(abstractC1907e0));
                    return null;
                } else {
                    i++;
                    bitmap = transform;
                }
            } catch (RuntimeException e) {
                Picasso.HANDLER.post(new RunnableC1900c(abstractC1907e0, e));
                return null;
            }
        }
        return bitmap;
    }

    /* renamed from: d */
    private Picasso.EnumC1890f m744d() {
        Picasso.EnumC1890f enumC1890f = Picasso.EnumC1890f.LOW;
        List<AbstractC1892a> list = this.f5131q;
        boolean z = list != null && !list.isEmpty();
        AbstractC1892a abstractC1892a = this.f5130p;
        boolean z2 = true;
        if (abstractC1892a == null) {
            z2 = z;
        }
        if (!z2) {
            return enumC1890f;
        }
        if (abstractC1892a != null) {
            enumC1890f = abstractC1892a.m768h();
        }
        Picasso.EnumC1890f enumC1890f2 = enumC1890f;
        if (z) {
            int size = this.f5131q.size();
            int i = 0;
            while (true) {
                enumC1890f2 = enumC1890f;
                if (i >= size) {
                    break;
                }
                Picasso.EnumC1890f m768h = this.f5131q.get(i).m768h();
                Picasso.EnumC1890f enumC1890f3 = enumC1890f;
                if (m768h.ordinal() > enumC1890f.ordinal()) {
                    enumC1890f3 = m768h;
                }
                i++;
                enumC1890f = enumC1890f3;
            }
        }
        return enumC1890f2;
    }

    /* renamed from: e */
    static Bitmap m743e(d0 d0Var, C1926w c1926w) throws IOException {
        h d = r.d(d0Var);
        boolean m697r = C1908f0.m697r(d);
        boolean z = c1926w.f5210r && Build.VERSION.SDK_INT < 21;
        BitmapFactory.Options m614d = AbstractC1930y.m614d(c1926w);
        boolean m611g = AbstractC1930y.m611g(m614d);
        if (m697r || z) {
            byte[] P = d.P();
            if (m611g) {
                BitmapFactory.decodeByteArray(P, 0, P.length, m614d);
                AbstractC1930y.m616b(c1926w.f5200h, c1926w.f5201i, m614d, c1926w);
            }
            return BitmapFactory.decodeByteArray(P, 0, P.length, m614d);
        }
        InputStream v1 = d.v1();
        C1920n c1920n = v1;
        if (m611g) {
            C1920n c1920n2 = new C1920n(v1);
            c1920n2.m662a(false);
            long m660c = c1920n2.m660c(1024);
            BitmapFactory.decodeStream(c1920n2, null, m614d);
            AbstractC1930y.m616b(c1926w.f5200h, c1926w.f5201i, m614d, c1926w);
            c1920n2.m661b(m660c);
            c1920n2.m662a(true);
            c1920n = c1920n2;
        }
        Bitmap decodeStream = BitmapFactory.decodeStream(c1920n, null, m614d);
        if (decodeStream == null) {
            throw new IOException("Failed to decode stream.");
        }
        return decodeStream;
    }

    /* renamed from: g */
    public static RunnableC1898c m741g(Picasso picasso, C1913i c1913i, AbstractC1905d abstractC1905d, C1894a0 c1894a0, AbstractC1892a abstractC1892a) {
        C1926w m767i = abstractC1892a.m767i();
        List<AbstractC1930y> requestHandlers = picasso.getRequestHandlers();
        int size = requestHandlers.size();
        for (int i = 0; i < size; i++) {
            AbstractC1930y abstractC1930y = requestHandlers.get(i);
            if (abstractC1930y.m615c(m767i)) {
                return new RunnableC1898c(picasso, c1913i, abstractC1905d, c1894a0, abstractC1892a, abstractC1930y);
            }
        }
        return new RunnableC1898c(picasso, c1913i, abstractC1905d, c1894a0, abstractC1892a, f5117B);
    }

    /* renamed from: l */
    static int m736l(int i) {
        int i2;
        switch (i) {
            case 3:
            case 4:
                i2 = 180;
                break;
            case 5:
            case 6:
                i2 = 90;
                break;
            case 7:
            case 8:
                i2 = 270;
                break;
            default:
                i2 = 0;
                break;
        }
        return i2;
    }

    /* renamed from: m */
    static int m735m(int i) {
        return (i == 2 || i == 7 || i == 4 || i == 5) ? -1 : 1;
    }

    /* renamed from: v */
    private static boolean m726v(boolean z, int i, int i2, int i3, int i4) {
        return !z || (i3 != 0 && i > i3) || (i4 != 0 && i2 > i4);
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x026d, code lost:
        if (r0 == 270) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x0446, code lost:
        if (r40 != 0) goto L79;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x0459, code lost:
        if (r40 != r0) goto L83;
     */
    /* JADX WARN: Removed duplicated region for block: B:97:0x04df  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x04e6  */
    /* renamed from: y */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static android.graphics.Bitmap m723y(com.squareup.picasso.C1926w r9, android.graphics.Bitmap r10, int r11) {
        /*
            Method dump skipped, instructions count: 1258
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.squareup.picasso.RunnableC1898c.m723y(com.squareup.picasso.w, android.graphics.Bitmap, int):android.graphics.Bitmap");
    }

    /* renamed from: z */
    static void m722z(C1926w c1926w) {
        String m650a = c1926w.m650a();
        StringBuilder sb = f5119z.get();
        sb.ensureCapacity(m650a.length() + 8);
        sb.replace(8, sb.length(), m650a);
        Thread.currentThread().setName(sb.toString());
    }

    /* renamed from: b */
    public void m746b(AbstractC1892a abstractC1892a) {
        boolean z = this.f5121g.loggingEnabled;
        C1926w c1926w = abstractC1892a.f5074b;
        if (this.f5130p == null) {
            this.f5130p = abstractC1892a;
            if (!z) {
                return;
            }
            List<AbstractC1892a> list = this.f5131q;
            if (list == null || list.isEmpty()) {
                C1908f0.m695t("Hunter", "joined", c1926w.m647d(), "to empty hunter");
                return;
            } else {
                C1908f0.m695t("Hunter", "joined", c1926w.m647d(), C1908f0.m704k(this, "to "));
                return;
            }
        }
        if (this.f5131q == null) {
            this.f5131q = new ArrayList(3);
        }
        this.f5131q.add(abstractC1892a);
        if (z) {
            C1908f0.m695t("Hunter", "joined", c1926w.m647d(), C1908f0.m704k(this, "to "));
        }
        Picasso.EnumC1890f m768h = abstractC1892a.m768h();
        if (m768h.ordinal() <= this.f5138x.ordinal()) {
            return;
        }
        this.f5138x = m768h;
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x001e, code lost:
        if (r0.isEmpty() != false) goto L8;
     */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m745c() {
        /*
            r3 = this;
            r0 = r3
            com.squareup.picasso.a r0 = r0.f5130p
            r4 = r0
            r0 = 0
            r5 = r0
            r0 = r5
            r6 = r0
            r0 = r4
            if (r0 != 0) goto L3a
            r0 = r3
            java.util.List<com.squareup.picasso.a> r0 = r0.f5131q
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L21
            r0 = r5
            r6 = r0
            r0 = r4
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L3a
        L21:
            r0 = r3
            java.util.concurrent.Future<?> r0 = r0.f5133s
            r4 = r0
            r0 = r5
            r6 = r0
            r0 = r4
            if (r0 == 0) goto L3a
            r0 = r5
            r6 = r0
            r0 = r4
            r1 = 0
            boolean r0 = r0.cancel(r1)
            if (r0 == 0) goto L3a
            r0 = 1
            r6 = r0
        L3a:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.squareup.picasso.RunnableC1898c.m745c():boolean");
    }

    /* renamed from: f */
    public void m742f(AbstractC1892a abstractC1892a) {
        boolean z;
        if (this.f5130p == abstractC1892a) {
            this.f5130p = null;
            z = true;
        } else {
            List<AbstractC1892a> list = this.f5131q;
            z = list != null ? list.remove(abstractC1892a) : false;
        }
        if (z && abstractC1892a.m768h() == this.f5138x) {
            this.f5138x = m744d();
        }
        if (this.f5121g.loggingEnabled) {
            C1908f0.m695t("Hunter", "removed", abstractC1892a.f5074b.m647d(), C1908f0.m704k(this, "from "));
        }
    }

    /* renamed from: h */
    public AbstractC1892a m740h() {
        return this.f5130p;
    }

    /* renamed from: i */
    public List<AbstractC1892a> m739i() {
        return this.f5131q;
    }

    /* renamed from: j */
    public C1926w m738j() {
        return this.f5126l;
    }

    /* renamed from: k */
    public Exception m737k() {
        return this.f5135u;
    }

    /* renamed from: n */
    public String m734n() {
        return this.f5125k;
    }

    /* renamed from: o */
    public Picasso.EnumC1889e m733o() {
        return this.f5134t;
    }

    /* renamed from: p */
    public int m732p() {
        return this.f5127m;
    }

    /* renamed from: q */
    public Picasso m731q() {
        return this.f5121g;
    }

    /* renamed from: r */
    public Picasso.EnumC1890f m730r() {
        return this.f5138x;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            try {
                try {
                    try {
                        m722z(this.f5126l);
                        if (this.f5121g.loggingEnabled) {
                            C1908f0.m696s("Hunter", "executing", C1908f0.m705j(this));
                        }
                        Bitmap m728t = m728t();
                        this.f5132r = m728t;
                        if (m728t == null) {
                            this.f5122h.m688e(this);
                        } else {
                            this.f5122h.m689d(this);
                        }
                    } catch (r$b e) {
                        if (!EnumC1922q.isOfflineOnly(e.f5180g) || e.f5179f != 504) {
                            this.f5135u = e;
                        }
                        this.f5122h.m688e(this);
                    }
                } catch (Exception e2) {
                    this.f5135u = e2;
                    this.f5122h.m688e(this);
                }
            } catch (IOException e3) {
                this.f5135u = e3;
                this.f5122h.m684i(this);
            } catch (OutOfMemoryError e4) {
                StringWriter stringWriter = new StringWriter();
                this.f5124j.m762a().m748a(new PrintWriter(stringWriter));
                this.f5135u = new RuntimeException(stringWriter.toString(), e4);
                this.f5122h.m688e(this);
            }
            Thread.currentThread().setName("Picasso-Idle");
        } catch (Throwable th) {
            Thread.currentThread().setName("Picasso-Idle");
            throw th;
        }
    }

    /* renamed from: s */
    public Bitmap m729s() {
        return this.f5132r;
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x00f2, code lost:
        if (r5.f5136v != 0) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x010d, code lost:
        if (r5.f5136v != 0) goto L46;
     */
    /* renamed from: t */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    android.graphics.Bitmap m728t() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 410
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.squareup.picasso.RunnableC1898c.m728t():android.graphics.Bitmap");
    }

    /* renamed from: u */
    public boolean m727u() {
        Future<?> future = this.f5133s;
        return future != null && future.isCancelled();
    }

    /* renamed from: w */
    public boolean m725w(boolean z, NetworkInfo networkInfo) {
        int i = this.f5137w;
        if (!(i > 0)) {
            return false;
        }
        this.f5137w = i - 1;
        return this.f5129o.m610h(z, networkInfo);
    }

    /* renamed from: x */
    public boolean m724x() {
        return this.f5129o.m609i();
    }
}
