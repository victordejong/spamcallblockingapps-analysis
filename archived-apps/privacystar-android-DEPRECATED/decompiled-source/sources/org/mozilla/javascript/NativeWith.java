package org.mozilla.javascript;

import java.io.Serializable;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/NativeWith.class */
public class NativeWith implements Scriptable, IdFunctionCall, Serializable {
    private static final Object FTAG = "With";
    private static final int Id_constructor = 1;
    private static final long serialVersionUID = 1;
    protected Scriptable parent;
    protected Scriptable prototype;

    private NativeWith() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public NativeWith(Scriptable scriptable, Scriptable scriptable2) {
        this.parent = scriptable;
        this.prototype = scriptable2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void init(Scriptable scriptable, boolean z) {
        NativeWith nativeWith = new NativeWith();
        nativeWith.setParentScope(scriptable);
        nativeWith.setPrototype(ScriptableObject.getObjectPrototype(scriptable));
        IdFunctionObject idFunctionObject = new IdFunctionObject(nativeWith, FTAG, 1, "With", 0, scriptable);
        idFunctionObject.markAsConstructor(nativeWith);
        if (z) {
            idFunctionObject.sealObject();
        }
        idFunctionObject.exportAsScopeProperty();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean isWithFunction(Object obj) {
        if (!(obj instanceof IdFunctionObject)) {
            return false;
        }
        IdFunctionObject idFunctionObject = (IdFunctionObject) obj;
        boolean z = false;
        if (idFunctionObject.hasTag(FTAG)) {
            z = false;
            if (idFunctionObject.methodId() == 1) {
                z = true;
            }
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object newWithSpecial(Context context, Scriptable scriptable, Object[] objArr) {
        ScriptRuntime.checkDeprecated(context, "With");
        Scriptable topLevelScope = ScriptableObject.getTopLevelScope(scriptable);
        NativeWith nativeWith = new NativeWith();
        nativeWith.setPrototype(objArr.length == 0 ? ScriptableObject.getObjectPrototype(topLevelScope) : ScriptRuntime.toObject(context, topLevelScope, objArr[0]));
        nativeWith.setParentScope(topLevelScope);
        return nativeWith;
    }

    @Override // org.mozilla.javascript.Scriptable
    public void delete(int i) {
        this.prototype.delete(i);
    }

    @Override // org.mozilla.javascript.Scriptable
    public void delete(String str) {
        this.prototype.delete(str);
    }

    @Override // org.mozilla.javascript.IdFunctionCall
    public Object execIdCall(IdFunctionObject idFunctionObject, Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        if (!idFunctionObject.hasTag(FTAG) || idFunctionObject.methodId() != 1) {
            throw idFunctionObject.unknown();
        }
        throw Context.reportRuntimeError1("msg.cant.call.indirect", "With");
    }

    @Override // org.mozilla.javascript.Scriptable
    public Object get(int i, Scriptable scriptable) {
        Scriptable scriptable2 = scriptable;
        if (scriptable == this) {
            scriptable2 = this.prototype;
        }
        return this.prototype.get(i, scriptable2);
    }

    @Override // org.mozilla.javascript.Scriptable
    public Object get(String str, Scriptable scriptable) {
        Scriptable scriptable2 = scriptable;
        if (scriptable == this) {
            scriptable2 = this.prototype;
        }
        return this.prototype.get(str, scriptable2);
    }

    @Override // org.mozilla.javascript.Scriptable
    public String getClassName() {
        return "With";
    }

    @Override // org.mozilla.javascript.Scriptable
    public Object getDefaultValue(Class<?> cls) {
        return this.prototype.getDefaultValue(cls);
    }

    @Override // org.mozilla.javascript.Scriptable
    public Object[] getIds() {
        return this.prototype.getIds();
    }

    @Override // org.mozilla.javascript.Scriptable
    public Scriptable getParentScope() {
        return this.parent;
    }

    @Override // org.mozilla.javascript.Scriptable
    public Scriptable getPrototype() {
        return this.prototype;
    }

    @Override // org.mozilla.javascript.Scriptable
    public boolean has(int i, Scriptable scriptable) {
        return this.prototype.has(i, this.prototype);
    }

    @Override // org.mozilla.javascript.Scriptable
    public boolean has(String str, Scriptable scriptable) {
        return this.prototype.has(str, this.prototype);
    }

    @Override // org.mozilla.javascript.Scriptable
    public boolean hasInstance(Scriptable scriptable) {
        return this.prototype.hasInstance(scriptable);
    }

    @Override // org.mozilla.javascript.Scriptable
    public void put(int i, Scriptable scriptable, Object obj) {
        Scriptable scriptable2 = scriptable;
        if (scriptable == this) {
            scriptable2 = this.prototype;
        }
        this.prototype.put(i, scriptable2, obj);
    }

    @Override // org.mozilla.javascript.Scriptable
    public void put(String str, Scriptable scriptable, Object obj) {
        Scriptable scriptable2 = scriptable;
        if (scriptable == this) {
            scriptable2 = this.prototype;
        }
        this.prototype.put(str, scriptable2, obj);
    }

    @Override // org.mozilla.javascript.Scriptable
    public void setParentScope(Scriptable scriptable) {
        this.parent = scriptable;
    }

    @Override // org.mozilla.javascript.Scriptable
    public void setPrototype(Scriptable scriptable) {
        this.prototype = scriptable;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Object updateDotQuery(boolean z) {
        throw new IllegalStateException();
    }
}
