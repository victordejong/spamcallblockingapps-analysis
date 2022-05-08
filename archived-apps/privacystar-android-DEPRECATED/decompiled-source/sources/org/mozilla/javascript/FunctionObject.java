package org.mozilla.javascript;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.lang.reflect.Constructor;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/FunctionObject.class */
public class FunctionObject extends BaseFunction {
    public static final int JAVA_BOOLEAN_TYPE = 3;
    public static final int JAVA_DOUBLE_TYPE = 4;
    public static final int JAVA_INT_TYPE = 2;
    public static final int JAVA_OBJECT_TYPE = 6;
    public static final int JAVA_SCRIPTABLE_TYPE = 5;
    public static final int JAVA_STRING_TYPE = 1;
    public static final int JAVA_UNSUPPORTED_TYPE = 0;
    private static final short VARARGS_CTOR = -2;
    private static final short VARARGS_METHOD = -1;
    private static boolean sawSecurityException = false;
    static final long serialVersionUID = -5332312783643935019L;
    private String functionName;
    private transient boolean hasVoidReturn;
    private boolean isStatic;
    MemberBox member;
    private int parmsLength;
    private transient int returnTypeTag;
    private transient byte[] typeTags;

    public FunctionObject(String str, Member member, Scriptable scriptable) {
        if (member instanceof Constructor) {
            this.member = new MemberBox((Constructor) member);
            this.isStatic = true;
        } else {
            this.member = new MemberBox((Method) member);
            this.isStatic = this.member.isStatic();
        }
        String name = this.member.getName();
        this.functionName = str;
        Class<?>[] clsArr = this.member.argTypes;
        int length = clsArr.length;
        if (length != 4 || (!clsArr[1].isArray() && !clsArr[2].isArray())) {
            this.parmsLength = length;
            if (length > 0) {
                this.typeTags = new byte[length];
                for (int i = 0; i != length; i++) {
                    int typeTag = getTypeTag(clsArr[i]);
                    if (typeTag == 0) {
                        throw Context.reportRuntimeError2("msg.bad.parms", clsArr[i].getName(), name);
                    }
                    this.typeTags[i] = (byte) typeTag;
                }
            }
        } else if (clsArr[1].isArray()) {
            if (this.isStatic && clsArr[0] == ScriptRuntime.ContextClass && clsArr[1].getComponentType() == ScriptRuntime.ObjectClass && clsArr[2] == ScriptRuntime.FunctionClass && clsArr[3] == Boolean.TYPE) {
                this.parmsLength = -2;
            } else {
                throw Context.reportRuntimeError1("msg.varargs.ctor", name);
            }
        } else if (this.isStatic && clsArr[0] == ScriptRuntime.ContextClass && clsArr[1] == ScriptRuntime.ScriptableClass && clsArr[2].getComponentType() == ScriptRuntime.ObjectClass && clsArr[3] == ScriptRuntime.FunctionClass) {
            this.parmsLength = -1;
        } else {
            throw Context.reportRuntimeError1("msg.varargs.fun", name);
        }
        if (this.member.isMethod()) {
            Class<?> returnType = this.member.method().getReturnType();
            if (returnType == Void.TYPE) {
                this.hasVoidReturn = true;
            } else {
                this.returnTypeTag = getTypeTag(returnType);
            }
        } else {
            Class<?> declaringClass = this.member.getDeclaringClass();
            if (!ScriptRuntime.ScriptableClass.isAssignableFrom(declaringClass)) {
                throw Context.reportRuntimeError1("msg.bad.ctor.return", declaringClass.getName());
            }
        }
        ScriptRuntime.setFunctionProtoAndParent(this, scriptable);
    }

