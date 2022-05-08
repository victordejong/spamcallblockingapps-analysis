package org.mozilla.javascript;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/Delegator.class */
public class Delegator implements Function {
    protected Scriptable obj;

    public Delegator() {
        this.obj = null;
    }

    public Delegator(Scriptable scriptable) {
        this.obj = null;
        this.obj = scriptable;
    }

    @Override // org.mozilla.javascript.Function, org.mozilla.javascript.Callable
    public Object call(Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        return ((Function) this.obj).call(context, scriptable, scriptable2, objArr);
    }

    @Override // org.mozilla.javascript.Function
    public Scriptable construct(Context context, Scriptable scriptable, Object[] objArr) {
        if (this.obj != null) {
            return ((Function) this.obj).construct(context, scriptable, objArr);
        }
        Delegator newInstance = newInstance();
        newInstance.setDelegee(objArr.length == 0 ? new NativeObject() : ScriptRuntime.toObject(context, scriptable, objArr[0]));
        return newInstance;
    }

    @Override // org.mozilla.javascript.Scriptable
    public void delete(int i) {
        this.obj.delete(i);
    }

    @Override // org.mozilla.javascript.Scriptable
    public void delete(String str) {
        this.obj.delete(str);
    }

    @Override // org.mozilla.javascript.Scriptable
    public Object get(int i, Scriptable scriptable) {
        return this.obj.get(i, scriptable);
    }

    @Override // org.mozilla.javascript.Scriptable
    public Object get(String str, Scriptable scriptable) {
        return this.obj.get(str, scriptable);
    }

    @Override // org.mozilla.javascript.Scriptable
    public String getClassName() {
        return this.obj.getClassName();
    }

    @Override // org.mozilla.javascript.Scriptable
    public Object getDefaultValue(Class<?> cls) {
        return (cls == null || cls == ScriptRuntime.ScriptableClass || cls == ScriptRuntime.FunctionClass) ? this : this.obj.getDefaultValue(cls);
    }

    public Scriptable getDelegee() {
        return this.obj;
    }

    @Override // org.mozilla.javascript.Scriptable
    public Object[] getIds() {
        return this.obj.getIds();
    }

    @Override // org.mozilla.javascript.Scriptable
    public Scriptable getParentScope() {
        return this.obj.getParentScope();
    }

    @Override // org.mozilla.javascript.Scriptable
    public Scriptable getPrototype() {
        return this.obj.getPrototype();
    }

    @Override // org.mozilla.javascript.Scriptable
    public boolean has(int i, Scriptable scriptable) {
        return this.obj.has(i, scriptable);
    }

    @Override // org.mozilla.javascript.Scriptable
    public boolean has(String str, Scriptable scriptable) {
        return this.obj.has(str, scriptable);
    }

    @Override // org.mozilla.javascript.Scriptable
    public boolean hasInstance(Scriptable scriptable) {
        return this.obj.hasInstance(scriptable);
    }

    protected Delegator newInstance() {
        try {
            return (Delegator) getClass().newInstance();
        } catch (Exception e) {
            throw Context.throwAsScriptRuntimeEx(e);
        }
    }

    @Override // org.mozilla.javascript.Scriptable
    public void put(int i, Scriptable scriptable, Object obj) {
        this.obj.put(i, scriptable, obj);
    }

    @Override // org.mozilla.javascript.Scriptable
    public void put(String str, Scriptable scriptable, Object obj) {
        this.obj.put(str, scriptable, obj);
    }

    public void setDelegee(Scriptable scriptable) {
        this.obj = scriptable;
    }

    @Override // org.mozilla.javascript.Scriptable
    public void setParentScope(Scriptable scriptable) {
        this.obj.setParentScope(scriptable);
    }

    @Override // org.mozilla.javascript.Scriptable
    public void setPrototype(Scriptable scriptable) {
        this.obj.setPrototype(scriptable);
    }
}
