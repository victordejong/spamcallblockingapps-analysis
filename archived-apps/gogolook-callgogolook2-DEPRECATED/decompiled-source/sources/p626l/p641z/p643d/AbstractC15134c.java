package p626l.p641z.p643d;

import java.io.ObjectStreamException;
import java.io.Serializable;
import java.lang.annotation.Annotation;
import java.util.List;
import java.util.Map;
import p626l.p629c0.AbstractC14899b;
import p626l.p629c0.AbstractC14902e;
import p626l.p629c0.AbstractC14913l;
import p626l.p629c0.EnumC14914m;
import p626l.p641z.C15106b;
/* renamed from: l.z.d.c */
/* loaded from: classes3-dex2jar.jar:l/z/d/c.class */
public abstract class AbstractC15134c implements AbstractC14899b, Serializable {
    public static final Object NO_RECEIVER = C15135a.f33132a;
    public final Object receiver;
    public transient AbstractC14899b reflected;

    /* renamed from: l.z.d.c$a */
    /* loaded from: classes3-dex2jar.jar:l/z/d/c$a.class */
    public static class C15135a implements Serializable {

        /* renamed from: a */
        public static final C15135a f33132a = new C15135a();

        private Object readResolve() throws ObjectStreamException {
            return f33132a;
        }
    }

    public AbstractC15134c() {
        this(NO_RECEIVER);
    }

    public AbstractC15134c(Object obj) {
        this.receiver = obj;
    }

    @Override // p626l.p629c0.AbstractC14899b
    public Object call(Object... objArr) {
        return getReflected().call(objArr);
    }

    @Override // p626l.p629c0.AbstractC14899b
    public Object callBy(Map map) {
        return getReflected().callBy(map);
    }

    public AbstractC14899b compute() {
        AbstractC14899b bVar = this.reflected;
        AbstractC14899b bVar2 = bVar;
        if (bVar == null) {
            bVar2 = computeReflected();
            this.reflected = bVar2;
        }
        return bVar2;
    }

    public abstract AbstractC14899b computeReflected();

    @Override // p626l.p629c0.AbstractC14898a
    public List<Annotation> getAnnotations() {
        return getReflected().getAnnotations();
    }

    public Object getBoundReceiver() {
        return this.receiver;
    }

    public String getName() {
        throw new AbstractMethodError();
    }

    public AbstractC14902e getOwner() {
        throw new AbstractMethodError();
    }

    @Override // p626l.p629c0.AbstractC14899b
    public List<Object> getParameters() {
        return getReflected().getParameters();
    }

    public AbstractC14899b getReflected() {
        AbstractC14899b compute = compute();
        if (compute != this) {
            return compute;
        }
        throw new C15106b();
    }

    @Override // p626l.p629c0.AbstractC14899b
    public AbstractC14913l getReturnType() {
        return getReflected().getReturnType();
    }

    public String getSignature() {
        throw new AbstractMethodError();
    }

    @Override // p626l.p629c0.AbstractC14899b
    public List<Object> getTypeParameters() {
        return getReflected().getTypeParameters();
    }

    @Override // p626l.p629c0.AbstractC14899b
    public EnumC14914m getVisibility() {
        return getReflected().getVisibility();
    }

    @Override // p626l.p629c0.AbstractC14899b
    public boolean isAbstract() {
        return getReflected().isAbstract();
    }

    @Override // p626l.p629c0.AbstractC14899b
    public boolean isFinal() {
        return getReflected().isFinal();
    }

    @Override // p626l.p629c0.AbstractC14899b
    public boolean isOpen() {
        return getReflected().isOpen();
    }

    @Override // p626l.p629c0.AbstractC14899b
    public boolean isSuspend() {
        return getReflected().isSuspend();
    }
}
