package p193e.p194a.p619d.p670z.p671b;

import com.truecaller.voip.C4781R;
import java.util.Objects;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p619d.p657v.AbstractC11822b;
import p193e.p194a.p619d.p657v.AbstractC11840h;
import q3.a.i0;
import q3.a.x2.f;
import q3.a.x2.g;
import q3.a.x2.k;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.b.q;
import s1.z.c.l;
@e(c = "com.truecaller.voip.service.call.CallServicePresenter$setNotificationDescription$1", f = "CallServicePresenter.kt", l = {332}, m = "invokeSuspend")
/* renamed from: e.a.d.z.b.i */
/* loaded from: classes15-dex2jar.jar:e/a/d/z/b/i.class */
public final class C12355i extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f36069e;

    /* renamed from: f */
    public final /* synthetic */ C12334c f36070f;

    /* renamed from: g */
    public final /* synthetic */ AbstractC11822b f36071g;

    /* renamed from: e.a.d.z.b.i$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/z/b/i$a.class */
    public static final class C12356a implements g<String> {
        public C12356a() {
            C12355i.this = r4;
        }

        /* renamed from: a */
        public Object m23193a(Object obj, d dVar) {
            a aVar;
            a aVar2 = s.a;
            String str = (String) obj;
            AbstractC12333b abstractC12333b = (AbstractC12333b) C12355i.this.f36070f.f57683a;
            if (abstractC12333b != null) {
                abstractC12333b.mo23248h(str);
                aVar = aVar2;
            } else {
                aVar = null;
            }
            return aVar == a.a ? aVar : aVar2;
        }
    }

    @e(c = "com.truecaller.voip.service.call.CallServicePresenter$setNotificationDescription$1$invokeSuspend$$inlined$flatMapLatest$1", f = "CallServicePresenter.kt", l = {228}, m = "invokeSuspend")
    /* renamed from: e.a.d.z.b.i$b */
    /* loaded from: classes15-dex2jar.jar:e/a/d/z/b/i$b.class */
    public static final class C12357b extends i implements q<g<? super String>, AbstractC11840h, d<? super s>, Object> {

        /* renamed from: e */
        public /* synthetic */ Object f36073e;

        /* renamed from: f */
        public /* synthetic */ Object f36074f;

        /* renamed from: g */
        public int f36075g;

        /* renamed from: h */
        public final /* synthetic */ C12355i f36076h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12357b(d dVar, C12355i c12355i) {
            super(3, dVar);
            this.f36076h = c12355i;
        }

        /* renamed from: h */
        public final Object m23192h(Object obj, Object obj2, Object obj3) {
            C12357b c12357b = new C12357b((d) obj3, this.f36076h);
            c12357b.f36073e = (g) obj;
            c12357b.f36074f = obj2;
            return c12357b.m23191s(s.a);
        }

        /* renamed from: s */
        public final Object m23191s(Object obj) {
            f fVar;
            a aVar = a.a;
            int i = this.f36075g;
            if (i == 0) {
                C25225a.m3932a3(obj);
                g gVar = (g) this.f36073e;
                AbstractC11840h abstractC11840h = (AbstractC11840h) this.f36074f;
                if (((Boolean) this.f36076h.f36070f.f36019f.mo23957f().getValue()).booleanValue()) {
                    fVar = abstractC11840h instanceof AbstractC11840h.AbstractC11842b ? new k(C12334c.m23241Jj(this.f36076h.f36070f, C4781R.string.voip_status_call_ended)) : new k(C12334c.m23241Jj(this.f36076h.f36070f, C4781R.string.voip_status_ending));
                } else if (abstractC11840h instanceof AbstractC11840h.C11841a) {
                    fVar = new k(C12334c.m23242Ij(this.f36076h.f36070f));
                } else if (abstractC11840h instanceof AbstractC11840h.C11851c) {
                    C12355i c12355i = this.f36076h;
                    C12334c c12334c = c12355i.f36070f;
                    AbstractC11822b abstractC11822b = c12355i.f36071g;
                    Objects.requireNonNull(c12334c);
                    fVar = s1.a.a.a.v0.f.d.P3(abstractC11822b.mo23965a(), new C12343d(null, c12334c));
                } else if (!(abstractC11840h instanceof AbstractC11840h.AbstractC11842b)) {
                    throw new s1.i();
                } else {
                    fVar = new k(C12334c.m23241Jj(this.f36076h.f36070f, C4781R.string.voip_status_call_ended));
                }
                this.f36075g = 1;
                if (fVar.c(gVar, this) == aVar) {
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

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C12355i(C12334c c12334c, AbstractC11822b abstractC11822b, d dVar) {
        super(2, dVar);
        this.f36070f = c12334c;
        this.f36071g = abstractC11822b;
    }

    /* renamed from: i */
    public final d<s> m23196i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C12355i(this.f36070f, this.f36071g, dVar);
    }

    /* renamed from: k */
    public final Object m23195k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C12355i(this.f36070f, this.f36071g, dVar).m23194s(s.a);
    }

    /* renamed from: s */
    public final Object m23194s(Object obj) {
        a aVar = a.a;
        int i = this.f36069e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            q3.a.x2.o1.i P3 = s1.a.a.a.v0.f.d.P3(this.f36071g.getState(), new C12357b(null, this));
            C12356a c12356a = new C12356a();
            this.f36069e = 1;
            if (P3.c(c12356a, this) == aVar) {
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
