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
    @SinceKotlin
    public static final Object NO_RECEIVER = NoReceiver.f20734f;
    @SinceKotlin
    private final boolean isTopLevel;
    @SinceKotlin
    private final String name;
    @SinceKotlin
    private final Class owner;
    @SinceKotlin
    protected final Object receiver;
    private transient KCallable reflected;
    @SinceKotlin
    private final String signature;

    @SinceKotlin
    /* loaded from: classes2-dex2jar.jar:kotlin/jvm/internal/CallableReference$NoReceiver.class */
    private static class NoReceiver implements Serializable {

        /* renamed from: f */
        private static final NoReceiver f20734f = new NoReceiver();

        private NoReceiver() {
        }

        private Object readResolve() throws ObjectStreamException {
            return f20734f;
        }
    }

    public CallableReference() {
        this(NO_RECEIVER);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @SinceKotlin
    public CallableReference(Object obj) {
        this(obj, null, null, null, false);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @SinceKotlin
    public CallableReference(Object obj, Class cls, String str, String str2, boolean z) {
        this.receiver = obj;
        this.owner = cls;
        this.name = str;
        this.signature = str2;
        this.isTopLevel = z;
    }

    @Override // kotlin.reflect.KCallable
    public Object call(Object... objArr) {
        return getReflected().call(objArr);
    }

    @Override // kotlin.reflect.KCallable
    public Object callBy(Map map) {
        return getReflected().callBy(map);
    }

    @SinceKotlin
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

    @SinceKotlin
    public Object getBoundReceiver() {
        return this.receiver;
    }

    public String getName() {
        return this.name;
    }

    public KDeclarationContainer getOwner() {
        Class cls = this.owner;
        return cls == null ? null : this.isTopLevel ? Reflection.m1808c(cls) : Reflection.m1809b(cls);
    }

    @Override // kotlin.reflect.KCallable
    public List<KParameter> getParameters() {
        return getReflected().getParameters();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @SinceKotlin
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
        return this.signature;
    }

    @Override // kotlin.reflect.KCallable
    @SinceKotlin
    public List<KTypeParameter> getTypeParameters() {
        return getReflected().getTypeParameters();
    }

    @Override // kotlin.reflect.KCallable
    @SinceKotlin
    public KVisibility getVisibility() {
        return getReflected().getVisibility();
    }

    @Override // kotlin.reflect.KCallable
    @SinceKotlin
    public boolean isAbstract() {
        return getReflected().isAbstract();
    }

    @Override // kotlin.reflect.KCallable
    @SinceKotlin
    public boolean isFinal() {
        return getReflected().isFinal();
    }

    @Override // kotlin.reflect.KCallable
    @SinceKotlin
    public boolean isOpen() {
        return getReflected().isOpen();
    }

    @Override // kotlin.reflect.KCallable
    @SinceKotlin
    public boolean isSuspend() {
        return getReflected().isSuspend();
    }
}
