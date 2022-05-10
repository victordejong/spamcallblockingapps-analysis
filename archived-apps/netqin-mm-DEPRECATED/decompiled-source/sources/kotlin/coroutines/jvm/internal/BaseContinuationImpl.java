package kotlin.coroutines.jvm.internal;

import java.io.Serializable;
import kotlin.Result;
import p573f.C9927e;
import p573f.C9946p;
import p573f.p579t.AbstractC9993a;
import p573f.p579t.p584d.C10006b;
import p573f.p579t.p585e.p586a.AbstractC10008b;
import p573f.p579t.p585e.p586a.C10010d;
import p573f.p579t.p585e.p586a.C10011e;
import p573f.p590w.p592c.C10059q;
/* loaded from: classes2-dex2jar.jar:kotlin/coroutines/jvm/internal/BaseContinuationImpl.class */
public abstract class BaseContinuationImpl implements AbstractC9993a<Object>, AbstractC10008b, Serializable {
    public final AbstractC9993a<Object> completion;

    public BaseContinuationImpl(AbstractC9993a<Object> aVar) {
        this.completion = aVar;
    }

    public AbstractC9993a<C9946p> create(AbstractC9993a<?> aVar) {
        C10059q.m1637b(aVar, "completion");
        throw new UnsupportedOperationException("create(Continuation) has not been overridden");
    }

    public AbstractC9993a<C9946p> create(Object obj, AbstractC9993a<?> aVar) {
        C10059q.m1637b(aVar, "completion");
        throw new UnsupportedOperationException("create(Any?;Continuation) has not been overridden");
    }

    public AbstractC10008b getCallerFrame() {
        AbstractC9993a<Object> aVar = this.completion;
        AbstractC9993a<Object> aVar2 = aVar;
        if (!(aVar instanceof AbstractC10008b)) {
            aVar2 = null;
        }
        return (AbstractC10008b) aVar2;
    }

    public final AbstractC9993a<Object> getCompletion() {
        return this.completion;
    }

    public StackTraceElement getStackTraceElement() {
        return C10010d.m1675c(this);
    }

    public abstract Object invokeSuspend(Object obj);

    public void releaseIntercepted() {
    }

    @Override // p573f.p579t.AbstractC9993a
    public final void resumeWith(Object obj) {
        Object invokeSuspend;
        BaseContinuationImpl baseContinuationImpl = this;
        while (true) {
            C10011e.m1674a(baseContinuationImpl);
            AbstractC9993a<Object> aVar = baseContinuationImpl.completion;
            if (aVar != null) {
                try {
                    invokeSuspend = baseContinuationImpl.invokeSuspend(obj);
                } catch (Throwable th) {
                    Result.C10473a aVar2 = Result.Companion;
                    obj = Result.m42790constructorimpl(C9927e.m1778a(th));
                }
                if (invokeSuspend != C10006b.m1684a()) {
                    Result.C10473a aVar3 = Result.Companion;
                    obj = Result.m42790constructorimpl(invokeSuspend);
                    baseContinuationImpl.releaseIntercepted();
                    if (aVar instanceof BaseContinuationImpl) {
                        baseContinuationImpl = (BaseContinuationImpl) aVar;
                    } else {
                        aVar.resumeWith(obj);
                        return;
                    }
                } else {
                    return;
                }
            } else {
                C10059q.m1646a();
                throw null;
            }
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Continuation at ");
        Object stackTraceElement = getStackTraceElement();
        if (stackTraceElement == null) {
            stackTraceElement = getClass().getName();
        }
        sb.append(stackTraceElement);
        return sb.toString();
    }
}
