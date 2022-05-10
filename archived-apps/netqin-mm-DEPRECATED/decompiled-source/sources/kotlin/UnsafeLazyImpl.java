package kotlin;

import java.io.Serializable;
import p573f.AbstractC9907c;
import p573f.C9941m;
import p573f.p590w.p591b.AbstractC10020a;
import p573f.p590w.p592c.C10059q;
/* loaded from: classes2-dex2jar.jar:kotlin/UnsafeLazyImpl.class */
public final class UnsafeLazyImpl<T> implements AbstractC9907c<T>, Serializable {
    public Object _value = C9941m.f37133a;
    public AbstractC10020a<? extends T> initializer;

    public UnsafeLazyImpl(AbstractC10020a<? extends T> aVar) {
        C10059q.m1637b(aVar, "initializer");
        this.initializer = aVar;
    }

    private final Object writeReplace() {
        return new InitializedLazyImpl(getValue());
    }

    @Override // p573f.AbstractC9907c
    public T getValue() {
        if (this._value == C9941m.f37133a) {
            AbstractC10020a<? extends T> aVar = this.initializer;
            if (aVar != null) {
                this._value = aVar.invoke();
                this.initializer = null;
            } else {
                C10059q.m1646a();
                throw null;
            }
        }
        return (T) this._value;
    }

    public boolean isInitialized() {
        return this._value != C9941m.f37133a;
    }

    public String toString() {
        return isInitialized() ? String.valueOf(getValue()) : "Lazy value not initialized yet.";
    }
}
