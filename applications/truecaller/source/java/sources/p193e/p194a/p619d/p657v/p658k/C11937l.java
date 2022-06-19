package p193e.p194a.p619d.p657v.p658k;

import io.agora.rtc.Constants;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Set;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p619d.p637c0.AbstractC11387c0;
import p193e.p194a.p619d.p657v.AbstractC11840h;
import p193e.p194a.p619d.p657v.p659l.AbstractC12020a;
import p193e.p194a.p619d.p657v.p659l.AbstractC12022c;
import q3.a.i0;
import q3.a.x2.g;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.voip.groupcall.action.ConnectGroupCallImpl$endCallWhenPeersLeft$1", f = "ConnectGroupCall.kt", l = {Constants.ERR_PUBLISH_STREAM_NOT_AUTHORIZED}, m = "invokeSuspend")
/* renamed from: e.a.d.v.k.l */
/* loaded from: classes15-dex2jar.jar:e/a/d/v/k/l.class */
public final class C11937l extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f35069e;

    /* renamed from: f */
    public final /* synthetic */ C11930k f35070f;

    /* renamed from: e.a.d.v.k.l$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/v/k/l$a.class */
    public static final class C11938a implements g<AbstractC11387c0<AbstractC12020a>> {
        public C11938a() {
            C11937l.this = r4;
        }

        /* renamed from: a */
        public Object m23800a(Object obj, d dVar) {
            AbstractC11387c0 abstractC11387c0 = (AbstractC11387c0) obj;
            if ((abstractC11387c0 instanceof AbstractC11387c0.C11389b) && C11937l.this.f35070f.f35032d.getValue().isEmpty()) {
                AbstractC11387c0.C11389b c11389b = (AbstractC11387c0.C11389b) abstractC11387c0;
                Collection collection = c11389b.f33454a;
                ArrayList arrayList = new ArrayList();
                for (Object obj2 : collection) {
                    if (Boolean.valueOf(((AbstractC12020a) obj2).getState().getValue() instanceof AbstractC12022c.AbstractC12024b.C12025a).booleanValue()) {
                        arrayList.add(obj2);
                    }
                }
                if (!Boolean.valueOf(arrayList.size() == c11389b.f33454a.size()).booleanValue()) {
                    arrayList = null;
                }
                AbstractC11840h.AbstractC11842b.C11848f c11848f = arrayList != null ? AbstractC11840h.AbstractC11842b.C11848f.f34817b : AbstractC11840h.AbstractC11842b.C11849g.f34818b;
                String str = "Ending call with reason = " + c11848f;
                C11937l.this.f35070f.f35034f.mo23767k(c11848f);
            }
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C11937l(C11930k c11930k, d dVar) {
        super(2, dVar);
        this.f35070f = c11930k;
    }

    /* renamed from: i */
    public final d<s> m23803i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C11937l(this.f35070f, dVar);
    }

    /* renamed from: k */
    public final Object m23802k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C11937l(this.f35070f, dVar).m23801s(s.a);
    }

    /* renamed from: s */
    public final Object m23801s(Object obj) {
        s sVar = s.a;
        a aVar = a.a;
        int i = this.f35069e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            Set<? extends AbstractC12020a> value = this.f35070f.f35032d.getValue();
            if (value.isEmpty()) {
                this.f35070f.f35034f.mo23767k(AbstractC11840h.AbstractC11842b.C11849g.f34818b);
                return sVar;
            }
            q3.a.x2.a m13539k = C19291g.m13539k(this.f35070f.f35032d, value);
            C11938a c11938a = new C11938a();
            this.f35069e = 1;
            if (m13539k.c(c11938a, this) == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        return sVar;
    }
}
