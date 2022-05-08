package org.mozilla.javascript;

import java.lang.reflect.Field;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/FieldAndMethods.class */
public class FieldAndMethods extends NativeJavaMethod {
    static final long serialVersionUID = -9222428244284796755L;
    Field field;
    Object javaObject;

    /* JADX INFO: Access modifiers changed from: package-private */
    public FieldAndMethods(Scriptable scriptable, MemberBox[] memberBoxArr, Field field) {
        super(memberBoxArr);
        this.field = field;
        setParentScope(scriptable);
        setPrototype(ScriptableObject.getFunctionPrototype(scriptable));
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public Object getDefaultValue(Class<?> cls) {
        if (cls == ScriptRuntime.FunctionClass) {
            return this;
        }
        try {
            Object obj = this.field.get(this.javaObject);
            Class<?> type = this.field.getType();
            Context context = Context.getContext();
            Object wrap = context.getWrapFactory().wrap(context, this, obj, type);
            Object obj2 = wrap;
            if (wrap instanceof Scriptable) {
                obj2 = ((Scriptable) wrap).getDefaultValue(cls);
            }
            return obj2;
        } catch (IllegalAccessException e) {
            throw Context.reportRuntimeError1("msg.java.internal.private", this.field.getName());
        }
    }
}
