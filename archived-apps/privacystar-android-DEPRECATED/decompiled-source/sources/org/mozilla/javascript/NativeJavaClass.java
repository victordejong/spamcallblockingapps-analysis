package org.mozilla.javascript;

import java.lang.reflect.Array;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/NativeJavaClass.class */
public class NativeJavaClass extends NativeJavaObject implements Function {
    static final String javaClassPropertyName = "__javaObject__";
    static final long serialVersionUID = -6460763940409461664L;
    private Map<String, FieldAndMethods> staticFieldAndMethods;

    public NativeJavaClass() {
    }

    public NativeJavaClass(Scriptable scriptable, Class<?> cls) {
        this(scriptable, cls, false);
    }

    public NativeJavaClass(Scriptable scriptable, Class<?> cls, boolean z) {
        super(scriptable, cls, null, z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object constructInternal(Object[] objArr, MemberBox memberBox) {
        Object[] objArr2;
        Object obj;
        Class<?>[] clsArr = memberBox.argTypes;
        int i = 0;
        if (!memberBox.vararg) {
            Object[] objArr3 = objArr;
            while (true) {
                objArr2 = objArr3;
                if (i >= objArr3.length) {
                    break;
                }
                Object obj2 = objArr3[i];
                Object jsToJava = Context.jsToJava(obj2, clsArr[i]);
                objArr3 = objArr3;
                if (jsToJava != obj2) {
                    objArr3 = objArr3;
                    if (objArr3 == objArr) {
                        objArr3 = (Object[]) objArr.clone();
                    }
                    objArr3[i] = jsToJava;
                }
                i++;
            }
        } else {
            objArr2 = new Object[clsArr.length];
            for (int i2 = 0; i2 < clsArr.length - 1; i2++) {
                objArr2[i2] = Context.jsToJava(objArr[i2], clsArr[i2]);
            }
            if (objArr.length != clsArr.length || (objArr[objArr.length - 1] != null && !(objArr[objArr.length - 1] instanceof NativeArray) && !(objArr[objArr.length - 1] instanceof NativeJavaArray))) {
                Class<?> componentType = clsArr[clsArr.length - 1].getComponentType();
                Object newInstance = Array.newInstance(componentType, (objArr.length - clsArr.length) + 1);
                for (int i3 = 0; i3 < Array.getLength(newInstance); i3++) {
                    Array.set(newInstance, i3, Context.jsToJava(objArr[(clsArr.length - 1) + i3], componentType));
                }
                obj = newInstance;
            } else {
                obj = Context.jsToJava(objArr[objArr.length - 1], clsArr[clsArr.length - 1]);
            }
            objArr2[clsArr.length - 1] = obj;
        }
        return memberBox.newInstance(objArr2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Scriptable constructSpecific(Context context, Scriptable scriptable, Object[] objArr, MemberBox memberBox) {
        Object constructInternal = constructInternal(objArr, memberBox);
        return context.getWrapFactory().wrapNewObject(context, ScriptableObject.getTopLevelScope(scriptable), constructInternal);
    }

    private static Class<?> findNestedClass(Class<?> cls, String str) {
        String str2 = cls.getName() + '$' + str;
        ClassLoader classLoader = cls.getClassLoader();
        return classLoader == null ? Kit.classOrNull(str2) : Kit.classOrNull(classLoader, str2);
    }

    @Override // org.mozilla.javascript.Function, org.mozilla.javascript.Callable
    public Object call(Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        Scriptable prototype;
        if (objArr.length != 1 || !(objArr[0] instanceof Scriptable)) {
            return construct(context, scriptable, objArr);
        }
        Class<?> classObject = getClassObject();
        Scriptable scriptable3 = (Scriptable) objArr[0];
        do {
            if ((scriptable3 instanceof Wrapper) && classObject.isInstance(((Wrapper) scriptable3).unwrap())) {
                return scriptable3;
            }
            prototype = scriptable3.getPrototype();
            scriptable3 = prototype;
        } while (prototype != null);
        return construct(context, scriptable, objArr);
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x00c9, code lost:
        if (r10 == null) goto L_0x00cf;
     */
    @Override // org.mozilla.javascript.Function
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.mozilla.javascript.Scriptable construct(org.mozilla.javascript.Context r10, org.mozilla.javascript.Scriptable r11, java.lang.Object[] r12) {
        /*
            Method dump skipped, instructions count: 224
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.NativeJavaClass.construct(org.mozilla.javascript.Context, org.mozilla.javascript.Scriptable, java.lang.Object[]):org.mozilla.javascript.Scriptable");
    }

    @Override // org.mozilla.javascript.NativeJavaObject, org.mozilla.javascript.Scriptable
    public Object get(String str, Scriptable scriptable) {
        FieldAndMethods fieldAndMethods;
        if (str.equals("prototype")) {
            return null;
        }
        if (this.staticFieldAndMethods != null && (fieldAndMethods = this.staticFieldAndMethods.get(str)) != null) {
            return fieldAndMethods;
        }
        if (this.members.has(str, true)) {
            return this.members.get(this, str, this.javaObject, true);
        }
        Context context = Context.getContext();
        Scriptable topLevelScope = ScriptableObject.getTopLevelScope(scriptable);
        WrapFactory wrapFactory = context.getWrapFactory();
        if (javaClassPropertyName.equals(str)) {
            return wrapFactory.wrap(context, topLevelScope, this.javaObject, ScriptRuntime.ClassClass);
        }
        Class<?> findNestedClass = findNestedClass(getClassObject(), str);
        if (findNestedClass != null) {
            Scriptable wrapJavaClass = wrapFactory.wrapJavaClass(context, topLevelScope, findNestedClass);
            wrapJavaClass.setParentScope(this);
            return wrapJavaClass;
        }
        throw this.members.reportMemberNotFound(str);
    }

    @Override // org.mozilla.javascript.NativeJavaObject, org.mozilla.javascript.Scriptable
    public String getClassName() {
        return "JavaClass";
    }

    public Class<?> getClassObject() {
        return (Class) super.unwrap();
    }

    @Override // org.mozilla.javascript.NativeJavaObject, org.mozilla.javascript.Scriptable
    public Object getDefaultValue(Class<?> cls) {
        return (cls == null || cls == ScriptRuntime.StringClass) ? toString() : cls == ScriptRuntime.BooleanClass ? Boolean.TRUE : cls == ScriptRuntime.NumberClass ? ScriptRuntime.NaNobj : this;
    }

    @Override // org.mozilla.javascript.NativeJavaObject, org.mozilla.javascript.Scriptable
    public Object[] getIds() {
        return this.members.getIds(true);
    }

    @Override // org.mozilla.javascript.NativeJavaObject, org.mozilla.javascript.Scriptable
    public boolean has(String str, Scriptable scriptable) {
        boolean z = true;
        if (!this.members.has(str, true)) {
            z = javaClassPropertyName.equals(str);
        }
        return z;
    }

    @Override // org.mozilla.javascript.NativeJavaObject, org.mozilla.javascript.Scriptable
    public boolean hasInstance(Scriptable scriptable) {
        if (!(scriptable instanceof Wrapper) || (scriptable instanceof NativeJavaClass)) {
            return false;
        }
        return getClassObject().isInstance(((Wrapper) scriptable).unwrap());
    }

    @Override // org.mozilla.javascript.NativeJavaObject
    protected void initMembers() {
        Class cls = (Class) this.javaObject;
        this.members = JavaMembers.lookupClass(this.parent, cls, cls, this.isAdapter);
        this.staticFieldAndMethods = this.members.getFieldAndMethodsObjects(this, cls, true);
    }

    @Override // org.mozilla.javascript.NativeJavaObject, org.mozilla.javascript.Scriptable
    public void put(String str, Scriptable scriptable, Object obj) {
        this.members.put(this, str, this.javaObject, obj, true);
    }

    public String toString() {
        return "[JavaClass " + getClassObject().getName() + "]";
    }
}
