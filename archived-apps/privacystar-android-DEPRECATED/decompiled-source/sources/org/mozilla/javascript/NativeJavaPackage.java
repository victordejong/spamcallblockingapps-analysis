package org.mozilla.javascript;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/NativeJavaPackage.class */
public class NativeJavaPackage extends ScriptableObject {
    static final long serialVersionUID = 7445054382212031523L;
    private transient ClassLoader classLoader;
    private Set<String> negativeCache;
    private String packageName;

    @Deprecated
    public NativeJavaPackage(String str) {
        this(false, str, Context.getCurrentContext().getApplicationClassLoader());
    }

    @Deprecated
    public NativeJavaPackage(String str, ClassLoader classLoader) {
        this(false, str, classLoader);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public NativeJavaPackage(boolean z, String str, ClassLoader classLoader) {
        this.negativeCache = null;
        this.packageName = str;
        this.classLoader = classLoader;
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        this.classLoader = Context.getCurrentContext().getApplicationClassLoader();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof NativeJavaPackage)) {
            return false;
        }
        NativeJavaPackage nativeJavaPackage = (NativeJavaPackage) obj;
        boolean z = false;
        if (this.packageName.equals(nativeJavaPackage.packageName)) {
            z = false;
            if (this.classLoader == nativeJavaPackage.classLoader) {
                z = true;
            }
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public NativeJavaPackage forcePackage(String str, Scriptable scriptable) {
        String str2;
        Object obj = super.get(str, this);
        if (obj != null && (obj instanceof NativeJavaPackage)) {
            return (NativeJavaPackage) obj;
        }
        if (this.packageName.length() == 0) {
            str2 = str;
        } else {
            str2 = this.packageName + "." + str;
        }
        NativeJavaPackage nativeJavaPackage = new NativeJavaPackage(true, str2, this.classLoader);
        ScriptRuntime.setObjectProtoAndParent(nativeJavaPackage, scriptable);
        super.put(str, this, nativeJavaPackage);
        return nativeJavaPackage;
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public Object get(int i, Scriptable scriptable) {
        return NOT_FOUND;
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public Object get(String str, Scriptable scriptable) {
        return getPkgProperty(str, scriptable, true);
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public String getClassName() {
        return "JavaPackage";
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public Object getDefaultValue(Class<?> cls) {
        return toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0096, code lost:
        if (r0.visibleToScripts(r9) != false) goto L_0x0099;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object getPkgProperty(java.lang.String r6, org.mozilla.javascript.Scriptable r7, boolean r8) {
        /*
            Method dump skipped, instructions count: 322
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.NativeJavaPackage.getPkgProperty(java.lang.String, org.mozilla.javascript.Scriptable, boolean):java.lang.Object");
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public boolean has(int i, Scriptable scriptable) {
        return false;
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public boolean has(String str, Scriptable scriptable) {
        return true;
    }

    public int hashCode() {
        return this.packageName.hashCode() ^ (this.classLoader == null ? 0 : this.classLoader.hashCode());
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public void put(int i, Scriptable scriptable, Object obj) {
        throw Context.reportRuntimeError0("msg.pkg.int");
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public void put(String str, Scriptable scriptable, Object obj) {
    }

    public String toString() {
        return "[JavaPackage " + this.packageName + "]";
    }
}
