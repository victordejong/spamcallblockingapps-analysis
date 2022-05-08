package org.mozilla.javascript;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/WrapFactory.class */
public class WrapFactory {
    private boolean javaPrimitiveWrap = true;

    public final boolean isJavaPrimitiveWrap() {
        return this.javaPrimitiveWrap;
    }

    public final void setJavaPrimitiveWrap(boolean z) {
        Context currentContext = Context.getCurrentContext();
        if (currentContext != null && currentContext.isSealed()) {
            Context.onSealedMutation();
        }
        this.javaPrimitiveWrap = z;
    }

    public Object wrap(Context context, Scriptable scriptable, Object obj, Class<?> cls) {
        if (obj == null || obj == Undefined.instance || (obj instanceof Scriptable)) {
            return obj;
        }
        if (cls != null && cls.isPrimitive()) {
            return cls == Void.TYPE ? Undefined.instance : cls == Character.TYPE ? Integer.valueOf(((Character) obj).charValue()) : obj;
        }
        if (!isJavaPrimitiveWrap()) {
            if ((obj instanceof String) || (obj instanceof Number) || (obj instanceof Boolean)) {
                return obj;
            }
            if (obj instanceof Character) {
                return String.valueOf(((Character) obj).charValue());
            }
        }
        return obj.getClass().isArray() ? NativeJavaArray.wrap(scriptable, obj) : wrapAsJavaObject(context, scriptable, obj, cls);
    }

    public Scriptable wrapAsJavaObject(Context context, Scriptable scriptable, Object obj, Class<?> cls) {
        return new NativeJavaObject(scriptable, obj, cls);
    }

    public Scriptable wrapJavaClass(Context context, Scriptable scriptable, Class<?> cls) {
        return new NativeJavaClass(scriptable, cls);
    }

    public Scriptable wrapNewObject(Context context, Scriptable scriptable, Object obj) {
        return obj instanceof Scriptable ? (Scriptable) obj : obj.getClass().isArray() ? NativeJavaArray.wrap(scriptable, obj) : wrapAsJavaObject(context, scriptable, obj, null);
    }
}
