package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import org.simpleframework.xml.strategy.Type;
/* loaded from: classes2-dex2jar.jar:org/simpleframework/xml/core/ClassType.class */
class ClassType implements Type {
    private final Class type;

    public ClassType(Class cls) {
        this.type = cls;
    }

    @Override // org.simpleframework.xml.strategy.Type
    public <T extends Annotation> T getAnnotation(Class<T> cls) {
        return null;
    }

    @Override // org.simpleframework.xml.strategy.Type
    public Class getType() {
        return this.type;
    }

    @Override // org.simpleframework.xml.strategy.Type
    public String toString() {
        return this.type.toString();
    }
}