    public static Object convertArg(Context context, Scriptable scriptable, Object obj, int i) {
        switch (i) {
            case 1:
                return obj instanceof String ? obj : ScriptRuntime.toString(obj);
            case 2:
                return obj instanceof Integer ? obj : Integer.valueOf(ScriptRuntime.toInt32(obj));
            case 3:
                if (obj instanceof Boolean) {
                    return obj;
                }
                return ScriptRuntime.toBoolean(obj) ? Boolean.TRUE : Boolean.FALSE;
            case 4:
                return obj instanceof Double ? obj : new Double(ScriptRuntime.toNumber(obj));
            case 5:
                return ScriptRuntime.toObjectOrNull(context, obj, scriptable);
            case 6:
                return obj;
            default:
                throw new IllegalArgumentException();
        }
    }

    @Deprecated
    public static Object convertArg(Context context, Scriptable scriptable, Object obj, Class<?> cls) {
        int typeTag = getTypeTag(cls);
        if (typeTag != 0) {
            return convertArg(context, scriptable, obj, typeTag);
        }
        throw Context.reportRuntimeError1("msg.cant.convert", cls.getName());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Method findSingleMethod(Method[] methodArr, String str) {
        int length = methodArr.length;
        Method method = null;
        for (int i = 0; i != length; i++) {
            Method method2 = methodArr[i];
            method = method;
            if (method2 != null) {
                method = method;
                if (!str.equals(method2.getName())) {
                    continue;
                } else if (method != null) {
                    throw Context.reportRuntimeError2("msg.no.overload", str, method2.getDeclaringClass().getName());
                } else {
                    method = method2;
                }
            }
        }
        return method;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x001b  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x002f  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0077  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.reflect.Method[] getMethodList(java.lang.Class<?> r5) {
        /*
            boolean r0 = org.mozilla.javascript.FunctionObject.sawSecurityException     // Catch: SecurityException -> 0x000e
            if (r0 != 0) goto L_0x0013
            r0 = r5
            java.lang.reflect.Method[] r0 = r0.getDeclaredMethods()     // Catch: SecurityException -> 0x000e
            r6 = r0
            goto L_0x0015
        L_0x000e:
            r6 = move-exception
            r0 = 1
            org.mozilla.javascript.FunctionObject.sawSecurityException = r0
        L_0x0013:
            r0 = 0
            r6 = r0
        L_0x0015:
            r0 = r6
            r7 = r0
            r0 = r6
            if (r0 != 0) goto L_0x0020
            r0 = r5
            java.lang.reflect.Method[] r0 = r0.getMethods()
            r7 = r0
        L_0x0020:
            r0 = 0
            r8 = r0
            r0 = 0
            r9 = r0
            r0 = 0
            r10 = r0
        L_0x0028:
            r0 = r9
            r1 = r7
            int r1 = r1.length
            if (r0 >= r1) goto L_0x0061
            boolean r0 = org.mozilla.javascript.FunctionObject.sawSecurityException
            if (r0 == 0) goto L_0x0043
            r0 = r7
            r1 = r9
            r0 = r0[r1]
            java.lang.Class r0 = r0.getDeclaringClass()
            r1 = r5
            if (r0 == r1) goto L_0x0058
            goto L_0x0050
        L_0x0043:
            r0 = r7
            r1 = r9
            r0 = r0[r1]
            int r0 = r0.getModifiers()
            boolean r0 = java.lang.reflect.Modifier.isPublic(r0)
            if (r0 != 0) goto L_0x0058
        L_0x0050:
            r0 = r7
            r1 = r9
            r2 = 0
            r0[r1] = r2
            goto L_0x005b
        L_0x0058:
            int r10 = r10 + 1
        L_0x005b:
            int r9 = r9 + 1
            goto L_0x0028
        L_0x0061:
            r0 = r10
            java.lang.reflect.Method[] r0 = new java.lang.reflect.Method[r0]
            r5 = r0
            r0 = 0
            r10 = r0
            r0 = r8
            r9 = r0
            r0 = r10
            r8 = r0
        L_0x0070:
            r0 = r9
            r1 = r7
            int r1 = r1.length
            if (r0 >= r1) goto L_0x0096
            r0 = r8
            r10 = r0
            r0 = r7
            r1 = r9
            r0 = r0[r1]
            if (r0 == 0) goto L_0x008d
            r0 = r5
            r1 = r8
            r2 = r7
            r3 = r9
            r2 = r2[r3]
            r0[r1] = r2
            r0 = r8
            r1 = 1
            int r0 = r0 + r1
            r10 = r0
        L_0x008d:
            int r9 = r9 + 1
            r0 = r10
            r8 = r0
            goto L_0x0070
        L_0x0096:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.FunctionObject.getMethodList(java.lang.Class):java.lang.reflect.Method[]");
    }

    public static int getTypeTag(Class<?> cls) {
        if (cls == ScriptRuntime.StringClass) {
            return 1;
        }
        if (cls == ScriptRuntime.IntegerClass || cls == Integer.TYPE) {
            return 2;
        }
        if (cls == ScriptRuntime.BooleanClass || cls == Boolean.TYPE) {
            return 3;
        }
        if (cls == ScriptRuntime.DoubleClass || cls == Double.TYPE) {
            return 4;
        }
        if (ScriptRuntime.ScriptableClass.isAssignableFrom(cls)) {
            return 5;
        }
        return cls == ScriptRuntime.ObjectClass ? 6 : 0;
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        if (this.parmsLength > 0) {
            Class<?>[] clsArr = this.member.argTypes;
            this.typeTags = new byte[this.parmsLength];
            for (int i = 0; i != this.parmsLength; i++) {
                this.typeTags[i] = (byte) getTypeTag(clsArr[i]);
            }
        }
        if (this.member.isMethod()) {
            Class<?> returnType = this.member.method().getReturnType();
            if (returnType == Void.TYPE) {
                this.hasVoidReturn = true;
            } else {
                this.returnTypeTag = getTypeTag(returnType);
            }
        }
    }

    public void addAsConstructor(Scriptable scriptable, Scriptable scriptable2) {
        initAsConstructor(scriptable, scriptable2);
        defineProperty(scriptable, scriptable2.getClassName(), this, 2);
    }

    /* JADX WARN: Removed duplicated region for block: B:72:0x020c  */
    @Override // org.mozilla.javascript.BaseFunction, org.mozilla.javascript.Function, org.mozilla.javascript.Callable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object call(org.mozilla.javascript.Context r9, org.mozilla.javascript.Scriptable r10, org.mozilla.javascript.Scriptable r11, java.lang.Object[] r12) {
        /*
            Method dump skipped, instructions count: 565
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.FunctionObject.call(org.mozilla.javascript.Context, org.mozilla.javascript.Scriptable, org.mozilla.javascript.Scriptable, java.lang.Object[]):java.lang.Object");
    }

    @Override // org.mozilla.javascript.BaseFunction
    public Scriptable createObject(Context context, Scriptable scriptable) {
        if (this.member.isCtor() || this.parmsLength == -2) {
            return null;
        }
        try {
            Scriptable scriptable2 = (Scriptable) this.member.getDeclaringClass().newInstance();
            scriptable2.setPrototype(getClassPrototype());
            scriptable2.setParentScope(getParentScope());
            return scriptable2;
        } catch (Exception e) {
            throw Context.throwAsScriptRuntimeEx(e);
        }
    }

    @Override // org.mozilla.javascript.BaseFunction
    public int getArity() {
        return this.parmsLength < 0 ? 1 : this.parmsLength;
    }

    @Override // org.mozilla.javascript.BaseFunction
    public String getFunctionName() {
        return this.functionName == null ? "" : this.functionName;
    }

    @Override // org.mozilla.javascript.BaseFunction
    public int getLength() {
        return getArity();
    }

    public Member getMethodOrConstructor() {
        return this.member.isMethod() ? this.member.method() : this.member.ctor();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void initAsConstructor(Scriptable scriptable, Scriptable scriptable2) {
        ScriptRuntime.setFunctionProtoAndParent(this, scriptable);
        setImmunePrototypeProperty(scriptable2);
        scriptable2.setParentScope(this);
        defineProperty(scriptable2, "constructor", this, 7);
        setParentScope(scriptable);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isVarArgsConstructor() {
        return this.parmsLength == -2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isVarArgsMethod() {
        return this.parmsLength == -1;
    }
}
