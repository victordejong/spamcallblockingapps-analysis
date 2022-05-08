package org.junit.runners.model;

import java.lang.reflect.Modifier;
import java.util.List;
import org.junit.runners.model.FrameworkMember;
/* loaded from: classes2-dex2jar.jar:org/junit/runners/model/FrameworkMember.class */
public abstract class FrameworkMember<T extends FrameworkMember<T>> implements Annotatable {
    public abstract Class<?> getDeclaringClass();

    protected abstract int getModifiers();

    public abstract String getName();

    public abstract Class<?> getType();

    public boolean isPublic() {
        return Modifier.isPublic(getModifiers());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isShadowedBy(List<T> list) {
        for (T t : list) {
            if (isShadowedBy((FrameworkMember<T>) t)) {
                return true;
            }
        }
        return false;
    }

    abstract boolean isShadowedBy(T t);

    public boolean isStatic() {
        return Modifier.isStatic(getModifiers());
    }
}
