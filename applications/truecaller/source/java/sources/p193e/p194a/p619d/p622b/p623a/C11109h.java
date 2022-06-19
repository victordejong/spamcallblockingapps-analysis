package p193e.p194a.p619d.p622b.p623a;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p619d.p637c0.p640x1.AbstractC11514a;
import p193e.p194a.p619d.p637c0.p640x1.C11519b;
import p193e.p194a.p619d.p663x.C12221p;
import q3.a.i0;
import q3.a.x2.f;
import q3.a.x2.g;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.voip.legacy.incall.LegacyVoipServicePresenter$listenForAudioStateChanges$1", f = "LegacyVoipServicePresenter.kt", l = {968}, m = "invokeSuspend")
/* renamed from: e.a.d.b.a.h */
/* loaded from: classes15-dex2jar.jar:e/a/d/b/a/h.class */
public final class C11109h extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f32851e;

    /* renamed from: f */
    public final /* synthetic */ C11087b f32852f;

    /* renamed from: e.a.d.b.a.h$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/b/a/h$a.class */
    public static final class C11110a implements g<C11519b> {
        public C11110a() {
            C11109h.this = r4;
        }

        /* renamed from: a */
        public Object m25197a(Object obj, d dVar) {
            C11519b c11519b = (C11519b) obj;
            String str = "Audio state is changed: " + c11519b;
            C11087b c11087b = C11109h.this.f32852f;
            s1.a.a.a.v0.f.d.I2(c11087b.f32790s, C12221p.m23434a(c11087b.m25281Pj(), false, false, false, false, c11519b, 15));
            C11087b c11087b2 = C11109h.this.f32852f;
            if (l.a(c11087b2.m25281Pj().f35691e.f33811a, AbstractC11514a.C11516b.f33808a)) {
                AbstractC11108g abstractC11108g = (AbstractC11108g) c11087b2.f57683a;
                if (abstractC11108g != null) {
                    abstractC11108g.mo25202s3();
                }
            } else {
                AbstractC11108g abstractC11108g2 = (AbstractC11108g) c11087b2.f57683a;
                if (abstractC11108g2 != null) {
                    abstractC11108g2.mo25205p3();
                }
            }
            C11087b c11087b3 = C11109h.this.f32852f;
            boolean z = c11087b3.m25281Pj().f35691e.f33811a instanceof AbstractC11514a.C11517c;
            AbstractC11108g abstractC11108g3 = (AbstractC11108g) c11087b3.f57683a;
            if (abstractC11108g3 != null) {
                if (z) {
                    abstractC11108g3.mo25214c();
                } else {
                    abstractC11108g3.mo25215b();
                }
            }
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C11109h(C11087b c11087b, d dVar) {
        super(2, dVar);
        this.f32852f = c11087b;
    }

    /* renamed from: i */
    public final d<s> m25200i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C11109h(this.f32852f, dVar);
    }

    /* renamed from: k */
    public final Object m25199k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C11109h(this.f32852f, dVar).m25198s(s.a);
    }

    /* renamed from: s */
    public final Object m25198s(Object obj) {
        a aVar = a.a;
        int i = this.f32851e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            f<C11519b> mo24550h = this.f32852f.f32767C.mo24550h();
            C11110a c11110a = new C11110a();
            this.f32851e = 1;
            if (mo24550h.c(c11110a, this) == aVar) {
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
