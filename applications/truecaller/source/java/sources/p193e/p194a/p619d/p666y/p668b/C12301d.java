package p193e.p194a.p619d.p666y.p668b;

import io.agora.rtc.Constants;
import java.util.Objects;
import java.util.concurrent.CancellationException;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p619d.AbstractC11705f;
import p193e.p194a.p619d.AbstractC11708i;
import q3.a.i0;
import q3.a.j0;
import q3.a.p1;
import q3.a.x2.f;
import q3.a.x2.g;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.voip.notification.inapp.VoipInAppNotificationPresenter$listenGroupCallAndInvitation$1", f = "VoipInAppNotificationPresenter.kt", l = {Constants.ERR_ENCRYPTED_STREAM_NOT_ALLOWED_PUBLISHED}, m = "invokeSuspend")
/* renamed from: e.a.d.y.b.d */
/* loaded from: classes15-dex2jar.jar:e/a/d/y/b/d.class */
public final class C12301d extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f35936e;

    /* renamed from: f */
    public final /* synthetic */ C12307h f35937f;

    /* renamed from: e.a.d.y.b.d$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/y/b/d$a.class */
    public static final class C12302a implements g<AbstractC11708i> {
        public C12302a() {
            C12301d.this = r4;
        }

        /* renamed from: a */
        public Object m23289a(Object obj, d dVar) {
            AbstractC11708i abstractC11708i = (AbstractC11708i) obj;
            p1 p1Var = C12301d.this.f35937f.f35950e;
            if (p1Var != null) {
                s1.a.a.a.v0.f.d.T(p1Var, (CancellationException) null, 1, (Object) null);
            }
            if (abstractC11708i instanceof AbstractC11708i.C11710b) {
                AbstractC12300c abstractC12300c = (AbstractC12300c) C12301d.this.f35937f.f57683a;
                if (abstractC12300c != null) {
                    abstractC12300c.mo23298F0();
                }
            } else if (abstractC11708i instanceof AbstractC11708i.C11711c) {
                C12307h.m23278Ij(C12301d.this.f35937f);
            } else if (abstractC11708i instanceof AbstractC11708i.C11713e) {
                C12307h.m23277Jj(C12301d.this.f35937f);
            } else if (abstractC11708i instanceof AbstractC11708i.C11709a) {
                if (((AbstractC11708i.C11709a) abstractC11708i).f34364a) {
                    C12307h.m23277Jj(C12301d.this.f35937f);
                } else {
                    C12307h.m23278Ij(C12301d.this.f35937f);
                }
            } else if (abstractC11708i instanceof AbstractC11708i.C11712d) {
                C12307h c12307h = C12301d.this.f35937f;
                AbstractC11708i.C11712d c11712d = (AbstractC11708i.C11712d) abstractC11708i;
                long j = c11712d.f34367a;
                f<String> fVar = c11712d.f34368b;
                Objects.requireNonNull(c12307h);
                c12307h.f35950e = s1.a.a.a.v0.f.d.w2(c12307h, (s1.w.f) null, (j0) null, new C12305g(c12307h, fVar, j, null), 3, (Object) null);
            }
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C12301d(C12307h c12307h, d dVar) {
        super(2, dVar);
        this.f35937f = c12307h;
    }

    /* renamed from: i */
    public final d<s> m23292i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C12301d(this.f35937f, dVar);
    }

    /* renamed from: k */
    public final Object m23291k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C12301d(this.f35937f, dVar).m23290s(s.a);
    }

    /* renamed from: s */
    public final Object m23290s(Object obj) {
        a aVar = a.a;
        int i = this.f35936e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            f<AbstractC11708i> mo24194B = ((AbstractC11705f) this.f35937f.f35952g.get()).mo24194B(16);
            C12302a c12302a = new C12302a();
            this.f35936e = 1;
            if (mo24194B.c(c12302a, this) == aVar) {
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
