package p193e.p194a.p619d.p657v.p659l.p660e;

import java.util.Set;
import javax.inject.Inject;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p619d.p637c0.p642z1.AbstractC11598i;
import p193e.p194a.p619d.p663x.p665r.AbstractC12261h;
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
/* renamed from: e.a.d.v.l.e.c */
/* loaded from: classes15-dex2jar.jar:e/a/d/v/l/e/c.class */
public final class C12040c implements i0, AbstractC12039b {

    /* renamed from: a */
    public final int f35258a;

    /* renamed from: b */
    public final boolean f35259b;

    /* renamed from: c */
    public final AbstractC11598i f35260c;

    /* renamed from: d */
    public final AbstractC12261h f35261d;

    /* renamed from: e */
    public final /* synthetic */ i0 f35262e;

    @e(c = "com.truecaller.voip.groupcall.call.action.CancelInviteImpl$cancelInvite$1", f = "CancelInvite.kt", l = {32, 37}, m = "invokeSuspend")
    /* renamed from: e.a.d.v.l.e.c$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/v/l/e/c$a.class */
    public static final class C12041a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f35263e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12041a(d dVar) {
            super(2, dVar);
            C12040c.this = r5;
        }

        /* renamed from: i */
        public final d<s> m23698i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C12041a(dVar);
        }

        /* renamed from: k */
        public final Object m23697k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C12041a(dVar).m23696s(s.a);
        }

        /* renamed from: s */
        public final Object m23696s(Object obj) {
            s sVar = s.a;
            a aVar = a.a;
            int i = this.f35263e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C12040c c12040c = C12040c.this;
                if (!c12040c.f35259b) {
                    return sVar;
                }
                int i2 = c12040c.f35258a;
                AbstractC11598i abstractC11598i = c12040c.f35260c;
                this.f35263e = 1;
                Object mo24395k = abstractC11598i.mo24395k(i2, this);
                obj = mo24395k;
                if (mo24395k == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                C25225a.m3932a3(obj);
                return sVar;
            } else {
                C25225a.m3932a3(obj);
            }
            String str = (String) obj;
            if (str == null) {
                int i3 = C12040c.this.f35258a;
                return sVar;
            }
            AbstractC12261h abstractC12261h = C12040c.this.f35261d;
            Set<String> y0 = s1.u.i.y0(str);
            this.f35263e = 2;
            if (abstractC12261h.mo23348l(y0, this) == aVar) {
                return aVar;
            }
            return sVar;
        }
    }

    @Inject
    public C12040c(i0 i0Var, int i, boolean z, AbstractC11598i abstractC11598i, AbstractC12261h abstractC12261h) {
        l.e(i0Var, "coroutineScope");
        l.e(abstractC11598i, "callInfoRepository");
        l.e(abstractC12261h, "rtmChannel");
        this.f35262e = i0Var;
        this.f35258a = i;
        this.f35259b = z;
        this.f35260c = abstractC11598i;
        this.f35261d = abstractC12261h;
    }

    @Override // p193e.p194a.p619d.p657v.p659l.p660e.AbstractC12039b
    /* renamed from: g */
    public p1 mo23699g() {
        return s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C12041a(null), 3, (Object) null);
    }

    public f getCoroutineContext() {
        return this.f35262e.getCoroutineContext();
    }
}
