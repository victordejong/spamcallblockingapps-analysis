package p193e.p194a.p619d.p637c0;

import android.content.Context;
import android.telephony.PhoneStateListener;
import com.appsflyer.AppsFlyerProperties;
import com.razorpay.AnalyticsConstants;
import java.util.Objects;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p619d.p637c0.AbstractC11471s;
import q3.a.i0;
import q3.a.w2.d0;
import q3.a.w2.k;
import q3.a.w2.v;
import q3.a.w2.x;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.a;
import s1.z.b.l;
import s1.z.b.p;
import s1.z.c.m;
/* renamed from: e.a.d.c0.u */
/* loaded from: classes15-dex2jar.jar:e/a/d/c0/u.class */
public final class C11490u implements AbstractC11477t {

    /* renamed from: a */
    public final f f33740a;

    /* renamed from: b */
    public final Context f33741b;

    /* renamed from: c */
    public final AbstractC11434m1 f33742c;

    /* renamed from: e.a.d.c0.u$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c0/u$a.class */
    public static final class C11491a extends m implements l<Throwable, s> {

        /* renamed from: c */
        public final /* synthetic */ C11495c f33744c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11491a(C11495c c11495c) {
            super(1);
            C11490u.this = r4;
            this.f33744c = c11495c;
        }

        /* renamed from: d */
        public Object m24582d(Object obj) {
            Throwable th = (Throwable) obj;
            C11490u c11490u = C11490u.this;
            C19291g.m13541j0(c11490u.f33741b).listen(this.f33744c, 0);
            return s.a;
        }
    }

    @e(c = "com.truecaller.voip.util.NativeCallStateModelImpl$states$2", f = "NativeCallStateModel.kt", l = {105}, m = "invokeSuspend")
    /* renamed from: e.a.d.c0.u$b */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c0/u$b.class */
    public static final class C11492b extends i implements p<x<? super AbstractC11471s>, d<? super s>, Object> {

        /* renamed from: e */
        public /* synthetic */ Object f33745e;

        /* renamed from: f */
        public int f33746f;

        /* renamed from: e.a.d.c0.u$b$a */
        /* loaded from: classes15-dex2jar.jar:e/a/d/c0/u$b$a.class */
        public static final class C11493a extends m implements a<s> {

            /* renamed from: c */
            public final /* synthetic */ C11494b f33749c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C11493a(C11494b c11494b) {
                super(0);
                C11492b.this = r4;
                this.f33749c = c11494b;
            }

            public Object invoke() {
                C11490u c11490u = C11490u.this;
                C19291g.m13541j0(c11490u.f33741b).listen(this.f33749c, 0);
                return s.a;
            }
        }

        /* renamed from: e.a.d.c0.u$b$b */
        /* loaded from: classes15-dex2jar.jar:e/a/d/c0/u$b$b.class */
        public static final class C11494b extends PhoneStateListener {

            /* renamed from: b */
            public final /* synthetic */ x f33751b;

            public C11494b(x<? super AbstractC11471s> xVar) {
                C11492b.this = r4;
                this.f33751b = xVar;
            }

            @Override // android.telephony.PhoneStateListener
            public void onCallStateChanged(int i, String str) {
                boolean mo24689i;
                C11490u c11490u = C11490u.this;
                mo24689i = c11490u.f33742c.mo24689i(null);
                AbstractC11471s m24584d = c11490u.m24584d(i, mo24689i);
                if (m24584d != null) {
                    String str2 = "Call state is changed to " + m24584d;
                    C19291g.m13534l1(this.f33751b, m24584d);
                }
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11492b(d dVar) {
            super(2, dVar);
            C11490u.this = r5;
        }

        /* renamed from: i */
        public final d<s> m24581i(Object obj, d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            C11492b c11492b = new C11492b(dVar);
            c11492b.f33745e = obj;
            return c11492b;
        }

        /* renamed from: k */
        public final Object m24580k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            s1.z.c.l.e(dVar, "completion");
            C11492b c11492b = new C11492b(dVar);
            c11492b.f33745e = obj;
            return c11492b.m24579s(s.a);
        }

        /* renamed from: s */
        public final Object m24579s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f33746f;
            if (i == 0) {
                C25225a.m3932a3(obj);
                x xVar = (x) this.f33745e;
                C11494b c11494b = new C11494b(xVar);
                C19291g.m13541j0(C11490u.this.f33741b).listen(c11494b, 32);
                C11493a c11493a = new C11493a(c11494b);
                this.f33746f = 1;
                if (v.a(xVar, c11493a, this) == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return s.a;
        }
    }

    /* renamed from: e.a.d.c0.u$c */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c0/u$c.class */
    public static final class C11495c extends PhoneStateListener {

        /* renamed from: b */
        public final /* synthetic */ d0 f33753b;

        public C11495c(d0 d0Var) {
            C11490u.this = r4;
            this.f33753b = d0Var;
        }

        @Override // android.telephony.PhoneStateListener
        public void onCallStateChanged(int i, String str) {
            boolean mo24689i;
            C11490u c11490u = C11490u.this;
            mo24689i = c11490u.f33742c.mo24689i(null);
            AbstractC11471s m24584d = c11490u.m24584d(i, mo24689i);
            if (m24584d != null) {
                String str2 = "Call state is changed to " + m24584d;
                if (this.f33753b.i()) {
                    return;
                }
                this.f33753b.offer(m24584d);
            }
        }
    }

    @e(c = "com.truecaller.voip.util.NativeCallStateModelImpl", f = "NativeCallStateModel.kt", l = {120}, m = "waitForIdleNativeState")
    /* renamed from: e.a.d.c0.u$d */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c0/u$d.class */
    public static final class C11496d extends c {

