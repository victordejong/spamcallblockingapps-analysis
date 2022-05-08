package kotlin.jvm.internal;

import java.io.ObjectStreamException;
import java.io.Serializable;
import java.lang.annotation.Annotation;
import java.util.List;
import java.util.Map;
import kotlin.SinceKotlin;
import kotlin.jvm.KotlinReflectionNotSupportedError;
import kotlin.reflect.KCallable;
import kotlin.reflect.KDeclarationContainer;
import kotlin.reflect.KParameter;
import kotlin.reflect.KType;
import kotlin.reflect.KTypeParameter;
import kotlin.reflect.KVisibility;
/* loaded from: classes2-dex2jar.jar:kotlin/jvm/internal/CallableReference.class */
public abstract class CallableReference implements KCallable, Serializable {
    @SinceKotlin(version = "1.1")
    public static final Object NO_RECEIVER = NoReceiver.INSTANCE;
    @SinceKotlin(version = "1.1")
    protected final Object receiver;
    private transient KCallable reflected;

    @SinceKotlin(version = "1.2")
    /* loaded from: classes2-dex2jar.jar:kotlin/jvm/internal/CallableReference$NoReceiver.class */
    private static class NoReceiver implements Serializable {
        private static final NoReceiver INSTANCE = new NoReceiver();

        private NoReceiver() {
        }

        private Object readResolve() throws ObjectStreamException {
            return INSTANCE;
        }
    }

    public CallableReference() {
        this(NO_RECEIVER);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @SinceKotlin(version = "1.1")
    public CallableReference(Object obj) {
        this.receiver = obj;
    }

    @Override // kotlin.reflect.KCallable
    public Object call(Object... objArr) {
        return getReflected().call(objArr);
    }

    @Override // kotlin.reflect.KCallable
    public Object callBy(Map map) {
        return getReflected().callBy(map);
    }

    @SinceKotlin(version = "1.1")
    public KCallable compute() {
        KCallable kCallable = this.reflected;
        KCallable kCallable2 = kCallable;
        if (kCallable == null) {
            kCallable2 = computeReflected();
            this.reflected = kCallable2;
        }
        return kCallable2;
    }

    protected abstract KCallable computeReflected();

    @Override // kotlin.reflect.KAnnotatedElement
    public List<Annotation> getAnnotations() {
        return getReflected().getAnnotations();
    }

    @SinceKotlin(version = "1.1")
    public Object getBoundReceiver() {
        return this.receiver;
    }

    @Override // kotlin.reflect.KCallable
    public String getName() {
        throw new AbstractMethodError();
    }

    public KDeclarationContainer getOwner() {
        throw new AbstractMethodError();
    }

    @Override // kotlin.reflect.KCallable
    public List<KParameter> getParameters() {
        return getReflected().getParameters();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @SinceKotlin(version = "1.1")
    public KCallable getReflected() {
        KCallable compute = compute();
        if (compute != this) {
            return compute;
        }
        throw new KotlinReflectionNotSupportedError();
    }

    @Override // kotlin.reflect.KCallable
    public KType getReturnType() {
        return getReflected().getReturnType();
    }

    public String getSignature() {
        throw new AbstractMethodError();
    }

    @Override // kotlin.reflect.KCallable
    @SinceKotlin(version = "1.1")
    public List<KTypeParameter> getTypeParameters() {
        return getReflected().getTypeParameters();
    }

    @Override // kotlin.reflect.KCallable
    @SinceKotlin(version = "1.1")
    public KVisibility getVisibility() {
        return getReflected().getVisibility();
    }

    @Override // kotlin.reflect.KCallable
    @SinceKotlin(version = "1.1")
    public boolean isAbstract() {
        return getReflected().isAbstract();
    }

    @Override // kotlin.reflect.KCallable
    @SinceKotlin(version = "1.1")
    public boolean isFinal() {
        return getReflected().isFinal();
    }

    @Override // kotlin.reflect.KCallable
    @SinceKotlin(version = "1.1")
    public boolean isOpen() {
        return getReflected().isOpen();
    }

    @Override // kotlin.reflect.KCallable
    @SinceKotlin(version = "1.3")
    public boolean isSuspend() {
        return getReflected().isSuspend();
    }
}
