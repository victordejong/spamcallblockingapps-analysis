package org.mozilla.classfile;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:org/mozilla/classfile/TypeInfo.class */
public final class TypeInfo {
    static final int DOUBLE = 3;
    static final int FLOAT = 2;
    static final int INTEGER = 1;
    static final int LONG = 4;
    static final int NULL = 5;
    static final int OBJECT_TAG = 7;
    static final int TOP = 0;
    static final int UNINITIALIZED_THIS = 6;
    static final int UNINITIALIZED_VAR_TAG = 8;

    private TypeInfo() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final int OBJECT(int i) {
        return ((i & 65535) << 8) | 7;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final int OBJECT(String str, ConstantPool constantPool) {
        return OBJECT(constantPool.addClass(str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final int UNINITIALIZED_VARIABLE(int i) {
        return ((i & 65535) << 8) | 8;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final int fromType(String str, ConstantPool constantPool) {
        if (str.length() != 1) {
            return OBJECT(str, constantPool);
        }
        char charAt = str.charAt(0);
        if (charAt == 'F') {
            return 2;
        }
        if (charAt == 'S' || charAt == 'Z') {
            return 1;
        }
        switch (charAt) {
            case 'B':
            case 'C':
                return 1;
            case 'D':
                return 3;
            default:
                switch (charAt) {
                    case 'I':
                        return 1;
                    case 'J':
                        return 4;
                    default:
                        throw new IllegalArgumentException("bad type");
                }
        }
    }

    static Class<?> getClassFromInternalName(String str) {
        try {
            return Class.forName(str.replace('/', '.'));
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
    }

    static final int getPayload(int i) {
        return i >>> 8;
    }

    static final String getPayloadAsType(int i, ConstantPool constantPool) {
        if (getTag(i) == 7) {
            return (String) constantPool.getConstantData(getPayload(i));
        }
        throw new IllegalArgumentException("expecting object type");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final int getTag(int i) {
        return i & 255;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean isTwoWords(int i) {
        return i == 3 || i == 4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int merge(int i, int i2, ConstantPool constantPool) {
        int tag = getTag(i);
        int tag2 = getTag(i2);
        boolean z = true;
        boolean z2 = tag == 7;
        if (tag2 != 7) {
            z = false;
        }
        if (i == i2 || (z2 && i2 == 5)) {
            return i;
        }
        if (tag == 0 || tag2 == 0) {
            return 0;
        }
        if (i == 5 && z) {
            return i2;
        }
        if (z2 && z) {
            String payloadAsType = getPayloadAsType(i, constantPool);
            String payloadAsType2 = getPayloadAsType(i2, constantPool);
            String str = (String) constantPool.getConstantData(2);
            String str2 = (String) constantPool.getConstantData(4);
            String str3 = payloadAsType;
            if (payloadAsType.equals(str)) {
                str3 = str2;
            }
            String str4 = payloadAsType2;
            if (payloadAsType2.equals(str)) {
                str4 = str2;
            }
            Class<?> classFromInternalName = getClassFromInternalName(str3);
            Class<?> classFromInternalName2 = getClassFromInternalName(str4);
            if (classFromInternalName.isAssignableFrom(classFromInternalName2)) {
                return i;
            }
            if (classFromInternalName2.isAssignableFrom(classFromInternalName)) {
                return i2;
            }
            if (classFromInternalName2.isInterface() || classFromInternalName.isInterface()) {
                return OBJECT("java/lang/Object", constantPool);
            }
            for (Class<? super Object> superclass = classFromInternalName2.getSuperclass(); superclass != null; superclass = superclass.getSuperclass()) {
                if (superclass.isAssignableFrom(classFromInternalName)) {
                    return OBJECT(ClassFileWriter.getSlashedForm(superclass.getName()), constantPool);
                }
            }
        }
        throw new IllegalArgumentException("bad merge attempt between " + toString(i, constantPool) + " and " + toString(i2, constantPool));
    }

    static void print(int[] iArr, int i, int[] iArr2, int i2, ConstantPool constantPool) {
        System.out.print("locals: ");
        System.out.println(toString(iArr, i, constantPool));
        System.out.print("stack: ");
        System.out.println(toString(iArr2, i2, constantPool));
        System.out.println();
    }

    static void print(int[] iArr, int[] iArr2, ConstantPool constantPool) {
        print(iArr, iArr.length, iArr2, iArr2.length, constantPool);
    }

    static String toString(int i, ConstantPool constantPool) {
        int tag = getTag(i);
        switch (tag) {
            case 0:
                return "top";
            case 1:
                return "int";
            case 2:
                return "float";
            case 3:
                return "double";
            case 4:
                return "long";
            case 5:
                return "null";
            case 6:
                return "uninitialized_this";
            default:
                if (tag == 7) {
                    return getPayloadAsType(i, constantPool);
                }
                if (tag == 8) {
                    return "uninitialized";
                }
                throw new IllegalArgumentException("bad type");
        }
    }

    static String toString(int[] iArr, int i, ConstantPool constantPool) {
        StringBuilder sb = new StringBuilder();
        sb.append("[");
        for (int i2 = 0; i2 < i; i2++) {
            if (i2 > 0) {
                sb.append(", ");
            }
            sb.append(toString(iArr[i2], constantPool));
        }
        sb.append("]");
        return sb.toString();
    }

    static String toString(int[] iArr, ConstantPool constantPool) {
        return toString(iArr, iArr.length, constantPool);
    }
}
