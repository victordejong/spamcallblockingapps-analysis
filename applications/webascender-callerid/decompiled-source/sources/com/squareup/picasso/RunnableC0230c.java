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
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.squareup.picasso.c */
/* loaded from: classes2-dex2jar.jar:com/squareup/picasso/c.class */
public class RunnableC0230c implements Runnable {

    /* renamed from: f */
    final int f441f = f437A.incrementAndGet();

    /* renamed from: g */
    final Picasso f442g;

    /* renamed from: h */
    final C0245i f443h;

    /* renamed from: i */
    final AbstractC0237d f444i;

    /* renamed from: j */
    final C0226a0 f445j;

    /* renamed from: k */
    final String f446k;

    /* renamed from: l */
    final C0258w f447l;

    /* renamed from: m */
    final int f448m;

    /* renamed from: n */
    int f449n;

    /* renamed from: o */
    final AbstractC0262y f450o;

    /* renamed from: p */
    AbstractC0224a f451p;

    /* renamed from: q */
    List<AbstractC0224a> f452q;

    /* renamed from: r */
    Bitmap f453r;

    /* renamed from: s */
    Future<?> f454s;

    /* renamed from: t */
    Picasso.EnumC0221e f455t;

    /* renamed from: u */
    Exception f456u;

    /* renamed from: v */
    int f457v;

    /* renamed from: w */
    int f458w;

    /* renamed from: x */
    Picasso.EnumC0222f f459x;

    /* renamed from: y */
    private static final Object f439y = new Object();

    /* renamed from: z */
    private static final ThreadLocal<StringBuilder> f440z = new C0231a();

    /* renamed from: A */
    private static final AtomicInteger f437A = new AtomicInteger();

    /* renamed from: B */
    private static final AbstractC0262y f438B = new b();

