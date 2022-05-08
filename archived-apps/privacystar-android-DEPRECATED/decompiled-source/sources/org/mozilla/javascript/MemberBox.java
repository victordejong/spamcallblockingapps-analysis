package org.mozilla.javascript;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/MemberBox.class */
public final class MemberBox implements Serializable {
    private static final Class<?>[] primitives = {Boolean.TYPE, Byte.TYPE, Character.TYPE, Double.TYPE, Float.TYPE, Integer.TYPE, Long.TYPE, Short.TYPE, Void.TYPE};
    static final long serialVersionUID = 6358550398665688245L;
    transient Class<?>[] argTypes;
    transient Object delegateTo;
    private transient Member memberObject;
    transient boolean vararg;

    /* JADX INFO: Access modifiers changed from: package-private */
    public MemberBox(Constructor<?> constructor) {
        init(constructor);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MemberBox(Method method) {
        init(method);
    }

    private void init(Constructor<?> constructor) {
        this.memberObject = constructor;
        this.argTypes = constructor.getParameterTypes();
        this.vararg = VMBridge.instance.isVarArgs(constructor);
    }

    private void init(Method method) {
        this.memberObject = method;
        this.argTypes = method.getParameterTypes();
        this.vararg = VMBridge.instance.isVarArgs(method);
    }

    private static Member readMember(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        if (!objectInputStream.readBoolean()) {
            return null;
        }
        boolean readBoolean = objectInputStream.readBoolean();
        String str = (String) objectInputStream.readObject();
        Class cls = (Class) objectInputStream.readObject();
        Class<?>[] readParameters = readParameters(objectInputStream);
        try {
            return readBoolean ? cls.getMethod(str, readParameters) : cls.getConstructor(readParameters);
        } catch (NoSuchMethodException e) {
            throw new IOException("Cannot find member: " + e);
        }
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        Member readMember = readMember(objectInputStream);
        if (readMember instanceof Method) {
            init((Method) readMember);
        } else {
            init((Constructor) readMember);
        }
    }

    private static Class<?>[] readParameters(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        Class<?>[] clsArr = new Class[objectInputStream.readShort()];
        for (int i = 0; i < clsArr.length; i++) {
            if (!objectInputStream.readBoolean()) {
                clsArr[i] = (Class) objectInputStream.readObject();
            } else {
                clsArr[i] = primitives[objectInputStream.readByte()];
            }
        }
        return clsArr;
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x005c, code lost:
        r0 = r4.getSuperclass();
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0062, code lost:
        if (r0 != null) goto L_0x0068;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0068, code lost:
        r4 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0071, code lost:
        if (java.lang.reflect.Modifier.isPublic(r0.getModifiers()) == false) goto L_0x005c;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0074, code lost:
        r0 = r0.getMethod(r0, r5);
        r0 = r0.getModifiers();
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0084, code lost:
        r4 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0089, code lost:
        if (java.lang.reflect.Modifier.isPublic(r0) == false) goto L_0x005c;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0093, code lost:
        r4 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0096, code lost:
        if (java.lang.reflect.Modifier.isStatic(r0) != false) goto L_0x005c;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x009b, code lost:
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00a3, code lost:
        r4 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:?, code lost:
        return null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.reflect.Method searchAccessibleMethod(java.lang.reflect.Method r4, java.lang.Class<?>[] r5) {
        /*
            r0 = r4
            int r0 = r0.getModifiers()
            r6 = r0
            r0 = r6
            boolean r0 = java.lang.reflect.Modifier.isPublic(r0)
            if (r0 == 0) goto L_0x009c
            r0 = r6
            boolean r0 = java.lang.reflect.Modifier.isStatic(r0)
            if (r0 != 0) goto L_0x009c
            r0 = r4
            java.lang.Class r0 = r0.getDeclaringClass()
            r7 = r0
            r0 = r7
            int r0 = r0.getModifiers()
            boolean r0 = java.lang.reflect.Modifier.isPublic(r0)
            if (r0 != 0) goto L_0x009c
            r0 = r4
            java.lang.String r0 = r0.getName()
            r8 = r0
            r0 = r7
            java.lang.Class[] r0 = r0.getInterfaces()
            r9 = r0
            r0 = 0
            r6 = r0
            r0 = r9
            int r0 = r0.length
            r10 = r0
        L_0x0035:
            r0 = r7
            r4 = r0
            r0 = r6
            r1 = r10
            if (r0 == r1) goto L_0x005c
            r0 = r9
            r1 = r6
            r0 = r0[r1]
            r4 = r0
            r0 = r4
            int r0 = r0.getModifiers()
            boolean r0 = java.lang.reflect.Modifier.isPublic(r0)
            if (r0 == 0) goto L_0x0056
            r0 = r4
            r1 = r8
            r2 = r5
            java.lang.reflect.Method r0 = r0.getMethod(r1, r2)     // Catch: NoSuchMethodException | SecurityException -> 0x009e
            r4 = r0
            r0 = r4
            return r0
        L_0x0056:
            int r6 = r6 + 1
            goto L_0x0035
        L_0x005c:
            r0 = r4
            java.lang.Class r0 = r0.getSuperclass()
            r7 = r0
            r0 = r7
            if (r0 != 0) goto L_0x0068
            goto L_0x009c
        L_0x0068:
            r0 = r7
            r4 = r0
            r0 = r7
            int r0 = r0.getModifiers()
            boolean r0 = java.lang.reflect.Modifier.isPublic(r0)
            if (r0 == 0) goto L_0x005c
            r0 = r7
            r1 = r8
            r2 = r5
            java.lang.reflect.Method r0 = r0.getMethod(r1, r2)     // Catch: NoSuchMethodException | SecurityException -> 0x00a2
            r9 = r0
            r0 = r9
            int r0 = r0.getModifiers()     // Catch: NoSuchMethodException | SecurityException -> 0x00a2
            r6 = r0
            r0 = r7
            r4 = r0
            r0 = r6
            boolean r0 = java.lang.reflect.Modifier.isPublic(r0)     // Catch: NoSuchMethodException | SecurityException -> 0x00a2
            if (r0 == 0) goto L_0x005c
            r0 = r6
            boolean r0 = java.lang.reflect.Modifier.isStatic(r0)     // Catch: NoSuchMethodException | SecurityException -> 0x00a2
            r11 = r0
            r0 = r7
            r4 = r0
            r0 = r11
            if (r0 != 0) goto L_0x005c
            r0 = r9
            return r0
        L_0x009c:
            r0 = 0
            return r0
        L_0x009e:
            r4 = move-exception
            goto L_0x0056
        L_0x00a2:
            r4 = move-exception
            r0 = r7
            r4 = r0
            goto L_0x005c
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.MemberBox.searchAccessibleMethod(java.lang.reflect.Method, java.lang.Class[]):java.lang.reflect.Method");
    }

    private static void writeMember(ObjectOutputStream objectOutputStream, Member member) throws IOException {
        if (member == null) {
            objectOutputStream.writeBoolean(false);
            return;
        }
        objectOutputStream.writeBoolean(true);
        boolean z = member instanceof Method;
        if (z || (member instanceof Constructor)) {
            objectOutputStream.writeBoolean(z);
            objectOutputStream.writeObject(member.getName());
            objectOutputStream.writeObject(member.getDeclaringClass());
            if (z) {
                writeParameters(objectOutputStream, ((Method) member).getParameterTypes());
            } else {
                writeParameters(objectOutputStream, ((Constructor) member).getParameterTypes());
            }
        } else {
            throw new IllegalArgumentException("not Method or Constructor");
        }
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        writeMember(objectOutputStream, this.memberObject);
    }

    private static void writeParameters(ObjectOutputStream objectOutputStream, Class<?>[] clsArr) throws IOException {
        objectOutputStream.writeShort(clsArr.length);
        for (Class<?> cls : clsArr) {
            boolean isPrimitive = cls.isPrimitive();
            objectOutputStream.writeBoolean(isPrimitive);
            if (!isPrimitive) {
                objectOutputStream.writeObject(cls);
            } else {
                for (int i = 0; i < primitives.length; i++) {
                    if (cls.equals(primitives[i])) {
                        objectOutputStream.writeByte(i);
                    }
                }
                throw new IllegalArgumentException("Primitive " + cls + " not found");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Constructor<?> ctor() {
        return (Constructor) this.memberObject;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Class<?> getDeclaringClass() {
        return this.memberObject.getDeclaringClass();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getName() {
        return this.memberObject.getName();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Object invoke(Object obj, Object[] objArr) {
        Throwable targetException;
        Method method = method();
        try {
            try {
                return method.invoke(obj, objArr);
            } catch (IllegalAccessException e) {
                Method searchAccessibleMethod = searchAccessibleMethod(method, this.argTypes);
                if (searchAccessibleMethod != null) {
                    this.memberObject = searchAccessibleMethod;
                } else {
                    searchAccessibleMethod = method;
                    if (!VMBridge.instance.tryToMakeAccessible(method)) {
                        throw Context.throwAsScriptRuntimeEx(e);
                    }
                }
                return searchAccessibleMethod.invoke(obj, objArr);
            }
        } catch (InvocationTargetException e2) {
            e = e2;
            do {
                targetException = e.getTargetException();
                e = targetException;
            } while (targetException instanceof InvocationTargetException);
            if (targetException instanceof ContinuationPending) {
                throw ((ContinuationPending) targetException);
            }
            throw Context.throwAsScriptRuntimeEx(targetException);
        } catch (Exception e3) {
            throw Context.throwAsScriptRuntimeEx(e3);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isCtor() {
        return this.memberObject instanceof Constructor;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isMethod() {
        return this.memberObject instanceof Method;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isStatic() {
        return Modifier.isStatic(this.memberObject.getModifiers());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Member member() {
        return this.memberObject;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Method method() {
        return (Method) this.memberObject;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Object newInstance(Object[] objArr) {
        Constructor<?> ctor = ctor();
        try {
            try {
                return ctor.newInstance(objArr);
            } catch (IllegalAccessException e) {
                if (VMBridge.instance.tryToMakeAccessible(ctor)) {
                    return ctor.newInstance(objArr);
                }
                throw Context.throwAsScriptRuntimeEx(e);
            }
        } catch (Exception e2) {
            throw Context.throwAsScriptRuntimeEx(e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String toJavaDeclaration() {
        StringBuilder sb = new StringBuilder();
        if (isMethod()) {
            Method method = method();
            sb.append(method.getReturnType());
            sb.append(' ');
            sb.append(method.getName());
        } else {
            String name = ctor().getDeclaringClass().getName();
            int lastIndexOf = name.lastIndexOf(46);
            String str = name;
            if (lastIndexOf >= 0) {
                str = name.substring(lastIndexOf + 1);
            }
            sb.append(str);
        }
        sb.append(JavaMembers.liveConnectSignature(this.argTypes));
        return sb.toString();
    }

    public String toString() {
        return this.memberObject.toString();
    }
}
