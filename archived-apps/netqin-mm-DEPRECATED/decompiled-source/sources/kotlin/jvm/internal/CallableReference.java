package kotlin.jvm.internal;

import java.io.ObjectStreamException;
import java.io.Serializable;
import java.lang.annotation.Annotation;
import java.util.List;
import java.util.Map;
import kotlin.jvm.KotlinReflectionNotSupportedError;
import kotlin.reflect.KVisibility;
import p573f.p574a0.AbstractC9869b;
import p573f.p574a0.AbstractC9871d;
import p573f.p574a0.AbstractC9889n;
/* loaded from: classes2-dex2jar.jar:kotlin/jvm/internal/CallableReference.class */
public abstract class CallableReference implements AbstractC9869b, Serializable {
    public static final Object NO_RECEIVER = NoReceiver.INSTANCE;
    public final Object receiver;
    public transient AbstractC9869b reflected;

    /* loaded from: classes2-dex2jar.jar:kotlin/jvm/internal/CallableReference$NoReceiver.class */
    public static class NoReceiver implements Serializable {
        public static final NoReceiver INSTANCE = new NoReceiver();

        private Object readResolve() throws ObjectStreamException {
            return INSTANCE;
        }
    }

    public CallableReference() {
        this(NO_RECEIVER);
    }

    public CallableReference(Object obj) {
        this.receiver = obj;
    }

    @Override // p573f.p574a0.AbstractC9869b
    public Object call(Object... objArr) {
        return getReflected().call(objArr);
    }

    @Override // p573f.p574a0.AbstractC9869b
    public Object callBy(Map map) {
        return getReflected().callBy(map);
    }

    public AbstractC9869b compute() {
        AbstractC9869b bVar = this.reflected;
        AbstractC9869b bVar2 = bVar;
        if (bVar == null) {
            bVar2 = computeReflected();
            this.reflected = bVar2;
        }
        return bVar2;
    }

    public abstract AbstractC9869b computeReflected();

    @Override // p573f.p574a0.AbstractC9868a
    public List<Annotation> getAnnotations() {
        return getReflected().getAnnotations();
    }

    public Object getBoundReceiver() {
        return this.receiver;
    }

    public String getName() {
        throw new AbstractMethodError();
    }

    public AbstractC9871d getOwner() {
        throw new AbstractMethodError();
    }

    @Override // p573f.p574a0.AbstractC9869b
    public List<Object> getParameters() {
        return getReflected().getParameters();
    }

    public AbstractC9869b getReflected() {
        AbstractC9869b compute = compute();
        if (compute != this) {
            return compute;
        }
        throw new KotlinReflectionNotSupportedError();
    }

    @Override // p573f.p574a0.AbstractC9869b
    public AbstractC9889n getReturnType() {
        return getReflected().getReturnType();
    }

    public String getSignature() {
        throw new AbstractMethodError();
    }

    @Override // p573f.p574a0.AbstractC9869b
    public List<Object> getTypeParameters() {
        return getReflected().getTypeParameters();
    }

    @Override // p573f.p574a0.AbstractC9869b
    public KVisibility getVisibility() {
        return getReflected().getVisibility();
    }

    @Override // p573f.p574a0.AbstractC9869b
    public boolean isAbstract() {
        return getReflected().isAbstract();
    }

    @Override // p573f.p574a0.AbstractC9869b
    public boolean isFinal() {
        return getReflected().isFinal();
    }

    @Override // p573f.p574a0.AbstractC9869b
    public boolean isOpen() {
        return getReflected().isOpen();
    }

    @Override // p573f.p574a0.AbstractC9869b
    public boolean isSuspend() {
        return getReflected().isSuspend();
    }
}
