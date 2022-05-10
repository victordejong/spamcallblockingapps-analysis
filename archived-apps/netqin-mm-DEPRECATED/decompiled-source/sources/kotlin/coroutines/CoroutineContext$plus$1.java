package kotlin.coroutines;

import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Lambda;
import p573f.p579t.AbstractC9994b;
import p573f.p590w.p591b.AbstractC10035p;
import p573f.p590w.p592c.C10059q;
/* loaded from: classes2-dex2jar.jar:kotlin/coroutines/CoroutineContext$plus$1.class */
public final class CoroutineContext$plus$1 extends Lambda implements AbstractC10035p<CoroutineContext, CoroutineContext.AbstractC10476a, CoroutineContext> {
    public static final CoroutineContext$plus$1 INSTANCE = new CoroutineContext$plus$1();

    public CoroutineContext$plus$1() {
        super(2);
    }

    public final CoroutineContext invoke(CoroutineContext coroutineContext, CoroutineContext.AbstractC10476a aVar) {
        C10059q.m1637b(coroutineContext, "acc");
        C10059q.m1637b(aVar, "element");
        CoroutineContext minusKey = coroutineContext.minusKey(aVar.getKey());
        CoroutineContext coroutineContext2 = aVar;
        if (minusKey != EmptyCoroutineContext.INSTANCE) {
            AbstractC9994b bVar = (AbstractC9994b) minusKey.get(AbstractC9994b.f37159Y);
            if (bVar == null) {
                coroutineContext2 = new CombinedContext(minusKey, aVar);
            } else {
                CoroutineContext minusKey2 = minusKey.minusKey(AbstractC9994b.f37159Y);
                coroutineContext2 = minusKey2 == EmptyCoroutineContext.INSTANCE ? new CombinedContext(aVar, bVar) : new CombinedContext(new CombinedContext(minusKey2, aVar), bVar);
            }
        }
        return coroutineContext2;
    }
}
