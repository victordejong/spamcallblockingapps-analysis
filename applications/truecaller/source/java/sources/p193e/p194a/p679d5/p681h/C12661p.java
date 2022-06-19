package p193e.p194a.p679d5.p681h;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1334w.p1336b.AsyncTaskC21177a;
import p193e.p194a.p1334w.p1336b.p1337c.C21180a;
import p193e.p194a.p1334w.p1336b.p1338d.C21183a;
import q3.a.i0;
import q3.a.n;
import q3.a.o;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.startup_dialogs.resolvers.ReferralDialogResolver$tryLoadReferralData$2", f = "ReferralDialogResolver.kt", l = {123}, m = "invokeSuspend")
/* renamed from: e.a.d5.h.p */
/* loaded from: classes12-dex2jar.jar:e/a/d5/h/p.class */
public final class C12661p extends i implements p<i0, d<? super Boolean>, Object> {

    /* renamed from: e */
    public Object f36909e;

    /* renamed from: f */
    public int f36910f;

    /* renamed from: g */
    public final /* synthetic */ C12659o f36911g;

    /* renamed from: e.a.d5.h.p$a */
    /* loaded from: classes12-dex2jar.jar:e/a/d5/h/p$a.class */
    public static final class C12662a implements AsyncTaskC21177a.AbstractC21178a {

        /* renamed from: a */
        public final /* synthetic */ n f36912a;

        public C12662a(n nVar) {
            this.f36912a = nVar;
        }

        @Override // p193e.p194a.p1334w.p1336b.AsyncTaskC21177a.AbstractC21178a
        /* renamed from: af */
        public void mo10166af() {
            if (this.f36912a.b()) {
                this.f36912a.c(Boolean.FALSE);
            }
        }

        @Override // p193e.p194a.p1334w.p1336b.AsyncTaskC21177a.AbstractC21178a
        /* renamed from: e4 */
        public void mo10165e4(C21180a c21180a) {
            l.e(c21180a, "referralCodeResponse");
            if (this.f36912a.b()) {
                this.f36912a.c(Boolean.TRUE);
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C12661p(C12659o c12659o, d dVar) {
        super(2, dVar);
        this.f36911g = c12659o;
    }

    /* renamed from: i */
    public final d<s> m22786i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C12661p(this.f36911g, dVar);
    }

    /* renamed from: k */
    public final Object m22785k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C12661p(this.f36911g, dVar).m22784s(s.a);
    }

    /* renamed from: s */
    public final Object m22784s(Object obj) {
        a aVar = a.a;
        int i = this.f36910f;
        if (i == 0) {
            C25225a.m3932a3(obj);
            this.f36909e = this;
            this.f36910f = 1;
            o oVar = new o(C25225a.m3844s1(this), 1);
            oVar.z();
            new AsyncTaskC21177a(this.f36911g.f36903r, C21183a.f59362a, new C12662a(oVar)).execute(new Void[0]);
            Object y = oVar.y();
            if (y == aVar) {
                l.e(this, "frame");
            }
            obj = y;
            if (y == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C12661p c12661p = (C12661p) this.f36909e;
            C25225a.m3932a3(obj);
        }
        return obj;
    }
}
