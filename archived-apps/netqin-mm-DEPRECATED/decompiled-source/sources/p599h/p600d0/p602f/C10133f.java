package p599h.p600d0.p602f;

import java.io.IOException;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.net.Socket;
import java.util.List;
import okhttp3.internal.connection.RouteException;
import okhttp3.internal.http2.ConnectionShutdownException;
import okhttp3.internal.http2.ErrorCode;
import okhttp3.internal.http2.StreamResetException;
import p599h.AbstractC10210e;
import p599h.AbstractC10229p;
import p599h.AbstractC10238t;
import p599h.C10090a;
import p599h.C10104c0;
import p599h.C10219j;
import p599h.C10244w;
import p599h.p600d0.AbstractC10107a;
import p599h.p600d0.C10109c;
import p599h.p600d0.p602f.C10131e;
import p599h.p600d0.p603g.AbstractC10138c;
/* renamed from: h.d0.f.f */
/* loaded from: classes2-dex2jar.jar:h/d0/f/f.class */
public final class C10133f {

    /* renamed from: a */
    public final C10090a f37423a;

    /* renamed from: b */
    public C10131e.C10132a f37424b;

    /* renamed from: c */
    public C10104c0 f37425c;

    /* renamed from: d */
    public final C10219j f37426d;

    /* renamed from: e */
    public final AbstractC10210e f37427e;

    /* renamed from: f */
    public final AbstractC10229p f37428f;

    /* renamed from: g */
    public final Object f37429g;

    /* renamed from: h */
    public final C10131e f37430h;

    /* renamed from: i */
    public int f37431i;

    /* renamed from: j */
    public C10129c f37432j;

    /* renamed from: k */
    public boolean f37433k;

    /* renamed from: l */
    public boolean f37434l;

    /* renamed from: m */
    public boolean f37435m;

    /* renamed from: n */
    public AbstractC10138c f37436n;

    /* renamed from: h.d0.f.f$a */
    /* loaded from: classes2-dex2jar.jar:h/d0/f/f$a.class */
    public static final class C10134a extends WeakReference<C10133f> {

        /* renamed from: a */
        public final Object f37437a;

        public C10134a(C10133f fVar, Object obj) {
            super(fVar);
            this.f37437a = obj;
        }
    }

    public C10133f(C10219j jVar, C10090a aVar, AbstractC10210e eVar, AbstractC10229p pVar, Object obj) {
        this.f37426d = jVar;
        this.f37423a = aVar;
        this.f37427e = eVar;
        this.f37428f = pVar;
        this.f37430h = new C10131e(aVar, m1332i(), eVar, pVar);
        this.f37429g = obj;
    }

