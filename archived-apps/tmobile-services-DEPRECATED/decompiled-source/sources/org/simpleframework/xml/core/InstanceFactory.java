package org.simpleframework.xml.core;

import java.lang.reflect.Constructor;
import org.simpleframework.xml.strategy.Value;
import org.simpleframework.xml.util.Cache;
import org.simpleframework.xml.util.ConcurrentCache;
/* loaded from: classes2-dex2jar.jar:org/simpleframework/xml/core/InstanceFactory.class */
class InstanceFactory {
    private final Cache<Constructor> cache = new ConcurrentCache();

    /* loaded from: classes2-dex2jar.jar:org/simpleframework/xml/core/InstanceFactory$ClassInstance.class */
    private class ClassInstance implements Instance {
        private Class type;
        private Object value;

        public ClassInstance(Class cls) {
            this.type = cls;
        }

        @Override // org.simpleframework.xml.core.Instance
        public Object getInstance() throws Exception {
            if (this.value == null) {
                this.value = InstanceFactory.this.getObject(this.type);
            }
            return this.value;
        }

        @Override // org.simpleframework.xml.core.Instance
        public Class getType() {
            return this.type;
        }

        @Override // org.simpleframework.xml.core.Instance
        public boolean isReference() {
            return false;
        }

        @Override // org.simpleframework.xml.core.Instance
        public Object setInstance(Object obj) throws Exception {
            this.value = obj;
            return obj;
        }
    }

    /* loaded from: classes2-dex2jar.jar:org/simpleframework/xml/core/InstanceFactory$ValueInstance.class */
    private class ValueInstance implements Instance {
        private final Class type;
        private final Value value;

        public ValueInstance(Value value) {
            this.type = value.getType();
            this.value = value;
        }

        @Override // org.simpleframework.xml.core.Instance
        public Object getInstance() throws Exception {
            if (this.value.isReference()) {
                return this.value.getValue();
            }
            Object object = InstanceFactory.this.getObject(this.type);
            Value value = this.value;
            if (value != null) {
                value.setValue(object);
            }
            return object;
        }

        @Override // org.simpleframework.xml.core.Instance
        public Class getType() {
            return this.type;
        }

        @Override // org.simpleframework.xml.core.Instance
        public boolean isReference() {
            return this.value.isReference();
        }

        @Override // org.simpleframework.xml.core.Instance
        public Object setInstance(Object obj) {
            Value value = this.value;
            if (value != null) {
                value.setValue(obj);
            }
            return obj;
        }
    }

    public Instance getInstance(Class cls) {
        return new ClassInstance(cls);
    }

    public Instance getInstance(Value value) {
        return new ValueInstance(value);
    }

    protected Object getObject(Class cls) throws Exception {
        Constructor fetch = this.cache.fetch(cls);
        Constructor constructor = fetch;
        if (fetch == null) {
            constructor = cls.getDeclaredConstructor(new Class[0]);
            if (!constructor.isAccessible()) {
                constructor.setAccessible(true);
            }
            this.cache.cache(cls, constructor);
        }
        return constructor.newInstance(new Object[0]);
    }
}
