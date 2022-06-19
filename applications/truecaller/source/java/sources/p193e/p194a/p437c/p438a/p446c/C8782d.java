package p193e.p194a.p437c.p438a.p446c;

import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p437c.p579q.C10510g;
import q3.a.i0;
import q3.a.j0;
import q3.a.p1;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
import w3.b.a.b;
/* renamed from: e.a.c.a.c.d */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/c/d.class */
public final class C8782d implements AbstractC8781c {

    /* renamed from: a */
    public final i0 f26787a;

    /* renamed from: b */
    public p1 f26788b;

    /* renamed from: c */
    public final f f26789c;

    @e(c = "com.truecaller.insights.ui.important.OtpAutoDismissHelperImpl$scheduleAutoDismiss$1", f = "OtpAutoDismissHelper.kt", l = {36}, m = "invokeSuspend")
    /* renamed from: e.a.c.a.c.d$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/c/d$a.class */
    public static final class C8783a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f26790e;

        /* renamed from: f */
        public final /* synthetic */ long f26791f;

        /* renamed from: g */
        public final /* synthetic */ C10510g f26792g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C8783a(long j, C10510g c10510g, d dVar) {
            super(2, dVar);
            this.f26791f = j;
            this.f26792g = c10510g;
        }

        /* renamed from: i */
        public final d<s> m28072i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C8783a(this.f26791f, this.f26792g, dVar);
        }

        /* renamed from: k */
        public final Object m28071k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C8783a(this.f26791f, this.f26792g, dVar).m28070s(s.a);
        }

        /* renamed from: s */
        public final Object m28070s(Object obj) {
            a aVar = a.a;
            int i = this.f26790e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                long j = this.f26791f;
                this.f26790e = 1;
                if (s1.a.a.a.v0.f.d.D0(j, this) == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            C10480a.m25997Y1(this.f26792g);
            return s.a;
        }
    }

    @Inject
    public C8782d(@Named("IO") f fVar) {
        l.e(fVar, "ioContext");
        this.f26789c = fVar;
        this.f26787a = s1.a.a.a.v0.f.d.h(fVar.plus(s1.a.a.a.v0.f.d.n((p1) null, 1)));
    }

    @Override // p193e.p194a.p437c.p438a.p446c.AbstractC8781c
    /* renamed from: a */
    public void mo28074a() {
        p1 p1Var = this.f26788b;
        if (p1Var != null) {
            s1.a.a.a.v0.f.d.T(p1Var, (CancellationException) null, 1, (Object) null);
        }
    }

    @Override // p193e.p194a.p437c.p438a.p446c.AbstractC8781c
    /* renamed from: b */
    public void mo28073b(C10510g c10510g) {
        l.e(c10510g, "otpData");
        b bVar = new b();
        long j = c10510g.f31253e;
        l.d(bVar, "now");
        if (j < ((w3.b.a.e0.e) bVar).a) {
            return;
        }
        b bVar2 = new b(c10510g.f31253e);
        l.e(bVar2, "$this$trimSeconds");
        long j2 = ((w3.b.a.e0.e) new b(bVar2.u(), bVar2.t(), bVar2.q(), bVar2.r(), bVar2.s(), 0)).a;
        long j3 = ((w3.b.a.e0.e) bVar).a;
        p1 p1Var = this.f26788b;
        if (p1Var != null) {
            s1.a.a.a.v0.f.d.T(p1Var, (CancellationException) null, 1, (Object) null);
        }
        this.f26788b = s1.a.a.a.v0.f.d.w2(this.f26787a, (f) null, (j0) null, new C8783a(j2 - j3, c10510g, null), 3, (Object) null);
    }
}
