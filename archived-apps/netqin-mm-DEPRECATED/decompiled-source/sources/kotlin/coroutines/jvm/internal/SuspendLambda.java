package kotlin.coroutines.jvm.internal;

import p573f.p579t.AbstractC9993a;
import p573f.p590w.p592c.AbstractC10058p;
import p573f.p590w.p592c.C10059q;
import p573f.p590w.p592c.C10062t;
/* loaded from: classes2-dex2jar.jar:kotlin/coroutines/jvm/internal/SuspendLambda.class */
public abstract class SuspendLambda extends ContinuationImpl implements AbstractC10058p<Object> {
    public final int arity;

    public SuspendLambda(int i) {
        this(i, null);
    }

    public SuspendLambda(int i, AbstractC9993a<Object> aVar) {
        super(aVar);
        this.arity = i;
    }

    @Override // p573f.p590w.p592c.AbstractC10058p
    public int getArity() {
        return this.arity;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public String toString() {
        String str;
        if (getCompletion() == null) {
            str = C10062t.m1630a(this);
            C10059q.m1642a((Object) str, "Reflection.renderLambdaToString(this)");
        } else {
            str = super.toString();
        }
        return str;
    }
}