        /* renamed from: d */
        public /* synthetic */ Object f33754d;

        /* renamed from: e */
        public int f33755e;

        /* renamed from: g */
        public Object f33757g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11496d(d dVar) {
            super(dVar);
            C11490u.this = r4;
        }

        /* renamed from: s */
        public final Object m24578s(Object obj) {
            this.f33754d = obj;
            this.f33755e |= Integer.MIN_VALUE;
            return C11490u.this.mo24585c(0L, this);
        }
    }

    @e(c = "com.truecaller.voip.util.NativeCallStateModelImpl$waitForIdleNativeState$2", f = "NativeCallStateModel.kt", l = {122}, m = "invokeSuspend")
    /* renamed from: e.a.d.c0.u$e */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c0/u$e.class */
    public static final class C11497e extends i implements p<i0, d<? super Boolean>, Object> {

        /* renamed from: e */
        public int f33758e;

        @e(c = "com.truecaller.voip.util.NativeCallStateModelImpl$waitForIdleNativeState$2$1", f = "NativeCallStateModel.kt", l = {}, m = "invokeSuspend")
        /* renamed from: e.a.d.c0.u$e$a */
        /* loaded from: classes15-dex2jar.jar:e/a/d/c0/u$e$a.class */
        public static final class C11498a extends i implements p<AbstractC11471s, d<? super Boolean>, Object> {

            /* renamed from: e */
            public /* synthetic */ Object f33760e;

            public C11498a(d dVar) {
                super(2, dVar);
            }

            /* renamed from: i */
            public final d<s> m24574i(Object obj, d<?> dVar) {
                s1.z.c.l.e(dVar, "completion");
                C11498a c11498a = new C11498a(dVar);
                c11498a.f33760e = obj;
                return c11498a;
            }

            /* renamed from: k */
            public final Object m24573k(Object obj, Object obj2) {
                d dVar = (d) obj2;
                s1.z.c.l.e(dVar, "completion");
                dVar.getContext();
                C25225a.m3932a3(s.a);
                return Boolean.valueOf(((AbstractC11471s) obj) instanceof AbstractC11471s.C11472a);
            }

            /* renamed from: s */
            public final Object m24572s(Object obj) {
                C25225a.m3932a3(obj);
                return Boolean.valueOf(((AbstractC11471s) this.f33760e) instanceof AbstractC11471s.C11472a);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11497e(d dVar) {
            super(2, dVar);
            C11490u.this = r5;
        }

        /* renamed from: i */
        public final d<s> m24577i(Object obj, d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            return new C11497e(dVar);
        }

        /* renamed from: k */
        public final Object m24576k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            s1.z.c.l.e(dVar, "completion");
            return new C11497e(dVar).m24575s(s.a);
        }

        /* renamed from: s */
        public final Object m24575s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f33758e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C11490u c11490u = C11490u.this;
                Objects.requireNonNull(c11490u);
                q3.a.x2.f X0 = s1.a.a.a.v0.f.d.X0(s1.a.a.a.v0.f.d.P(new C11492b(null)), c11490u.f33740a);
                C11498a c11498a = new C11498a(null);
                this.f33758e = 1;
                if (s1.a.a.a.v0.f.d.N0(X0, c11498a, this) == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return Boolean.TRUE;
        }
    }

    @Inject
    public C11490u(@Named("UI") f fVar, Context context, AbstractC11434m1 abstractC11434m1) {
        s1.z.c.l.e(fVar, "uiContext");
        s1.z.c.l.e(context, AnalyticsConstants.CONTEXT);
        s1.z.c.l.e(abstractC11434m1, "telecomUtil");
        this.f33740a = fVar;
        this.f33741b = context;
        this.f33742c = abstractC11434m1;
    }

    @Override // p193e.p194a.p619d.p637c0.AbstractC11477t
    /* renamed from: a */
    public q3.a.x2.f<AbstractC11471s> mo24587a() {
        return s1.a.a.a.v0.f.d.X0(s1.a.a.a.v0.f.d.P(new C11492b(null)), this.f33740a);
    }

    @Override // p193e.p194a.p619d.p637c0.AbstractC11477t
    /* renamed from: b */
    public void mo24586b(d0<? super AbstractC11471s> d0Var) {
        s1.z.c.l.e(d0Var, AppsFlyerProperties.CHANNEL);
        C11495c c11495c = new C11495c(d0Var);
        ((k) d0Var).c.a(new C11491a(c11495c));
        C19291g.m13541j0(this.f33741b).listen(c11495c, 32);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00c9  */
    @Override // p193e.p194a.p619d.p637c0.AbstractC11477t
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo24585c(long r6, s1.w.d<? super java.lang.Boolean> r8) {
        /*
            Method dump skipped, instructions count: 210
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p637c0.C11490u.mo24585c(long, s1.w.d):java.lang.Object");
    }

    /* renamed from: d */
    public final AbstractC11471s m24584d(int i, boolean z) {
        return i != 0 ? i != 1 ? i != 2 ? null : new AbstractC11471s.C11473b(z) : new AbstractC11471s.C11474c(z) : new AbstractC11471s.C11472a(z);
    }

    @Override // p193e.p194a.p619d.p637c0.AbstractC11477t
    /* renamed from: n */
    public AbstractC11471s mo24583n() {
        boolean mo24689i;
        mo24689i = this.f33742c.mo24689i(null);
        AbstractC11471s.C11472a m24584d = m24584d(C19291g.m13541j0(this.f33741b).getCallState(), mo24689i);
        if (m24584d == null) {
            m24584d = new AbstractC11471s.C11472a(mo24689i);
        }
        return m24584d;
    }
}
