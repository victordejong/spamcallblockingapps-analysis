package p193e.p194a.p437c.p610y;

import com.truecaller.insights.models.DomainOrigin;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p437c.p523a0.AbstractC9625e;
import p193e.p194a.p437c.p523a0.C9626f;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p437c.p580r.p589j.C10582b;
import q3.a.i0;
import q3.a.j0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
import w3.b.a.b;
/* renamed from: e.a.c.y.c */
/* loaded from: classes10-dex2jar.jar:e/a/c/y/c.class */
public final class C10868c extends AbstractC10864a {

    /* renamed from: g */
    public final f f32273g = this.f32264c;

    /* renamed from: h */
    public final long f32274h;

    /* renamed from: i */
    public final int f32275i;

    @e(c = "com.truecaller.insights.smartcards.AlreadyPickedUpUseCase$execute$2", f = "ActionUsecaseRevamp.kt", l = {145}, m = "invokeSuspend")
    /* renamed from: e.a.c.y.c$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/y/c$a.class */
    public static final class C10869a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f32276e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10869a(d dVar) {
            super(2, dVar);
            C10868c.this = r5;
        }

        /* renamed from: i */
        public final d<s> m25538i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C10869a(dVar);
        }

        /* renamed from: k */
        public final Object m25537k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C10869a(dVar).m25536s(s.a);
        }

        /* renamed from: s */
        public final Object m25536s(Object obj) {
            a aVar = a.a;
            int i = this.f32276e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C10868c c10868c = C10868c.this;
                AbstractC9625e abstractC9625e = c10868c.f32263b;
                long j = c10868c.f32274h;
                DomainOrigin domainOrigin = DomainOrigin.SMS;
                int i2 = c10868c.f32275i;
                b D = new b().D(1);
                l.d(D, "DateTime.now().plusDays(EXPIRE_AFTER_DAYS)");
                C10582b c10582b = new C10582b(0L, j, "Delivery", i2, null, null, domainOrigin, String.valueOf(((w3.b.a.e0.e) D).a), 49);
                this.f32276e = 1;
                if (((C9626f) abstractC9625e).f29085a.mo27066g(C10480a.m26040N2(c10582b), this) == aVar) {
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

    public C10868c(long j, int i) {
        this.f32274h = j;
        this.f32275i = i;
    }

    @Override // p193e.p194a.p437c.p580r.p589j.AbstractC10592f
    /* renamed from: a */
    public Object mo25534a(d<? super s> dVar) {
        a w2 = s1.a.a.a.v0.f.d.w2(m25773c(), (f) null, (j0) null, new C10869a(null), 3, (Object) null);
        return w2 == a.a ? w2 : s.a;
    }

    @Override // p193e.p194a.p437c.p580r.p589j.AbstractC10592f
    /* renamed from: b */
    public f mo25533b() {
        return this.f32273g;
    }
}
