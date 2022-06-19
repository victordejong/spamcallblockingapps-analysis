package p193e.p194a.p619d.p657v.p658k;

import io.agora.rtc.Constants;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Objects;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p619d.p637c0.AbstractC11387c0;
import p193e.p194a.p619d.p657v.p659l.AbstractC12020a;
import q3.a.i0;
import q3.a.x2.a;
import q3.a.x2.g;
import s1.k;
import s1.s;
import s1.u.u;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.voip.groupcall.action.CollectPeerHistoryImpl$registerCallHistory$1", f = "CollectPeerHistory.kt", l = {Constants.ERR_WATERMARK_READ}, m = "invokeSuspend")
/* renamed from: e.a.d.v.k.h */
/* loaded from: classes15-dex2jar.jar:e/a/d/v/k/h.class */
public final class C11916h extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f34996e;

    /* renamed from: f */
    public final /* synthetic */ C11922i f34997f;

    /* renamed from: e.a.d.v.k.h$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/v/k/h$a.class */
    public static final class C11917a implements g<AbstractC11387c0<AbstractC12020a>> {
        public C11917a() {
            C11916h.this = r4;
        }

        /* renamed from: a */
        public Object m23833a(Object obj, d dVar) {
            AbstractC11387c0 abstractC11387c0 = (AbstractC11387c0) obj;
            if (abstractC11387c0 instanceof AbstractC11387c0.C11388a) {
                C11922i c11922i = C11916h.this.f34997f;
                Collection<AbstractC12020a> collection = ((AbstractC11387c0.C11388a) abstractC11387c0).f33453a;
                Objects.requireNonNull(c11922i);
                for (AbstractC12020a abstractC12020a : collection) {
                    LinkedHashMap<Integer, k<Integer, AbstractC12020a>> linkedHashMap = c11922i.f35012a;
                    linkedHashMap.remove(Integer.valueOf(abstractC12020a.mo23701d()));
                    linkedHashMap.put(Integer.valueOf(abstractC12020a.mo23701d()), new k<>(Integer.valueOf(c11922i.f35013b), abstractC12020a));
                    c11922i.f35013b++;
                }
            }
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C11916h(C11922i c11922i, d dVar) {
        super(2, dVar);
        this.f34997f = c11922i;
    }

    /* renamed from: i */
    public final d<s> m23836i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C11916h(this.f34997f, dVar);
    }

    /* renamed from: k */
    public final Object m23835k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C11916h(this.f34997f, dVar).m23834s(s.a);
    }

    /* renamed from: s */
    public final Object m23834s(Object obj) {
        a m13539k;
        s1.w.j.a aVar = s1.w.j.a.a;
        int i = this.f34996e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            m13539k = C19291g.m13539k(this.f34997f.f35014c, (r5 & 1) != 0 ? u.a : null);
            C11917a c11917a = new C11917a();
            this.f34996e = 1;
            if (m13539k.c(c11917a, this) == aVar) {
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
