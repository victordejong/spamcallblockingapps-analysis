package p193e.p194a.p619d.p652q;

import android.os.Build;
import android.telecom.CallAudioState;
import android.telecom.Connection;
import javax.inject.Inject;
import o3.a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p619d.AbstractC11706g;
import p193e.p194a.p619d.C11704e;
import q3.a.i0;
import q3.a.n;
import q3.a.o;
import s1.s;
import s1.w.d;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.d.q.w */
/* loaded from: classes15-dex2jar.jar:e/a/d/q/w.class */
public final class C11777w implements AbstractC11776v {

    /* renamed from: a */
    public int f34593a = Build.VERSION.SDK_INT;

    /* renamed from: b */
    public AbstractC11755i f34594b;

    /* renamed from: c */
    public boolean f34595c;

    /* renamed from: d */
    public n<? super s> f34596d;

    /* renamed from: e */
    public final AbstractC11706g f34597e;

    /* renamed from: f */
    public final a<AbstractC11756j> f34598f;

    /* renamed from: e.a.d.q.w$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/q/w$a.class */
    public static final class C11778a extends m implements s1.z.b.a<s> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11778a() {
            super(0);
            C11777w.this = r4;
        }

        public Object invoke() {
            synchronized (C11777w.this) {
                C11777w.this.f34594b = null;
            }
            return s.a;
        }
    }

    @e(c = "com.truecaller.voip.callconnection.VoipCallConnectionManagerImpl", f = "VoipCallConnectionManager.kt", l = {204}, m = "waitUntilConnectionCreated")
    /* renamed from: e.a.d.q.w$b */
    /* loaded from: classes15-dex2jar.jar:e/a/d/q/w$b.class */
    public static final class C11779b extends c {

        /* renamed from: d */
        public /* synthetic */ Object f34600d;

        /* renamed from: e */
        public int f34601e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11779b(d dVar) {
            super(dVar);
            C11777w.this = r4;
        }

        /* renamed from: s */
        public final Object m24001s(Object obj) {
            this.f34600d = obj;
            this.f34601e |= Integer.MIN_VALUE;
            return C11777w.this.mo24005h(this);
        }
    }

    @e(c = "com.truecaller.voip.callconnection.VoipCallConnectionManagerImpl$waitUntilConnectionCreated$connectionCreated$1", f = "VoipCallConnectionManager.kt", l = {260}, m = "invokeSuspend")
    /* renamed from: e.a.d.q.w$c */
    /* loaded from: classes15-dex2jar.jar:e/a/d/q/w$c.class */
    public static final class C11780c extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public Object f34603e;

        /* renamed from: f */
        public int f34604f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11780c(d dVar) {
            super(2, dVar);
            C11777w.this = r5;
        }

        /* renamed from: i */
        public final d<s> m24000i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C11780c(dVar);
        }

        /* renamed from: k */
        public final Object m23999k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C11780c(dVar).m23998s(s.a);
        }

        /* renamed from: s */
        public final Object m23998s(Object obj) {
            s sVar = s.a;
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f34604f;
            if (i == 0) {
                C25225a.m3932a3(obj);
                this.f34603e = this;
                this.f34604f = 1;
                o oVar = new o(C25225a.m3844s1(this), 1);
                oVar.z();
                synchronized (C11777w.this) {
                    C11777w c11777w = C11777w.this;
                    if (c11777w.f34594b != null) {
                        C19291g.m13552f1(oVar, sVar);
                    } else {
                        c11777w.f34596d = oVar;
                    }
                }
                Object y = oVar.y();
                if (y == aVar) {
                    l.e(this, "frame");
                }
                if (y == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C11780c c11780c = (C11780c) this.f34603e;
                C25225a.m3932a3(obj);
            }
            return sVar;
        }
    }

    @Inject
    public C11777w(AbstractC11706g abstractC11706g, a<AbstractC11756j> aVar) {
        l.e(abstractC11706g, "voipConfig");
        l.e(aVar, "connectionFactory");
        this.f34597e = abstractC11706g;
        this.f34598f = aVar;
    }

    @Override // p193e.p194a.p619d.p652q.AbstractC11776v
    /* renamed from: a */
    public boolean mo24012a(s1.z.b.l<? super CallAudioState, s> lVar) {
        synchronized (this) {
            if (m24011b()) {
                return false;
            }
            AbstractC11755i abstractC11755i = this.f34594b;
            if (abstractC11755i == null) {
                return false;
            }
            abstractC11755i.mo24016a(lVar);
            return true;
        }
    }

    /* renamed from: b */
    public final boolean m24011b() {
        return this.f34593a < 26 || !((C11704e) this.f34597e).m24197a();
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0072 A[Catch: all -> 0x015a, TRY_ENTER, TRY_LEAVE, TryCatch #0 {, blocks: (B:4:0x0002, B:9:0x0015, B:11:0x001e, B:14:0x0028, B:18:0x0035, B:22:0x0043, B:26:0x004d, B:29:0x0072, B:31:0x0082, B:33:0x00a7, B:35:0x00af, B:38:0x00c0, B:41:0x00d0, B:44:0x00dd, B:46:0x00e7, B:49:0x0115, B:52:0x011f, B:53:0x0135, B:54:0x0140, B:58:0x014c, B:59:0x0155), top: B:67:0x0002 }] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x007f  */
    @Override // p193e.p194a.p619d.p652q.AbstractC11776v
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo24010c(p193e.p194a.p619d.p637c0.p640x1.AbstractC11514a r4) {
        /*
            Method dump skipped, instructions count: 351
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p652q.C11777w.mo24010c(e.a.d.c0.x1.a):boolean");
    }

    @Override // p193e.p194a.p619d.p652q.AbstractC11776v
    /* renamed from: d */
    public void mo24009d() {
        synchronized (this) {
            AbstractC11755i abstractC11755i = this.f34594b;
            if (abstractC11755i != null) {
                abstractC11755i.mo24015b();
            }
        }
    }

    @Override // p193e.p194a.p619d.p652q.AbstractC11776v
    /* renamed from: e */
    public void mo24008e() {
        synchronized (this) {
            if (m24011b()) {
                return;
            }
            this.f34595c = true;
        }
    }

    @Override // p193e.p194a.p619d.p652q.AbstractC11776v
    /* renamed from: f */
    public void mo24007f() {
        synchronized (this) {
            if (m24011b()) {
                return;
            }
            this.f34594b = null;
            this.f34595c = false;
            n<? super s> nVar = this.f34596d;
            if (nVar != null) {
                C19291g.m13552f1(nVar, s.a);
            }
            this.f34596d = null;
        }
    }

    @Override // p193e.p194a.p619d.p652q.AbstractC11776v
    /* renamed from: g */
    public Connection mo24006g() {
        synchronized (this) {
            if (m24011b()) {
                return ((AbstractC11756j) this.f34598f.get()).mo24044a();
            }
            AbstractC11755i mo24043b = ((AbstractC11756j) this.f34598f.get()).mo24043b(true);
            if (mo24043b == null) {
                return ((AbstractC11756j) this.f34598f.get()).mo24044a();
            }
            this.f34595c = false;
            if (this.f34594b != null) {
                return ((AbstractC11756j) this.f34598f.get()).mo24044a();
            }
            mo24043b.initialize();
            m24002k(mo24043b);
            return mo24043b.mo24013d();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00a7  */
    @Override // p193e.p194a.p619d.p652q.AbstractC11776v
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo24005h(s1.w.d<? super java.lang.Boolean> r6) {
        /*
            r5 = this;
            java.lang.Boolean r0 = java.lang.Boolean.TRUE
            r7 = r0
            r0 = r6
            boolean r0 = r0 instanceof p193e.p194a.p619d.p652q.C11777w.C11779b
            if (r0 == 0) goto L2c
            r0 = r6
            e.a.d.q.w$b r0 = (p193e.p194a.p619d.p652q.C11777w.C11779b) r0
            r8 = r0
            r0 = r8
            int r0 = r0.f34601e
            r9 = r0
            r0 = r9
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L2c
            r0 = r8
            r1 = r9
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f34601e = r1
            r0 = r8
            r6 = r0
            goto L36
        L2c:
            e.a.d.q.w$b r0 = new e.a.d.q.w$b
            r1 = r0
            r2 = r5
            r3 = r6
            r1.<init>(r3)
            r6 = r0
        L36:
            r0 = r6
            java.lang.Object r0 = r0.f34600d
            r8 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r10 = r0
            r0 = r6
            int r0 = r0.f34601e
            r9 = r0
            r0 = 1
            r11 = r0
            r0 = r9
            if (r0 == 0) goto L67
            r0 = r9
            r1 = 1
            if (r0 != r1) goto L5d
            r0 = r8
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r8
            r6 = r0
            goto La0
        L5d:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L67:
            r0 = r8
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r5
            boolean r0 = r0.m24011b()
            if (r0 == 0) goto L74
            r0 = r7
            return r0
        L74:
            r0 = r5
            e.a.d.q.i r0 = r0.f34594b
            if (r0 == 0) goto L7d
            r0 = r7
            return r0
        L7d:
            e.a.d.q.w$c r0 = new e.a.d.q.w$c
            r1 = r0
            r2 = r5
            r3 = 0
            r1.<init>(r3)
            r8 = r0
            r0 = r6
            r1 = 1
            r0.f34601e = r1
            r0 = 2000(0x7d0, double:9.88E-321)
            r1 = r8
            r2 = r6
            java.lang.Object r0 = q3.a.j.c(r0, r1, r2)
            r8 = r0
            r0 = r8
            r6 = r0
            r0 = r8
            r1 = r10
            if (r0 != r1) goto La0
            r0 = r10
            return r0
        La0:
            r0 = r6
            if (r0 == 0) goto La7
            goto Laa
        La7:
            r0 = 0
            r11 = r0
        Laa:
            r0 = r11
            java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p652q.C11777w.mo24005h(s1.w.d):java.lang.Object");
    }

    @Override // p193e.p194a.p619d.p652q.AbstractC11776v
    /* renamed from: i */
    public Connection mo24004i() {
        synchronized (this) {
            if (m24011b()) {
                return ((AbstractC11756j) this.f34598f.get()).mo24044a();
            }
            AbstractC11755i mo24043b = ((AbstractC11756j) this.f34598f.get()).mo24043b(false);
            if (mo24043b == null) {
                return ((AbstractC11756j) this.f34598f.get()).mo24044a();
            }
            mo24043b.initialize();
            m24002k(mo24043b);
            return mo24043b.mo24013d();
        }
    }

    @Override // p193e.p194a.p619d.p652q.AbstractC11776v
    /* renamed from: j */
    public boolean mo24003j() {
        boolean z;
        synchronized (this) {
            if (this.f34594b == null) {
                if (!this.f34595c) {
                    z = false;
                }
            }
            z = true;
        }
        return z;
    }

    /* renamed from: k */
    public final void m24002k(AbstractC11755i abstractC11755i) {
        synchronized (this) {
            this.f34594b = abstractC11755i;
            n<? super s> nVar = this.f34596d;
            if (nVar != null) {
                C19291g.m13552f1(nVar, s.a);
            }
            this.f34596d = null;
            abstractC11755i.mo24014c(new C11778a());
        }
    }
}
