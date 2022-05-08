package org.mozilla.javascript;

import java.io.Serializable;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.mozilla.javascript.JavaAdapter;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/ClassCache.class */
public class ClassCache implements Serializable {
    private static final Object AKEY = "ClassCache";
    private static final long serialVersionUID = -8866246036237312215L;
    private Scriptable associatedScope;
    private volatile boolean cachingIsEnabled = true;
    private transient Map<JavaAdapter.JavaAdapterSignature, Class<?>> classAdapterCache;
    private transient Map<Class<?>, JavaMembers> classTable;
    private int generatedClassSerial;
    private transient Map<Class<?>, Object> interfaceAdapterCache;

    public static ClassCache get(Scriptable scriptable) {
        ClassCache classCache = (ClassCache) ScriptableObject.getTopScopeValue(scriptable, AKEY);
        if (classCache != null) {
            return classCache;
        }
        throw new RuntimeException("Can't find top level scope for ClassCache.get");
    }

    public boolean associate(ScriptableObject scriptableObject) {
        if (scriptableObject.getParentScope() != null) {
            throw new IllegalArgumentException();
        } else if (this != scriptableObject.associateValue(AKEY, this)) {
            return false;
        } else {
            this.associatedScope = scriptableObject;
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void cacheInterfaceAdapter(Class<?> cls, Object obj) {
        synchronized (this) {
            if (this.cachingIsEnabled) {
                if (this.interfaceAdapterCache == null) {
                    this.interfaceAdapterCache = new ConcurrentHashMap(16, 0.75f, 1);
                }
                this.interfaceAdapterCache.put(cls, obj);
            }
        }
    }

    public void clearCaches() {
        synchronized (this) {
            this.classTable = null;
            this.classAdapterCache = null;
            this.interfaceAdapterCache = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Scriptable getAssociatedScope() {
        return this.associatedScope;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Map<Class<?>, JavaMembers> getClassCacheMap() {
        if (this.classTable == null) {
            this.classTable = new ConcurrentHashMap(16, 0.75f, 1);
        }
        return this.classTable;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Object getInterfaceAdapter(Class<?> cls) {
        return this.interfaceAdapterCache == null ? null : this.interfaceAdapterCache.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Map<JavaAdapter.JavaAdapterSignature, Class<?>> getInterfaceAdapterCacheMap() {
        if (this.classAdapterCache == null) {
            this.classAdapterCache = new ConcurrentHashMap(16, 0.75f, 1);
        }
        return this.classAdapterCache;
    }

    public final boolean isCachingEnabled() {
        return this.cachingIsEnabled;
    }

    @Deprecated
    public boolean isInvokerOptimizationEnabled() {
        return false;
    }

    public final int newClassSerialNumber() {
        int i;
        synchronized (this) {
            i = this.generatedClassSerial + 1;
            this.generatedClassSerial = i;
        }
        return i;
    }

    public void setCachingEnabled(boolean z) {
        synchronized (this) {
            if (z != this.cachingIsEnabled) {
                if (!z) {
                    clearCaches();
                }
                this.cachingIsEnabled = z;
            }
        }
    }

    @Deprecated
    public void setInvokerOptimizationEnabled(boolean z) {
        synchronized (this) {
        }
    }
}