    /* renamed from: com.squareup.picasso.c$a */
    /* loaded from: classes2-dex2jar.jar:com/squareup/picasso/c$a.class */
    static final class C0231a extends ThreadLocal<StringBuilder> {
        C0231a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* renamed from: a */
        public StringBuilder initialValue() {
            return new StringBuilder("Picasso-");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.squareup.picasso.c$c */
    /* loaded from: classes2-dex2jar.jar:com/squareup/picasso/c$c.class */
    public static final class RunnableC0232c implements Runnable {

        /* renamed from: f */
        final /* synthetic */ AbstractC0239e0 f460f;

        /* renamed from: g */
        final /* synthetic */ RuntimeException f461g;

        RunnableC0232c(AbstractC0239e0 e0Var, RuntimeException runtimeException) {
            this.f460f = e0Var;
            this.f461g = runtimeException;
        }

        @Override // java.lang.Runnable
        public void run() {
            throw new RuntimeException("Transformation " + this.f460f.key() + " crashed with exception.", this.f461g);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.squareup.picasso.c$d */
    /* loaded from: classes2-dex2jar.jar:com/squareup/picasso/c$d.class */
    public static final class RunnableC0233d implements Runnable {

        /* renamed from: f */
        final /* synthetic */ StringBuilder f462f;

        RunnableC0233d(StringBuilder sb) {
            this.f462f = sb;
        }

        @Override // java.lang.Runnable
        public void run() {
            throw new NullPointerException(this.f462f.toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.squareup.picasso.c$e */
    /* loaded from: classes2-dex2jar.jar:com/squareup/picasso/c$e.class */
    public static final class RunnableC0234e implements Runnable {

        /* renamed from: f */
        final /* synthetic */ AbstractC0239e0 f463f;

        RunnableC0234e(AbstractC0239e0 e0Var) {
            this.f463f = e0Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            throw new IllegalStateException("Transformation " + this.f463f.key() + " returned input Bitmap but recycled it.");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.squareup.picasso.c$f */
    /* loaded from: classes2-dex2jar.jar:com/squareup/picasso/c$f.class */
    public static final class RunnableC0235f implements Runnable {

        /* renamed from: f */
        final /* synthetic */ AbstractC0239e0 f464f;

        RunnableC0235f(AbstractC0239e0 e0Var) {
            this.f464f = e0Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            throw new IllegalStateException("Transformation " + this.f464f.key() + " mutated input Bitmap but failed to recycle the original.");
        }
    }

    RunnableC0230c(Picasso picasso, C0245i iVar, AbstractC0237d dVar, C0226a0 a0Var, AbstractC0224a aVar, AbstractC0262y yVar) {
        this.f442g = picasso;
        this.f443h = iVar;
        this.f444i = dVar;
        this.f445j = a0Var;
        this.f451p = aVar;
        this.f446k = aVar.m772d();
        this.f447l = aVar.m767i();
        this.f459x = aVar.m768h();
        this.f448m = aVar.m771e();
        this.f449n = aVar.m770f();
        this.f450o = yVar;
        this.f458w = yVar.m613e();
    }

    /* renamed from: a */
    static Bitmap m747a(List<AbstractC0239e0> list, Bitmap bitmap) {
        int size = list.size();
        int i = 0;
        while (i < size) {
            AbstractC0239e0 e0Var = list.get(i);
            try {
                Bitmap transform = e0Var.transform(bitmap);
                if (transform == null) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("Transformation ");
                    sb.append(e0Var.key());
                    sb.append(" returned null after ");
                    sb.append(i);
                    sb.append(" previous transformation(s).\n\nTransformation list:\n");
                    for (AbstractC0239e0 e0Var2 : list) {
                        sb.append(e0Var2.key());
                        sb.append('\n');
                    }
                    Picasso.HANDLER.post(new RunnableC0233d(sb));
                    return null;
                } else if (transform == bitmap && bitmap.isRecycled()) {
                    Picasso.HANDLER.post(new RunnableC0234e(e0Var));
                    return null;
                } else if (transform == bitmap || bitmap.isRecycled()) {
                    i++;
                    bitmap = transform;
                } else {
                    Picasso.HANDLER.post(new RunnableC0235f(e0Var));
                    return null;
                }
            } catch (RuntimeException e) {
                Picasso.HANDLER.post(new RunnableC0232c(e0Var, e));
                return null;
            }
        }
        return bitmap;
    }

    /* renamed from: d */
    private Picasso.EnumC0222f m744d() {
        Picasso.EnumC0222f fVar = Picasso.EnumC0222f.LOW;
        List<AbstractC0224a> list = this.f452q;
        int i = 0;
        boolean z = list != null && !list.isEmpty();
        AbstractC0224a aVar = this.f451p;
        boolean z2 = true;
        if (aVar == null) {
            z2 = z;
        }
        if (!z2) {
            return fVar;
        }
        if (aVar != null) {
            fVar = aVar.m768h();
        }
        Picasso.EnumC0222f fVar2 = fVar;
        if (z) {
            int size = this.f452q.size();
            while (true) {
                fVar2 = fVar;
                if (i >= size) {
                    break;
                }
                Picasso.EnumC0222f h = this.f452q.get(i).m768h();
                fVar = fVar;
                if (h.ordinal() > fVar.ordinal()) {
                    fVar = h;
                }
                i++;
            }
        }
        return fVar2;
    }

    /* renamed from: e */
    static Bitmap m743e(d0 d0Var, C0258w wVar) throws IOException {
        h d = r.d(d0Var);
        boolean r = C0240f0.m697r(d);
        boolean z = wVar.f531r && Build.VERSION.SDK_INT < 21;
        BitmapFactory.Options d2 = AbstractC0262y.m614d(wVar);
        boolean g = AbstractC0262y.m611g(d2);
        if (r || z) {
            byte[] P = d.P();
            if (g) {
                BitmapFactory.decodeByteArray(P, 0, P.length, d2);
                AbstractC0262y.m616b(wVar.f521h, wVar.f522i, d2, wVar);
            }
            return BitmapFactory.decodeByteArray(P, 0, P.length, d2);
        }
        InputStream v1 = d.v1();
        C0252n nVar = v1;
        if (g) {
            C0252n nVar2 = new C0252n(v1);
            nVar2.m662a(false);
            long c = nVar2.m660c(1024);
            BitmapFactory.decodeStream(nVar2, null, d2);
            AbstractC0262y.m616b(wVar.f521h, wVar.f522i, d2, wVar);
            nVar2.m661b(c);
            nVar2.m662a(true);
            nVar = nVar2;
        }
        Bitmap decodeStream = BitmapFactory.decodeStream(nVar, null, d2);
        if (decodeStream != null) {
            return decodeStream;
        }
        throw new IOException("Failed to decode stream.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public static RunnableC0230c m741g(Picasso picasso, C0245i iVar, AbstractC0237d dVar, C0226a0 a0Var, AbstractC0224a aVar) {
        C0258w i = aVar.m767i();
        List<AbstractC0262y> requestHandlers = picasso.getRequestHandlers();
        int size = requestHandlers.size();
        for (int i2 = 0; i2 < size; i2++) {
            AbstractC0262y yVar = requestHandlers.get(i2);
            if (yVar.m615c(i)) {
                return new RunnableC0230c(picasso, iVar, dVar, a0Var, aVar, yVar);
            }
        }
        return new RunnableC0230c(picasso, iVar, dVar, a0Var, aVar, f438B);
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
        if (r0 == 270) goto L_0x0270;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x0446, code lost:
        if (r40 != 0) goto L_0x0449;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x0459, code lost:
        if (r40 != r0) goto L_0x045c;
     */
    /* JADX WARN: Removed duplicated region for block: B:97:0x04df  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x04e6  */
    /* renamed from: y */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static android.graphics.Bitmap m723y(com.squareup.picasso.C0258w r9, android.graphics.Bitmap r10, int r11) {
        /*
            Method dump skipped, instructions count: 1258
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.squareup.picasso.RunnableC0230c.m723y(com.squareup.picasso.w, android.graphics.Bitmap, int):android.graphics.Bitmap");
    }

    /* renamed from: z */
    static void m722z(C0258w wVar) {
        String a = wVar.m650a();
        StringBuilder sb = f440z.get();
        sb.ensureCapacity(a.length() + 8);
        sb.replace(8, sb.length(), a);
        Thread.currentThread().setName(sb.toString());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public void m746b(AbstractC0224a aVar) {
        boolean z = this.f442g.loggingEnabled;
        C0258w wVar = aVar.f395b;
        if (this.f451p == null) {
            this.f451p = aVar;
            if (z) {
                List<AbstractC0224a> list = this.f452q;
                if (list == null || list.isEmpty()) {
                    C0240f0.m695t("Hunter", "joined", wVar.m647d(), "to empty hunter");
                } else {
                    C0240f0.m695t("Hunter", "joined", wVar.m647d(), C0240f0.m704k(this, "to "));
                }
            }
        } else {
            if (this.f452q == null) {
                this.f452q = new ArrayList(3);
            }
            this.f452q.add(aVar);
            if (z) {
                C0240f0.m695t("Hunter", "joined", wVar.m647d(), C0240f0.m704k(this, "to "));
            }
            Picasso.EnumC0222f h = aVar.m768h();
            if (h.ordinal() > this.f459x.ordinal()) {
                this.f459x = h;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x001e, code lost:
        if (r0.isEmpty() != false) goto L_0x0021;
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
            com.squareup.picasso.a r0 = r0.f451p
            r4 = r0
            r0 = 0
            r5 = r0
            r0 = r5
            r6 = r0
            r0 = r4
            if (r0 != 0) goto L_0x003a
            r0 = r3
            java.util.List<com.squareup.picasso.a> r0 = r0.f452q
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L_0x0021
            r0 = r5
            r6 = r0
            r0 = r4
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L_0x003a
        L_0x0021:
            r0 = r3
            java.util.concurrent.Future<?> r0 = r0.f454s
            r4 = r0
            r0 = r5
            r6 = r0
            r0 = r4
            if (r0 == 0) goto L_0x003a
            r0 = r5
            r6 = r0
            r0 = r4
            r1 = 0
            boolean r0 = r0.cancel(r1)
            if (r0 == 0) goto L_0x003a
            r0 = 1
            r6 = r0
        L_0x003a:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.squareup.picasso.RunnableC0230c.m745c():boolean");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public void m742f(AbstractC0224a aVar) {
        boolean z;
        if (this.f451p == aVar) {
            this.f451p = null;
            z = true;
        } else {
            List<AbstractC0224a> list = this.f452q;
            z = list != null ? list.remove(aVar) : false;
        }
        if (z && aVar.m768h() == this.f459x) {
            this.f459x = m744d();
        }
        if (this.f442g.loggingEnabled) {
            C0240f0.m695t("Hunter", "removed", aVar.f395b.m647d(), C0240f0.m704k(this, "from "));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public AbstractC0224a m740h() {
        return this.f451p;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i */
    public List<AbstractC0224a> m739i() {
        return this.f452q;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j */
    public C0258w m738j() {
        return this.f447l;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: k */
    public Exception m737k() {
        return this.f456u;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: n */
    public String m734n() {
        return this.f446k;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: o */
    public Picasso.EnumC0221e m733o() {
        return this.f455t;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: p */
    public int m732p() {
        return this.f448m;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: q */
    public Picasso m731q() {
        return this.f442g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: r */
    public Picasso.EnumC0222f m730r() {
        return this.f459x;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            try {
                try {
                    try {
                        m722z(this.f447l);
                        if (this.f442g.loggingEnabled) {
                            C0240f0.m696s("Hunter", "executing", C0240f0.m705j(this));
                        }
                        Bitmap t = m728t();
                        this.f453r = t;
                        if (t == null) {
                            this.f443h.m688e(this);
                        } else {
                            this.f443h.m689d(this);
                        }
                    } catch (r$b e) {
                        if (!EnumC0254q.isOfflineOnly(e.f501g) || e.f500f != 504) {
                            this.f456u = e;
                        }
                        this.f443h.m688e(this);
                    }
                } catch (Exception e2) {
                    this.f456u = e2;
                    this.f443h.m688e(this);
                }
            } catch (IOException e3) {
                this.f456u = e3;
                this.f443h.m684i(this);
            } catch (OutOfMemoryError e4) {
                StringWriter stringWriter = new StringWriter();
                this.f445j.m762a().m748a(new PrintWriter(stringWriter));
                this.f456u = new RuntimeException(stringWriter.toString(), e4);
                this.f443h.m688e(this);
            }
            Thread.currentThread().setName("Picasso-Idle");
        } catch (Throwable th) {
            Thread.currentThread().setName("Picasso-Idle");
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: s */
    public Bitmap m729s() {
        return this.f453r;
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x00f2, code lost:
        if (r5.f457v != 0) goto L_0x00f5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x010d, code lost:
        if (r5.f457v != 0) goto L_0x0110;
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
        throw new UnsupportedOperationException("Method not decompiled: com.squareup.picasso.RunnableC0230c.m728t():android.graphics.Bitmap");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: u */
    public boolean m727u() {
        Future<?> future = this.f454s;
        return future != null && future.isCancelled();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: w */
    public boolean m725w(boolean z, NetworkInfo networkInfo) {
        int i = this.f458w;
        if (!(i > 0)) {
            return false;
        }
        this.f458w = i - 1;
        return this.f450o.m610h(z, networkInfo);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: x */
    public boolean m724x() {
        return this.f450o.m609i();
    }
}