    /* renamed from: a */
    public final C10129c m1348a(int i, int i2, int i3, int i4, boolean z) throws IOException {
        C10129c cVar;
        Socket g;
        C10129c cVar2;
        boolean z2;
        C10104c0 c0Var;
        boolean z3;
        C10129c cVar3;
        boolean z4;
        C10129c cVar4;
        Socket socket;
        C10131e.C10132a aVar;
        synchronized (this.f37426d) {
            try {
                if (this.f37434l) {
                    throw new IllegalStateException("released");
                } else if (this.f37436n != null) {
                    throw new IllegalStateException("codec != null");
                } else if (!this.f37435m) {
                    cVar = this.f37432j;
                    g = m1334g();
                    socket = null;
                    if (this.f37432j != null) {
                        cVar2 = this.f37432j;
                        cVar = null;
                    } else {
                        cVar2 = null;
                    }
                    if (!this.f37433k) {
                        cVar = null;
                    }
                    if (cVar2 == null) {
                        AbstractC10107a.f37312a.mo846a(this.f37426d, this.f37423a, this, null);
                        if (this.f37432j != null) {
                            cVar2 = this.f37432j;
                            c0Var = null;
                            z2 = true;
                        } else {
                            c0Var = this.f37425c;
                        }
                    } else {
                        c0Var = null;
                    }
                    z2 = false;
                } else {
                    throw new IOException("Canceled");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        C10109c.m1450a(g);
        if (cVar != null) {
            this.f37428f.m986b(this.f37427e, cVar);
        }
        if (z2) {
            this.f37428f.m998a(this.f37427e, cVar2);
        }
        if (cVar2 != null) {
            return cVar2;
        }
        if (c0Var != null || ((aVar = this.f37424b) != null && aVar.m1351b())) {
            z3 = false;
        } else {
            this.f37424b = this.f37430h.m1354c();
            z3 = true;
        }
        synchronized (this.f37426d) {
            if (!this.f37435m) {
                cVar3 = cVar2;
                z4 = z2;
                if (z3) {
                    List<C10104c0> a = this.f37424b.m1352a();
                    int size = a.size();
                    int i5 = 0;
                    while (true) {
                        cVar3 = cVar2;
                        z4 = z2;
                        if (i5 >= size) {
                            break;
                        }
                        C10104c0 c0Var2 = a.get(i5);
                        AbstractC10107a.f37312a.mo846a(this.f37426d, this.f37423a, this, c0Var2);
                        if (this.f37432j != null) {
                            cVar3 = this.f37432j;
                            this.f37425c = c0Var2;
                            z4 = true;
                            break;
                        }
                        i5++;
                    }
                }
                if (!z4) {
                    C10104c0 c0Var3 = c0Var;
                    if (c0Var == null) {
                        c0Var3 = this.f37424b.m1350c();
                    }
                    this.f37425c = c0Var3;
                    this.f37431i = 0;
                    C10129c cVar5 = new C10129c(this.f37426d, c0Var3);
                    m1345a(cVar5, false);
                    cVar3 = cVar5;
                }
            } else {
                throw new IOException("Canceled");
            }
        }
        if (z4) {
            this.f37428f.m998a(this.f37427e, cVar3);
            return cVar3;
        }
        cVar3.m1378a(i, i2, i3, i4, z, this.f37427e, this.f37428f);
        m1332i().m1363a(cVar3.m1365e());
        synchronized (this.f37426d) {
            this.f37433k = true;
            AbstractC10107a.f37312a.mo841b(this.f37426d, cVar3);
            cVar4 = cVar3;
            if (cVar3.m1366d()) {
                socket = AbstractC10107a.f37312a.mo847a(this.f37426d, this.f37423a, this);
                cVar4 = this.f37432j;
            }
        }
        C10109c.m1450a(socket);
        this.f37428f.m998a(this.f37427e, cVar4);
        return cVar4;
    }

    /* renamed from: a */
    public final C10129c m1347a(int i, int i2, int i3, int i4, boolean z, boolean z2) throws IOException {
        while (true) {
            C10129c a = m1348a(i, i2, i3, i4, z);
            synchronized (this.f37426d) {
                try {
                    if (a.f37408l == 0) {
                        return a;
                    }
                    if (a.m1369a(z2)) {
                        return a;
                    }
                    m1336e();
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    /* renamed from: a */
    public AbstractC10138c m1344a(C10244w wVar, AbstractC10238t.AbstractC10239a aVar, boolean z) {
        try {
            AbstractC10138c a = m1347a(aVar.mo898c(), aVar.mo901a(), aVar.mo899b(), wVar.m881A(), wVar.m875J(), z).m1370a(wVar, aVar, this);
            synchronized (this.f37426d) {
                this.f37436n = a;
            }
            return a;
        } catch (IOException e) {
            throw new RouteException(e);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x004b, code lost:
        if (r4.f37432j.f37407k != false) goto L_0x004e;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.net.Socket m1341a(boolean r5, boolean r6, boolean r7) {
        /*
            r4 = this;
            r0 = 0
            r8 = r0
            r0 = r7
            if (r0 == 0) goto L_0x000c
            r0 = r4
            r1 = 0
            r0.f37436n = r1
        L_0x000c:
            r0 = r6
            if (r0 == 0) goto L_0x0015
            r0 = r4
            r1 = 1
            r0.f37434l = r1
        L_0x0015:
            r0 = r4
            h.d0.f.c r0 = r0.f37432j
            r9 = r0
            r0 = r8
            r10 = r0
            r0 = r9
            if (r0 == 0) goto L_0x0094
            r0 = r5
            if (r0 == 0) goto L_0x002e
            r0 = r9
            r1 = 1
            r0.f37407k = r1
        L_0x002e:
            r0 = r8
            r10 = r0
            r0 = r4
            h.d0.g.c r0 = r0.f37436n
            if (r0 != 0) goto L_0x0094
            r0 = r4
            boolean r0 = r0.f37434l
            if (r0 != 0) goto L_0x004e
            r0 = r8
            r10 = r0
            r0 = r4
            h.d0.f.c r0 = r0.f37432j
            boolean r0 = r0.f37407k
            if (r0 == 0) goto L_0x0094
        L_0x004e:
            r0 = r4
            r1 = r4
            h.d0.f.c r1 = r1.f37432j
            r0.m1346a(r1)
            r0 = r4
            h.d0.f.c r0 = r0.f37432j
            java.util.List<java.lang.ref.Reference<h.d0.f.f>> r0 = r0.f37410n
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L_0x008c
            r0 = r4
            h.d0.f.c r0 = r0.f37432j
            long r1 = java.lang.System.nanoTime()
            r0.f37411o = r1
            h.d0.a r0 = p599h.p600d0.AbstractC10107a.f37312a
            r1 = r4
            h.j r1 = r1.f37426d
            r2 = r4
            h.d0.f.c r2 = r2.f37432j
            boolean r0 = r0.mo845a(r1, r2)
            if (r0 == 0) goto L_0x008c
            r0 = r4
            h.d0.f.c r0 = r0.f37432j
            java.net.Socket r0 = r0.m1364f()
            r10 = r0
            goto L_0x008f
        L_0x008c:
            r0 = 0
            r10 = r0
        L_0x008f:
            r0 = r4
            r1 = 0
            r0.f37432j = r1
        L_0x0094:
            r0 = r10
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p599h.p600d0.p602f.C10133f.m1341a(boolean, boolean, boolean):java.net.Socket");
    }

    /* renamed from: a */
    public void m1349a() {
        AbstractC10138c cVar;
        C10129c cVar2;
        synchronized (this.f37426d) {
            this.f37435m = true;
            cVar = this.f37436n;
            cVar2 = this.f37432j;
        }
        if (cVar != null) {
            cVar.cancel();
        } else if (cVar2 != null) {
            cVar2.m1380a();
        }
    }

    /* renamed from: a */
    public final void m1346a(C10129c cVar) {
        int size = cVar.f37410n.size();
        for (int i = 0; i < size; i++) {
            if (cVar.f37410n.get(i).get() == this) {
                cVar.f37410n.remove(i);
                return;
            }
        }
        throw new IllegalStateException();
    }

    /* renamed from: a */
    public void m1345a(C10129c cVar, boolean z) {
        if (this.f37432j == null) {
            this.f37432j = cVar;
            this.f37433k = z;
            cVar.f37410n.add(new C10134a(this, this.f37429g));
            return;
        }
        throw new IllegalStateException();
    }

    /* renamed from: a */
    public void m1343a(IOException iOException) {
        boolean z;
        Socket a;
        C10129c cVar;
        synchronized (this.f37426d) {
            if (iOException instanceof StreamResetException) {
                ErrorCode errorCode = ((StreamResetException) iOException).errorCode;
                if (errorCode == ErrorCode.REFUSED_STREAM) {
                    int i = this.f37431i + 1;
                    this.f37431i = i;
                    if (i > 1) {
                        this.f37425c = null;
                        z = true;
                    }
                    z = false;
                } else {
                    if (errorCode != ErrorCode.CANCEL) {
                        this.f37425c = null;
                        z = true;
                    }
                    z = false;
                }
            } else {
                if (this.f37432j != null && (!this.f37432j.m1366d() || (iOException instanceof ConnectionShutdownException))) {
                    if (this.f37432j.f37408l == 0) {
                        if (!(this.f37425c == null || iOException == null)) {
                            this.f37430h.m1359a(this.f37425c, iOException);
                        }
                        this.f37425c = null;
                    }
                    z = true;
                }
                z = false;
            }
            cVar = this.f37432j;
            a = m1341a(z, false, true);
            cVar = null;
            if (this.f37432j == null && !this.f37433k) {
                cVar = null;
            }
        }
        C10109c.m1450a(a);
        if (cVar != null) {
            this.f37428f.m986b(this.f37427e, cVar);
        }
    }

    /* renamed from: a */
    public void m1342a(boolean z, AbstractC10138c cVar, long j, IOException iOException) {
        C10129c cVar2;
        Socket a;
        boolean z2;
        this.f37428f.m987b(this.f37427e, j);
        synchronized (this.f37426d) {
            if (cVar != null) {
                if (cVar == this.f37436n) {
                    if (!z) {
                        this.f37432j.f37408l++;
                    }
                    cVar2 = this.f37432j;
                    a = m1341a(z, false, true);
                    if (this.f37432j != null) {
                        cVar2 = null;
                    }
                    z2 = this.f37434l;
                }
            }
            throw new IllegalStateException("expected " + this.f37436n + " but was " + cVar);
        }
        C10109c.m1450a(a);
        if (cVar2 != null) {
            this.f37428f.m986b(this.f37427e, cVar2);
        }
        if (iOException != null) {
            this.f37428f.m995a(this.f37427e, AbstractC10107a.f37312a.mo849a(this.f37427e, iOException));
        } else if (z2) {
            AbstractC10107a.f37312a.mo849a(this.f37427e, (IOException) null);
            this.f37428f.m1001a(this.f37427e);
        }
    }

    /* renamed from: b */
    public AbstractC10138c m1340b() {
        AbstractC10138c cVar;
        synchronized (this.f37426d) {
            cVar = this.f37436n;
        }
        return cVar;
    }

    /* renamed from: b */
    public Socket m1339b(C10129c cVar) {
        if (this.f37436n == null && this.f37432j.f37410n.size() == 1) {
            Reference<C10133f> reference = this.f37432j.f37410n.get(0);
            Socket a = m1341a(true, false, false);
            this.f37432j = cVar;
            cVar.f37410n.add(reference);
            return a;
        }
        throw new IllegalStateException();
    }

    /* renamed from: c */
    public C10129c m1338c() {
        C10129c cVar;
        synchronized (this) {
            cVar = this.f37432j;
        }
        return cVar;
    }

    /* renamed from: d */
    public boolean m1337d() {
        C10131e.C10132a aVar;
        return this.f37425c != null || ((aVar = this.f37424b) != null && aVar.m1351b()) || this.f37430h.m1360a();
    }

    /* renamed from: e */
    public void m1336e() {
        C10129c cVar;
        Socket a;
        synchronized (this.f37426d) {
            cVar = this.f37432j;
            a = m1341a(true, false, false);
            if (this.f37432j != null) {
                cVar = null;
            }
        }
        C10109c.m1450a(a);
        if (cVar != null) {
            this.f37428f.m986b(this.f37427e, cVar);
        }
    }

    /* renamed from: f */
    public void m1335f() {
        C10129c cVar;
        Socket a;
        synchronized (this.f37426d) {
            cVar = this.f37432j;
            a = m1341a(false, true, false);
            if (this.f37432j != null) {
                cVar = null;
            }
        }
        C10109c.m1450a(a);
        if (cVar != null) {
            AbstractC10107a.f37312a.mo849a(this.f37427e, (IOException) null);
            this.f37428f.m986b(this.f37427e, cVar);
            this.f37428f.m1001a(this.f37427e);
        }
    }

    /* renamed from: g */
    public final Socket m1334g() {
        C10129c cVar = this.f37432j;
        if (cVar == null || !cVar.f37407k) {
            return null;
        }
        return m1341a(false, false, true);
    }

    /* renamed from: h */
    public C10104c0 m1333h() {
        return this.f37425c;
    }

    /* renamed from: i */
    public final C10130d m1332i() {
        return AbstractC10107a.f37312a.mo848a(this.f37426d);
    }

    public String toString() {
        C10129c c = m1338c();
        return c != null ? c.toString() : this.f37423a.toString();
    }
}
