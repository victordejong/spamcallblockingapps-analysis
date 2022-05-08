package org.mozilla.javascript;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.security.CodeSource;
import java.security.ProtectionDomain;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Map;
import org.mozilla.classfile.ClassFileWriter;
import org.mozilla.javascript.ObjToIntMap;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/JavaAdapter.class */
public final class JavaAdapter implements IdFunctionCall {
    private static final Object FTAG = "JavaAdapter";
    private static final int Id_JavaAdapter = 1;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/JavaAdapter$JavaAdapterSignature.class */
    public static class JavaAdapterSignature {
        Class<?>[] interfaces;
        ObjToIntMap names;
        Class<?> superClass;

        JavaAdapterSignature(Class<?> cls, Class<?>[] clsArr, ObjToIntMap objToIntMap) {
            this.superClass = cls;
            this.interfaces = clsArr;
            this.names = objToIntMap;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof JavaAdapterSignature)) {
                return false;
            }
            JavaAdapterSignature javaAdapterSignature = (JavaAdapterSignature) obj;
            if (this.superClass != javaAdapterSignature.superClass) {
                return false;
            }
            if (this.interfaces != javaAdapterSignature.interfaces) {
                if (this.interfaces.length != javaAdapterSignature.interfaces.length) {
                    return false;
                }
                for (int i = 0; i < this.interfaces.length; i++) {
                    if (this.interfaces[i] != javaAdapterSignature.interfaces[i]) {
                        return false;
                    }
                }
            }
            if (this.names.size() != javaAdapterSignature.names.size()) {
                return false;
            }
            ObjToIntMap.Iterator iterator = new ObjToIntMap.Iterator(this.names);
            iterator.start();
            while (!iterator.done()) {
                String str = (String) iterator.getKey();
                int value = iterator.getValue();
                if (value != javaAdapterSignature.names.get(str, value + 1)) {
                    return false;
                }
                iterator.next();
            }
            return true;
        }

        public int hashCode() {
            return (this.superClass.hashCode() + Arrays.hashCode(this.interfaces)) ^ this.names.size();
        }
    }

    static int appendMethodSignature(Class<?>[] clsArr, Class<?> cls, StringBuilder sb) {
        sb.append('(');
        int length = clsArr.length + 1;
        for (Class<?> cls2 : clsArr) {
            appendTypeString(sb, cls2);
            if (cls2 != Long.TYPE) {
                length = length;
                if (cls2 != Double.TYPE) {
                }
            }
            length++;
        }
        sb.append(')');
        appendTypeString(sb, cls);
        return length;
    }

    private static void appendOverridableMethods(Class<?> cls, ArrayList<Method> arrayList, HashSet<String> hashSet) {
        Method[] declaredMethods = cls.getDeclaredMethods();
        for (int i = 0; i < declaredMethods.length; i++) {
            String str = declaredMethods[i].getName() + getMethodSignature(declaredMethods[i], declaredMethods[i].getParameterTypes());
            if (!hashSet.contains(str)) {
                int modifiers = declaredMethods[i].getModifiers();
                if (!Modifier.isStatic(modifiers)) {
                    if (Modifier.isFinal(modifiers)) {
                        hashSet.add(str);
                    } else if (Modifier.isPublic(modifiers) || Modifier.isProtected(modifiers)) {
                        arrayList.add(declaredMethods[i]);
                        hashSet.add(str);
                    }
                }
            }
        }
    }

    private static StringBuilder appendTypeString(StringBuilder sb, Class<?> cls) {
        while (cls.isArray()) {
            sb.append('[');
            cls = cls.getComponentType();
        }
        if (cls.isPrimitive()) {
            sb.append(cls == Boolean.TYPE ? 'Z' : cls == Long.TYPE ? 'J' : Character.toUpperCase(cls.getName().charAt(0)));
        } else {
            sb.append('L');
            sb.append(cls.getName().replace('.', '/'));
            sb.append(';');
        }
        return sb;
    }

    public static Object callMethod(ContextFactory contextFactory, final Scriptable scriptable, final Function function, final Object[] objArr, final long j) {
        if (function == null) {
            return null;
        }
        ContextFactory contextFactory2 = contextFactory;
        if (contextFactory == null) {
            contextFactory2 = ContextFactory.getGlobal();
        }
        final Scriptable parentScope = function.getParentScope();
        if (j == 0) {
            return Context.call(contextFactory2, function, parentScope, scriptable, objArr);
        }
        Context currentContext = Context.getCurrentContext();
        return currentContext != null ? doCall(currentContext, parentScope, scriptable, function, objArr, j) : contextFactory2.call(new ContextAction() { // from class: org.mozilla.javascript.JavaAdapter.1
            @Override // org.mozilla.javascript.ContextAction
            public Object run(Context context) {
                return JavaAdapter.doCall(context, Scriptable.this, scriptable, function, objArr, j);
            }
        });
    }

    public static Object convertResult(Object obj, Class<?> cls) {
        if (obj != Undefined.instance || cls == ScriptRuntime.ObjectClass || cls == ScriptRuntime.StringClass) {
            return Context.jsToJava(obj, cls);
        }
        return null;
    }

    public static byte[] createAdapterCode(ObjToIntMap objToIntMap, String str, Class<?> cls, Class<?>[] clsArr, String str2) {
        Constructor<?>[] declaredConstructors;
        Method[] overridableMethods;
        Method[] methods;
        ClassFileWriter classFileWriter = new ClassFileWriter(str, cls.getName(), "<adapter>");
        classFileWriter.addField("factory", "Lorg/mozilla/javascript/ContextFactory;", (short) 17);
        classFileWriter.addField("delegee", "Lorg/mozilla/javascript/Scriptable;", (short) 17);
        classFileWriter.addField("self", "Lorg/mozilla/javascript/Scriptable;", (short) 17);
        int length = clsArr == null ? 0 : clsArr.length;
        for (int i = 0; i < length; i++) {
            if (clsArr[i] != null) {
                classFileWriter.addInterface(clsArr[i].getName());
            }
        }
        String replace = cls.getName().replace('.', '/');
        for (Constructor<?> constructor : cls.getDeclaredConstructors()) {
            int modifiers = constructor.getModifiers();
            if (Modifier.isPublic(modifiers) || Modifier.isProtected(modifiers)) {
                generateCtor(classFileWriter, str, replace, constructor);
            }
        }
        generateSerialCtor(classFileWriter, str, replace);
        if (str2 != null) {
            generateEmptyCtor(classFileWriter, str, replace, str2);
        }
        ObjToIntMap objToIntMap2 = new ObjToIntMap();
        ObjToIntMap objToIntMap3 = new ObjToIntMap();
        for (int i2 = 0; i2 < length; i2++) {
            for (Method method : clsArr[i2].getMethods()) {
                int modifiers2 = method.getModifiers();
                if (!Modifier.isStatic(modifiers2) && !Modifier.isFinal(modifiers2)) {
                    String name = method.getName();
                    Class<?>[] parameterTypes = method.getParameterTypes();
                    if (!objToIntMap.has(name)) {
                        try {
                            cls.getMethod(name, parameterTypes);
                        } catch (NoSuchMethodException e) {
                        }
                    }
                    String str3 = name + getMethodSignature(method, parameterTypes);
                    if (!objToIntMap2.has(str3)) {
                        generateMethod(classFileWriter, str, name, parameterTypes, method.getReturnType(), true);
                        objToIntMap2.put(str3, 0);
                        objToIntMap3.put(name, 0);
                    }
                }
            }
        }
        for (Method method2 : getOverridableMethods(cls)) {
            boolean isAbstract = Modifier.isAbstract(method2.getModifiers());
            String name2 = method2.getName();
            if (isAbstract || objToIntMap.has(name2)) {
                Class<?>[] parameterTypes2 = method2.getParameterTypes();
                String methodSignature = getMethodSignature(method2, parameterTypes2);
                String str4 = name2 + methodSignature;
                if (!objToIntMap2.has(str4)) {
                    generateMethod(classFileWriter, str, name2, parameterTypes2, method2.getReturnType(), true);
                    objToIntMap2.put(str4, 0);
                    objToIntMap3.put(name2, 0);
                    if (!isAbstract) {
                        generateSuper(classFileWriter, str, replace, name2, methodSignature, parameterTypes2, method2.getReturnType());
                    }
                }
            }
        }
        ObjToIntMap.Iterator iterator = new ObjToIntMap.Iterator(objToIntMap);
        iterator.start();
        while (!iterator.done()) {
            String str5 = (String) iterator.getKey();
            if (!objToIntMap3.has(str5)) {
                int value = iterator.getValue();
                Class[] clsArr2 = new Class[value];
                for (int i3 = 0; i3 < value; i3++) {
                    clsArr2[i3] = ScriptRuntime.ObjectClass;
                }
                generateMethod(classFileWriter, str, str5, clsArr2, ScriptRuntime.ObjectClass, false);
            }
            iterator.next();
        }
        return classFileWriter.toByteArray();
    }

    public static Scriptable createAdapterWrapper(Scriptable scriptable, Object obj) {
        NativeJavaObject nativeJavaObject = new NativeJavaObject(ScriptableObject.getTopLevelScope(scriptable), obj, null, true);
        nativeJavaObject.setPrototype(scriptable);
        return nativeJavaObject;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Object doCall(Context context, Scriptable scriptable, Scriptable scriptable2, Function function, Object[] objArr, long j) {
        for (int i = 0; i != objArr.length; i++) {
            if (0 != ((1 << i) & j)) {
                Object obj = objArr[i];
                if (!(obj instanceof Scriptable)) {
                    objArr[i] = context.getWrapFactory().wrap(context, scriptable, obj, null);
                }
            }
        }
        return function.call(context, scriptable, scriptable2, objArr);
    }

    private static void generateCtor(ClassFileWriter classFileWriter, String str, String str2, Constructor<?> constructor) {
        short s;
        Class<?>[] parameterTypes = constructor.getParameterTypes();
        short s2 = 3;
        if (parameterTypes.length == 0) {
            classFileWriter.startMethod("<init>", "(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/ContextFactory;)V", (short) 1);
            classFileWriter.add(42);
            classFileWriter.addInvoke(183, str2, "<init>", "()V");
            s = 3;
        } else {
            StringBuilder sb = new StringBuilder("(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/ContextFactory;");
            int length = sb.length();
            for (Class<?> cls : parameterTypes) {
                appendTypeString(sb, cls);
            }
            sb.append(")V");
            classFileWriter.startMethod("<init>", sb.toString(), (short) 1);
            classFileWriter.add(42);
            for (Class<?> cls2 : parameterTypes) {
                s2 = (short) (s2 + generatePushParam(classFileWriter, s2, cls2));
            }
            sb.delete(1, length);
            classFileWriter.addInvoke(183, str2, "<init>", sb.toString());
            s = s2;
        }
        classFileWriter.add(42);
        classFileWriter.add(43);
        classFileWriter.add(181, str, "delegee", "Lorg/mozilla/javascript/Scriptable;");
        classFileWriter.add(42);
        classFileWriter.add(44);
        classFileWriter.add(181, str, "factory", "Lorg/mozilla/javascript/ContextFactory;");
        classFileWriter.add(42);
        classFileWriter.add(43);
        classFileWriter.add(42);
        classFileWriter.addInvoke(184, "org/mozilla/javascript/JavaAdapter", "createAdapterWrapper", "(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;");
        classFileWriter.add(181, str, "self", "Lorg/mozilla/javascript/Scriptable;");
        classFileWriter.add(177);
        classFileWriter.stopMethod(s);
    }

    private static void generateEmptyCtor(ClassFileWriter classFileWriter, String str, String str2, String str3) {
        classFileWriter.startMethod("<init>", "()V", (short) 1);
        classFileWriter.add(42);
        classFileWriter.addInvoke(183, str2, "<init>", "()V");
        classFileWriter.add(42);
        classFileWriter.add(1);
        classFileWriter.add(181, str, "factory", "Lorg/mozilla/javascript/ContextFactory;");
        classFileWriter.add(187, str3);
        classFileWriter.add(89);
        classFileWriter.addInvoke(183, str3, "<init>", "()V");
        classFileWriter.addInvoke(184, "org/mozilla/javascript/JavaAdapter", "runScript", "(Lorg/mozilla/javascript/Script;)Lorg/mozilla/javascript/Scriptable;");
        classFileWriter.add(76);
        classFileWriter.add(42);
        classFileWriter.add(43);
        classFileWriter.add(181, str, "delegee", "Lorg/mozilla/javascript/Scriptable;");
        classFileWriter.add(42);
        classFileWriter.add(43);
        classFileWriter.add(42);
        classFileWriter.addInvoke(184, "org/mozilla/javascript/JavaAdapter", "createAdapterWrapper", "(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;");
        classFileWriter.add(181, str, "self", "Lorg/mozilla/javascript/Scriptable;");
        classFileWriter.add(177);
        classFileWriter.stopMethod((short) 2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r14v0 */
    /* JADX WARN: Type inference failed for: r14v1, types: [long] */
    /* JADX WARN: Type inference failed for: r14v2 */
    /* JADX WARN: Type inference failed for: r14v3 */
    /* JADX WARN: Type inference failed for: r17v0 */
    /* JADX WARN: Type inference failed for: r17v2, types: [long] */
    /* JADX WARN: Type inference failed for: r6v0, types: [org.mozilla.classfile.ClassFileWriter] */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void generateMethod(org.mozilla.classfile.ClassFileWriter r6, java.lang.String r7, java.lang.String r8, java.lang.Class<?>[] r9, java.lang.Class<?> r10, boolean r11) {
        /*
            Method dump skipped, instructions count: 211
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.JavaAdapter.generateMethod(org.mozilla.classfile.ClassFileWriter, java.lang.String, java.lang.String, java.lang.Class[], java.lang.Class, boolean):void");
    }

    private static void generatePopResult(ClassFileWriter classFileWriter, Class<?> cls) {
        if (cls.isPrimitive()) {
            char charAt = cls.getName().charAt(0);
            if (charAt != 'f') {
                if (charAt != 'i') {
                    if (charAt == 'l') {
                        classFileWriter.add(173);
                        return;
                    } else if (!(charAt == 's' || charAt == 'z')) {
                        switch (charAt) {
                            case 'b':
                            case 'c':
                                break;
                            case 'd':
                                classFileWriter.add(175);
                                return;
                            default:
                                return;
                        }
                    }
                }
                classFileWriter.add(172);
                return;
            }
            classFileWriter.add(174);
            return;
        }
        classFileWriter.add(176);
    }

    private static int generatePushParam(ClassFileWriter classFileWriter, int i, Class<?> cls) {
        if (!cls.isPrimitive()) {
            classFileWriter.addALoad(i);
            return 1;
        }
        char charAt = cls.getName().charAt(0);
        if (charAt != 'f') {
            if (charAt != 'i') {
                if (charAt == 'l') {
                    classFileWriter.addLLoad(i);
                    return 2;
                } else if (!(charAt == 's' || charAt == 'z')) {
                    switch (charAt) {
                        case 'b':
                        case 'c':
                            break;
                        case 'd':
                            classFileWriter.addDLoad(i);
                            return 2;
                        default:
                            throw Kit.codeBug();
                    }
                }
            }
            classFileWriter.addILoad(i);
            return 1;
        }
        classFileWriter.addFLoad(i);
        return 1;
    }

    static void generatePushWrappedArgs(ClassFileWriter classFileWriter, Class<?>[] clsArr, int i) {
        classFileWriter.addPush(i);
        classFileWriter.add(189, "java/lang/Object");
        int i2 = 1;
        for (int i3 = 0; i3 != clsArr.length; i3++) {
            classFileWriter.add(89);
            classFileWriter.addPush(i3);
            i2 += generateWrapArg(classFileWriter, i2, clsArr[i3]);
            classFileWriter.add(83);
        }
    }

    static void generateReturnResult(ClassFileWriter classFileWriter, Class<?> cls, boolean z) {
        if (cls == Void.TYPE) {
            classFileWriter.add(87);
            classFileWriter.add(177);
        } else if (cls == Boolean.TYPE) {
            classFileWriter.addInvoke(184, "org/mozilla/javascript/Context", "toBoolean", "(Ljava/lang/Object;)Z");
            classFileWriter.add(172);
        } else if (cls == Character.TYPE) {
            classFileWriter.addInvoke(184, "org/mozilla/javascript/Context", "toString", "(Ljava/lang/Object;)Ljava/lang/String;");
            classFileWriter.add(3);
            classFileWriter.addInvoke(182, "java/lang/String", "charAt", "(I)C");
            classFileWriter.add(172);
        } else if (cls.isPrimitive()) {
            classFileWriter.addInvoke(184, "org/mozilla/javascript/Context", "toNumber", "(Ljava/lang/Object;)D");
            char charAt = cls.getName().charAt(0);
            if (charAt != 'b') {
                if (charAt == 'd') {
                    classFileWriter.add(175);
                    return;
                } else if (charAt == 'f') {
                    classFileWriter.add(144);
                    classFileWriter.add(174);
                    return;
                } else if (charAt != 'i') {
                    if (charAt == 'l') {
                        classFileWriter.add(143);
                        classFileWriter.add(173);
                        return;
                    } else if (charAt != 's') {
                        throw new RuntimeException("Unexpected return type " + cls.toString());
                    }
                }
            }
            classFileWriter.add(142);
            classFileWriter.add(172);
        } else {
            String name = cls.getName();
            if (z) {
                classFileWriter.addLoadConstant(name);
                classFileWriter.addInvoke(184, "java/lang/Class", "forName", "(Ljava/lang/String;)Ljava/lang/Class;");
                classFileWriter.addInvoke(184, "org/mozilla/javascript/JavaAdapter", "convertResult", "(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;");
            }
            classFileWriter.add(192, name);
            classFileWriter.add(176);
        }
    }

    private static void generateSerialCtor(ClassFileWriter classFileWriter, String str, String str2) {
        classFileWriter.startMethod("<init>", "(Lorg/mozilla/javascript/ContextFactory;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;)V", (short) 1);
        classFileWriter.add(42);
        classFileWriter.addInvoke(183, str2, "<init>", "()V");
        classFileWriter.add(42);
        classFileWriter.add(43);
        classFileWriter.add(181, str, "factory", "Lorg/mozilla/javascript/ContextFactory;");
        classFileWriter.add(42);
        classFileWriter.add(44);
        classFileWriter.add(181, str, "delegee", "Lorg/mozilla/javascript/Scriptable;");
        classFileWriter.add(42);
        classFileWriter.add(45);
        classFileWriter.add(181, str, "self", "Lorg/mozilla/javascript/Scriptable;");
        classFileWriter.add(177);
        classFileWriter.stopMethod((short) 4);
    }

    private static void generateSuper(ClassFileWriter classFileWriter, String str, String str2, String str3, String str4, Class<?>[] clsArr, Class<?> cls) {
        classFileWriter.startMethod("super$" + str3, str4, (short) 1);
        classFileWriter.add(25, 0);
        int i = 1;
        for (Class<?> cls2 : clsArr) {
            i += generatePushParam(classFileWriter, i, cls2);
        }
        classFileWriter.addInvoke(183, str2, str3, str4);
        if (!cls.equals(Void.TYPE)) {
            generatePopResult(classFileWriter, cls);
        } else {
            classFileWriter.add(177);
        }
        classFileWriter.stopMethod((short) (i + 1));
    }

    private static int generateWrapArg(ClassFileWriter classFileWriter, int i, Class<?> cls) {
        int i2;
        if (!cls.isPrimitive()) {
            classFileWriter.add(25, i);
            i2 = 1;
        } else if (cls == Boolean.TYPE) {
            classFileWriter.add(187, "java/lang/Boolean");
            classFileWriter.add(89);
            classFileWriter.add(21, i);
            classFileWriter.addInvoke(183, "java/lang/Boolean", "<init>", "(Z)V");
            i2 = 1;
        } else if (cls == Character.TYPE) {
            classFileWriter.add(21, i);
            classFileWriter.addInvoke(184, "java/lang/String", "valueOf", "(C)Ljava/lang/String;");
            i2 = 1;
        } else {
            classFileWriter.add(187, "java/lang/Double");
            classFileWriter.add(89);
            char charAt = cls.getName().charAt(0);
            if (charAt != 'b') {
                if (charAt != 'd') {
                    if (charAt == 'f') {
                        classFileWriter.add(23, i);
                        classFileWriter.add(141);
                        i2 = 1;
                    } else if (charAt != 'i') {
                        if (charAt == 'l') {
                            classFileWriter.add(22, i);
                            classFileWriter.add(138);
                        } else if (charAt != 's') {
                            i2 = 1;
                        }
                    }
                    classFileWriter.addInvoke(183, "java/lang/Double", "<init>", "(D)V");
                } else {
                    classFileWriter.add(24, i);
                }
                i2 = 2;
                classFileWriter.addInvoke(183, "java/lang/Double", "<init>", "(D)V");
            }
            classFileWriter.add(21, i);
            classFileWriter.add(135);
            i2 = 1;
            classFileWriter.addInvoke(183, "java/lang/Double", "<init>", "(D)V");
        }
        return i2;
    }

    private static Class<?> getAdapterClass(Scriptable scriptable, Class<?> cls, Class<?>[] clsArr, Scriptable scriptable2) {
        ClassCache classCache = ClassCache.get(scriptable);
        Map<JavaAdapterSignature, Class<?>> interfaceAdapterCacheMap = classCache.getInterfaceAdapterCacheMap();
        ObjToIntMap objectFunctionNames = getObjectFunctionNames(scriptable2);
        JavaAdapterSignature javaAdapterSignature = new JavaAdapterSignature(cls, clsArr, objectFunctionNames);
        Class<?> cls2 = interfaceAdapterCacheMap.get(javaAdapterSignature);
        Class<?> cls3 = cls2;
        if (cls2 == null) {
            String str = "adapter" + classCache.newClassSerialNumber();
            Class<?> loadAdapterClass = loadAdapterClass(str, createAdapterCode(objectFunctionNames, str, cls, clsArr, null));
            cls3 = loadAdapterClass;
            if (classCache.isCachingEnabled()) {
                interfaceAdapterCacheMap.put(javaAdapterSignature, loadAdapterClass);
                cls3 = loadAdapterClass;
            }
        }
        return cls3;
    }

    public static Object getAdapterSelf(Class<?> cls, Object obj) throws NoSuchFieldException, IllegalAccessException {
        return cls.getDeclaredField("self").get(obj);
    }

    static int[] getArgsToConvert(Class<?>[] clsArr) {
        int i = 0;
        for (int i2 = 0; i2 != clsArr.length; i2++) {
            i = i;
            if (!clsArr[i2].isPrimitive()) {
                i++;
            }
        }
        if (i == 0) {
            return null;
        }
        int[] iArr = new int[i];
        int i3 = 0;
        for (int i4 = 0; i4 != clsArr.length; i4++) {
            i3 = i3;
            if (!clsArr[i4].isPrimitive()) {
                iArr[i3] = i4;
                i3++;
            }
        }
        return iArr;
    }

    public static Function getFunction(Scriptable scriptable, String str) {
        Object property = ScriptableObject.getProperty(scriptable, str);
        if (property == Scriptable.NOT_FOUND) {
            return null;
        }
        if (property instanceof Function) {
            return (Function) property;
        }
        throw ScriptRuntime.notFunctionError(property, str);
    }

    private static String getMethodSignature(Method method, Class<?>[] clsArr) {
        StringBuilder sb = new StringBuilder();
        appendMethodSignature(clsArr, method.getReturnType(), sb);
        return sb.toString();
    }

    private static ObjToIntMap getObjectFunctionNames(Scriptable scriptable) {
        Object[] propertyIds = ScriptableObject.getPropertyIds(scriptable);
        ObjToIntMap objToIntMap = new ObjToIntMap(propertyIds.length);
        for (int i = 0; i != propertyIds.length; i++) {
            if (propertyIds[i] instanceof String) {
                String str = (String) propertyIds[i];
                Object property = ScriptableObject.getProperty(scriptable, str);
                if (property instanceof Function) {
                    int int32 = ScriptRuntime.toInt32(ScriptableObject.getProperty((Function) property, "length"));
                    int i2 = int32;
                    if (int32 < 0) {
                        i2 = 0;
                    }
                    objToIntMap.put(str, i2);
                }
            }
        }
        return objToIntMap;
    }

    static Method[] getOverridableMethods(Class<?> cls) {
        Class<?> cls2;
        ArrayList arrayList = new ArrayList();
        HashSet hashSet = new HashSet();
        Class<?> cls3 = cls;
        while (true) {
            if (cls3 != null) {
                appendOverridableMethods(cls3, arrayList, hashSet);
                cls3 = cls3.getSuperclass();
            }
        }
        for (cls2 = cls; cls2 != null; cls2 = cls2.getSuperclass()) {
            for (Class<?> cls4 : cls2.getInterfaces()) {
                appendOverridableMethods(cls4, arrayList, hashSet);
            }
        }
        return (Method[]) arrayList.toArray(new Method[arrayList.size()]);
    }

    public static void init(Context context, Scriptable scriptable, boolean z) {
        IdFunctionObject idFunctionObject = new IdFunctionObject(new JavaAdapter(), FTAG, 1, "JavaAdapter", 1, scriptable);
        idFunctionObject.markAsConstructor(null);
        if (z) {
            idFunctionObject.sealObject();
        }
        idFunctionObject.exportAsScopeProperty();
    }

    static Object js_createAdapter(Context context, Scriptable scriptable, Object[] objArr) {
        Object obj;
        int length = objArr.length;
        if (length == 0) {
            throw ScriptRuntime.typeError0("msg.adapter.zero.args");
        }
        int i = 0;
        while (i < length - 1) {
            Object obj2 = objArr[i];
            if (obj2 instanceof NativeObject) {
                break;
            } else if (!(obj2 instanceof NativeJavaClass)) {
                throw ScriptRuntime.typeError2("msg.not.java.class.arg", String.valueOf(i), ScriptRuntime.toString(obj2));
            } else {
                i++;
            }
        }
        Class[] clsArr = new Class[i];
        Class<?> cls = null;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            Class<?> classObject = ((NativeJavaClass) objArr[i3]).getClassObject();
            if (classObject.isInterface()) {
                clsArr[i2] = classObject;
                i2++;
            } else if (cls != null) {
                throw ScriptRuntime.typeError2("msg.only.one.super", cls.getName(), classObject.getName());
            } else {
                cls = classObject;
            }
        }
        Class<?> cls2 = cls;
        if (cls == null) {
            cls2 = ScriptRuntime.ObjectClass;
        }
        Class[] clsArr2 = new Class[i2];
        System.arraycopy(clsArr, 0, clsArr2, 0, i2);
        Scriptable ensureScriptable = ScriptableObject.ensureScriptable(objArr[i]);
        Class<?> adapterClass = getAdapterClass(scriptable, cls2, clsArr2, ensureScriptable);
        int i4 = (length - i) - 1;
        try {
            if (i4 > 0) {
                Object[] objArr2 = new Object[i4 + 2];
                objArr2[0] = ensureScriptable;
                objArr2[1] = context.getFactory();
                System.arraycopy(objArr, i + 1, objArr2, 2, i4);
                NativeJavaMethod nativeJavaMethod = new NativeJavaClass(scriptable, adapterClass, true).members.ctors;
                int findCachedFunction = nativeJavaMethod.findCachedFunction(context, objArr2);
                if (findCachedFunction < 0) {
                    throw Context.reportRuntimeError2("msg.no.java.ctor", adapterClass.getName(), NativeJavaMethod.scriptSignature(objArr));
                }
                obj = NativeJavaClass.constructInternal(objArr2, nativeJavaMethod.methods[findCachedFunction]);
            } else {
                obj = adapterClass.getConstructor(ScriptRuntime.ScriptableClass, ScriptRuntime.ContextFactoryClass).newInstance(ensureScriptable, context.getFactory());
            }
            Object adapterSelf = getAdapterSelf(adapterClass, obj);
            if (adapterSelf instanceof Wrapper) {
                Object unwrap = ((Wrapper) adapterSelf).unwrap();
                if (unwrap instanceof Scriptable) {
                    if (unwrap instanceof ScriptableObject) {
                        ScriptRuntime.setObjectProtoAndParent((ScriptableObject) unwrap, scriptable);
                    }
                    return unwrap;
                }
            }
            return adapterSelf;
        } catch (Exception e) {
            throw Context.throwAsScriptRuntimeEx(e);
        }
    }

    static Class<?> loadAdapterClass(String str, byte[] bArr) {
        CodeSource codeSource;
        Class<?> staticSecurityDomainClass = SecurityController.getStaticSecurityDomainClass();
        if (staticSecurityDomainClass == CodeSource.class || staticSecurityDomainClass == ProtectionDomain.class) {
            ProtectionDomain scriptProtectionDomain = SecurityUtilities.getScriptProtectionDomain();
            ProtectionDomain protectionDomain = scriptProtectionDomain;
            if (scriptProtectionDomain == null) {
                protectionDomain = JavaAdapter.class.getProtectionDomain();
            }
            codeSource = protectionDomain;
            if (staticSecurityDomainClass == CodeSource.class) {
                if (protectionDomain != null) {
                    codeSource = protectionDomain.getCodeSource();
                }
            }
            GeneratedClassLoader createLoader = SecurityController.createLoader(null, codeSource);
            Class<?> defineClass = createLoader.defineClass(str, bArr);
            createLoader.linkClass(defineClass);
            return defineClass;
        }
        codeSource = null;
        GeneratedClassLoader createLoader2 = SecurityController.createLoader(null, codeSource);
        Class<?> defineClass2 = createLoader2.defineClass(str, bArr);
        createLoader2.linkClass(defineClass2);
        return defineClass2;
    }

    public static Object readAdapterObject(Scriptable scriptable, ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        Context currentContext = Context.getCurrentContext();
        ContextFactory factory = currentContext != null ? currentContext.getFactory() : null;
        Class<?> cls = Class.forName((String) objectInputStream.readObject());
        String[] strArr = (String[]) objectInputStream.readObject();
        Class[] clsArr = new Class[strArr.length];
        for (int i = 0; i < strArr.length; i++) {
            clsArr[i] = Class.forName(strArr[i]);
        }
        Scriptable scriptable2 = (Scriptable) objectInputStream.readObject();
        try {
            return getAdapterClass(scriptable, cls, clsArr, scriptable2).getConstructor(ScriptRuntime.ContextFactoryClass, ScriptRuntime.ScriptableClass, ScriptRuntime.ScriptableClass).newInstance(factory, scriptable2, scriptable);
        } catch (IllegalAccessException | InstantiationException | NoSuchMethodException | InvocationTargetException e) {
            throw new ClassNotFoundException("adapter");
        }
    }

    public static Scriptable runScript(final Script script) {
        return (Scriptable) ContextFactory.getGlobal().call(new ContextAction() { // from class: org.mozilla.javascript.JavaAdapter.2
            @Override // org.mozilla.javascript.ContextAction
            public Object run(Context context) {
                ScriptableObject global = ScriptRuntime.getGlobal(context);
                Script.this.exec(context, global);
                return global;
            }
        });
    }

    public static void writeAdapterObject(Object obj, ObjectOutputStream objectOutputStream) throws IOException {
        Class<?> cls = obj.getClass();
        objectOutputStream.writeObject(cls.getSuperclass().getName());
        Class<?>[] interfaces = cls.getInterfaces();
        String[] strArr = new String[interfaces.length];
        for (int i = 0; i < interfaces.length; i++) {
            strArr[i] = interfaces[i].getName();
        }
        objectOutputStream.writeObject(strArr);
        try {
            objectOutputStream.writeObject(cls.getField("delegee").get(obj));
        } catch (IllegalAccessException | NoSuchFieldException e) {
            throw new IOException();
        }
    }

    @Override // org.mozilla.javascript.IdFunctionCall
    public Object execIdCall(IdFunctionObject idFunctionObject, Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        if (idFunctionObject.hasTag(FTAG) && idFunctionObject.methodId() == 1) {
            return js_createAdapter(context, scriptable, objArr);
        }
        throw idFunctionObject.unknown();
    }
}
