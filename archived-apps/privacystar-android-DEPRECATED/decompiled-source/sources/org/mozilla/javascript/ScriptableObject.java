package org.mozilla.javascript;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.lang.annotation.Annotation;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;
import org.mozilla.javascript.TopLevel;
import org.mozilla.javascript.annotations.JSSetter;
import org.mozilla.javascript.debug.DebuggableObject;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/ScriptableObject.class */
public abstract class ScriptableObject implements Scriptable, Serializable, DebuggableObject, ConstProperties {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    public static final int CONST = 13;
    public static final int DONTENUM = 2;
    public static final int EMPTY = 0;
    private static final Method GET_ARRAY_LENGTH;
    private static final int INITIAL_SLOT_SIZE = 4;
    public static final int PERMANENT = 4;
    public static final int READONLY = 1;
    private static final int SLOT_CONVERT_ACCESSOR_TO_DATA = 5;
    private static final int SLOT_MODIFY = 2;
    private static final int SLOT_MODIFY_CONST = 3;
    private static final int SLOT_MODIFY_GETTER_SETTER = 4;
    private static final int SLOT_QUERY = 1;
    public static final int UNINITIALIZED_CONST = 8;
    static final long serialVersionUID = 2829861078851942586L;
    private volatile Map<Object, Object> associatedValues;
    private int count;
    private transient ExternalArrayData externalData;
    private transient Slot firstAdded;
    private boolean isExtensible = true;
    private transient Slot lastAdded;
    private Scriptable parentScopeObject;
    private Scriptable prototypeObject;
    private transient Slot[] slots;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/ScriptableObject$GetterSlot.class */
    public static final class GetterSlot extends Slot {
        static final long serialVersionUID = -4900574849788797588L;
        Object getter;
        Object setter;

        GetterSlot(String str, int i, int i2) {
            super(str, i, i2);
        }

        @Override // org.mozilla.javascript.ScriptableObject.Slot
        ScriptableObject getPropertyDescriptor(Context context, Scriptable scriptable) {
            int attributes = getAttributes();
            NativeObject nativeObject = new NativeObject();
            ScriptRuntime.setBuiltinProtoAndParent(nativeObject, scriptable, TopLevel.Builtins.Object);
            boolean z = true;
            nativeObject.defineProperty("enumerable", Boolean.valueOf((attributes & 2) == 0), 0);
            if ((attributes & 4) != 0) {
                z = false;
            }
            nativeObject.defineProperty("configurable", Boolean.valueOf(z), 0);
            if (this.getter != null) {
                nativeObject.defineProperty("get", this.getter, 0);
            }
            if (this.setter != null) {
                nativeObject.defineProperty("set", this.setter, 0);
            }
            return nativeObject;
        }

        @Override // org.mozilla.javascript.ScriptableObject.Slot
        Object getValue(Scriptable scriptable) {
            Object[] objArr;
            Object obj;
            if (this.getter != null) {
                if (this.getter instanceof MemberBox) {
                    MemberBox memberBox = (MemberBox) this.getter;
                    if (memberBox.delegateTo == null) {
                        objArr = ScriptRuntime.emptyArgs;
                        obj = scriptable;
                    } else {
                        objArr = new Object[]{scriptable};
                        obj = memberBox.delegateTo;
                    }
                    return memberBox.invoke(obj, objArr);
                } else if (this.getter instanceof Function) {
                    Function function = (Function) this.getter;
                    return function.call(Context.getContext(), function.getParentScope(), scriptable, ScriptRuntime.emptyArgs);
                }
            }
            Object obj2 = this.value;
            Object obj3 = obj2;
            if (obj2 instanceof LazilyLoadedCtor) {
                LazilyLoadedCtor lazilyLoadedCtor = (LazilyLoadedCtor) obj2;
                try {
                    lazilyLoadedCtor.init();
                } finally {
                    this.value = lazilyLoadedCtor.getValue();
                }
            }
            return obj3;
        }

        @Override // org.mozilla.javascript.ScriptableObject.Slot
        void markDeleted() {
            super.markDeleted();
            this.getter = null;
            this.setter = null;
        }

        @Override // org.mozilla.javascript.ScriptableObject.Slot
        boolean setValue(Object obj, Scriptable scriptable, Scriptable scriptable2) {
            Object[] objArr;
            Object obj2;
            if (this.setter != null) {
                Context context = Context.getContext();
                if (this.setter instanceof MemberBox) {
                    MemberBox memberBox = (MemberBox) this.setter;
                    Class<?>[] clsArr = memberBox.argTypes;
                    Object convertArg = FunctionObject.convertArg(context, scriptable2, obj, FunctionObject.getTypeTag(clsArr[clsArr.length - 1]));
                    if (memberBox.delegateTo == null) {
                        objArr = new Object[]{convertArg};
                        obj2 = scriptable2;
                    } else {
                        obj2 = memberBox.delegateTo;
                        objArr = new Object[]{scriptable2, convertArg};
                    }
                    memberBox.invoke(obj2, objArr);
                    return true;
                } else if (!(this.setter instanceof Function)) {
                    return true;
                } else {
                    Function function = (Function) this.setter;
                    function.call(context, function.getParentScope(), scriptable2, new Object[]{obj});
                    return true;
                }
            } else if (this.getter == null) {
                return super.setValue(obj, scriptable, scriptable2);
            } else {
                if (!Context.getContext().hasFeature(11)) {
                    return true;
                }
                throw ScriptRuntime.typeError1("msg.set.prop.no.setter", this.name);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/ScriptableObject$RelinkedSlot.class */
    public static class RelinkedSlot extends Slot {
        final Slot slot;

        RelinkedSlot(Slot slot) {
            super(slot.name, slot.indexOrHash, slot.attributes);
            this.slot = ScriptableObject.unwrapSlot(slot);
        }

        private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
            objectOutputStream.writeObject(this.slot);
        }

        @Override // org.mozilla.javascript.ScriptableObject.Slot
        int getAttributes() {
            return this.slot.getAttributes();
        }

        @Override // org.mozilla.javascript.ScriptableObject.Slot
        ScriptableObject getPropertyDescriptor(Context context, Scriptable scriptable) {
            return this.slot.getPropertyDescriptor(context, scriptable);
        }

        @Override // org.mozilla.javascript.ScriptableObject.Slot
        Object getValue(Scriptable scriptable) {
            return this.slot.getValue(scriptable);
        }

        @Override // org.mozilla.javascript.ScriptableObject.Slot
        void markDeleted() {
            super.markDeleted();
            this.slot.markDeleted();
        }

        @Override // org.mozilla.javascript.ScriptableObject.Slot
        void setAttributes(int i) {
            this.slot.setAttributes(i);
        }

        @Override // org.mozilla.javascript.ScriptableObject.Slot
        boolean setValue(Object obj, Scriptable scriptable, Scriptable scriptable2) {
            return this.slot.setValue(obj, scriptable, scriptable2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/ScriptableObject$Slot.class */
    public static class Slot implements Serializable {
        private static final long serialVersionUID = -6090581677123995491L;
        private volatile short attributes;
        int indexOrHash;
        String name;
        transient Slot next;
        volatile transient Slot orderedNext;
        volatile Object value;
        volatile transient boolean wasDeleted;

        Slot(String str, int i, int i2) {
            this.name = str;
            this.indexOrHash = i;
            this.attributes = (short) i2;
        }

        private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
            objectInputStream.defaultReadObject();
            if (this.name != null) {
                this.indexOrHash = this.name.hashCode();
            }
        }

        int getAttributes() {
            return this.attributes;
        }

        ScriptableObject getPropertyDescriptor(Context context, Scriptable scriptable) {
            return ScriptableObject.buildDataDescriptor(scriptable, this.value, this.attributes);
        }

        Object getValue(Scriptable scriptable) {
            return this.value;
        }

        void markDeleted() {
            this.wasDeleted = true;
            this.value = null;
            this.name = null;
        }

        void setAttributes(int i) {
            synchronized (this) {
                ScriptableObject.checkValidAttributes(i);
                this.attributes = (short) i;
            }
        }

        boolean setValue(Object obj, Scriptable scriptable, Scriptable scriptable2) {
            if ((this.attributes & 1) != 0) {
                return true;
            }
            if (scriptable != scriptable2) {
                return false;
            }
            this.value = obj;
            return true;
        }
    }

    static {
        try {
            GET_ARRAY_LENGTH = ScriptableObject.class.getMethod("getExternalArrayLength", new Class[0]);
        } catch (NoSuchMethodException e) {
            throw new RuntimeException(e);
        }
    }

    public ScriptableObject() {
    }

    public ScriptableObject(Scriptable scriptable, Scriptable scriptable2) {
        if (scriptable == null) {
            throw new IllegalArgumentException();
        }
        this.parentScopeObject = scriptable;
        this.prototypeObject = scriptable2;
    }

    private static void addKnownAbsentSlot(Slot[] slotArr, Slot slot, int i) {
        if (slotArr[i] == null) {
            slotArr[i] = slot;
            return;
        }
        Slot slot2 = slotArr[i];
        Slot slot3 = slot2.next;
        while (slot3 != null) {
            slot3 = slot3.next;
            slot2 = slot3;
        }
        slot2.next = slot;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:139:0x0390, code lost:
        if (r9 == null) goto L_0x02db;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:149:0x03b9  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x03c0  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x03e3  */
    /* JADX WARN: Removed duplicated region for block: B:208:0x03d8 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0193  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x01b5  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x01c8  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x01db  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0249  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0257  */
    /* JADX WARN: Type inference failed for: r14v5 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static <T extends org.mozilla.javascript.Scriptable> org.mozilla.javascript.BaseFunction buildClassCtor(org.mozilla.javascript.Scriptable r8, java.lang.Class<T> r9, boolean r10, boolean r11) throws java.lang.IllegalAccessException, java.lang.InstantiationException, java.lang.reflect.InvocationTargetException {
        /*
            Method dump skipped, instructions count: 1263
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.ScriptableObject.buildClassCtor(org.mozilla.javascript.Scriptable, java.lang.Class, boolean, boolean):org.mozilla.javascript.BaseFunction");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static ScriptableObject buildDataDescriptor(Scriptable scriptable, Object obj, int i) {
        NativeObject nativeObject = new NativeObject();
        ScriptRuntime.setBuiltinProtoAndParent(nativeObject, scriptable, TopLevel.Builtins.Object);
        nativeObject.defineProperty(FirebaseAnalytics.Param.VALUE, obj, 0);
        boolean z = true;
        nativeObject.defineProperty("writable", Boolean.valueOf((i & 1) == 0), 0);
        nativeObject.defineProperty("enumerable", Boolean.valueOf((i & 2) == 0), 0);
        if ((i & 4) != 0) {
            z = false;
        }
        nativeObject.defineProperty("configurable", Boolean.valueOf(z), 0);
        return nativeObject;
    }

    public static Object callMethod(Context context, Scriptable scriptable, String str, Object[] objArr) {
        Object property = getProperty(scriptable, str);
        if (!(property instanceof Function)) {
            throw ScriptRuntime.notFunctionError(scriptable, str);
        }
        Function function = (Function) property;
        Scriptable topLevelScope = getTopLevelScope(scriptable);
        return context != null ? function.call(context, topLevelScope, scriptable, objArr) : Context.call(null, function, topLevelScope, scriptable, objArr);
    }

    public static Object callMethod(Scriptable scriptable, String str, Object[] objArr) {
        return callMethod(null, scriptable, str, objArr);
    }

    private void checkNotSealed(String str, int i) {
        if (isSealed()) {
            if (str == null) {
                str = Integer.toString(i);
            }
            throw Context.reportRuntimeError1("msg.modify.sealed", str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void checkValidAttributes(int i) {
        if ((i & (-16)) != 0) {
            throw new IllegalArgumentException(String.valueOf(i));
        }
    }

    private static void copyTable(Slot[] slotArr, Slot[] slotArr2, int i) {
        if (i == 0) {
            throw Kit.codeBug();
        }
        int length = slotArr2.length;
        int length2 = slotArr.length;
        int i2 = i;
        while (true) {
            int i3 = length2 - 1;
            Slot slot = slotArr[i3];
            while (true) {
                length2 = i3;
                i2 = i2;
                if (slot != null) {
                    addKnownAbsentSlot(slotArr2, slot.next == null ? slot : new RelinkedSlot(slot), getSlotIndex(length, slot.indexOrHash));
                    slot = slot.next;
                    int i4 = i2 - 1;
                    i2 = i4;
                    if (i4 == 0) {
                        return;
                    }
                }
            }
        }
    }

    private Slot createSlot(String str, int i, int i2) {
        int i3;
        Slot[] slotArr;
        Slot slot;
        synchronized (this) {
            Slot[] slotArr2 = this.slots;
            if (this.count == 0) {
                slotArr = new Slot[4];
                this.slots = slotArr;
                i3 = getSlotIndex(slotArr.length, i);
            } else {
                i3 = getSlotIndex(slotArr2.length, i);
                Slot slot2 = slotArr2[i3];
                Slot slot3 = slot2;
                while (slot2 != null && (slot2.indexOrHash != i || (slot2.name != str && (str == null || !str.equals(slot2.name))))) {
                    slot2 = slot2.next;
                    slot3 = slot2;
                }
                if (slot2 != null) {
                    Slot unwrapSlot = unwrapSlot(slot2);
                    if (i2 == 4 && !(unwrapSlot instanceof GetterSlot)) {
                        slot = new GetterSlot(str, i, unwrapSlot.getAttributes());
                    } else if (i2 == 5 && (unwrapSlot instanceof GetterSlot)) {
                        slot = new Slot(str, i, unwrapSlot.getAttributes());
                    } else if (i2 == 3) {
                        return null;
                    } else {
                        return unwrapSlot;
                    }
                    slot.value = unwrapSlot.value;
                    slot.next = slot2.next;
                    if (this.lastAdded != null) {
                        this.lastAdded.orderedNext = slot;
                    }
                    if (this.firstAdded == null) {
                        this.firstAdded = slot;
                    }
                    this.lastAdded = slot;
                    if (slot3 == slot2) {
                        slotArr2[i3] = slot;
                    } else {
                        slot3.next = slot;
                    }
                    slot2.markDeleted();
                    return slot;
                }
                slotArr = slotArr2;
                if ((this.count + 1) * 4 > slotArr2.length * 3) {
                    slotArr = new Slot[slotArr2.length * 2];
                    copyTable(this.slots, slotArr, this.count);
                    this.slots = slotArr;
                    i3 = getSlotIndex(slotArr.length, i);
                }
            }
            Slot getterSlot = i2 == 4 ? new GetterSlot(str, i, 0) : new Slot(str, i, 0);
            if (i2 == 3) {
                getterSlot.setAttributes(13);
            }
            this.count++;
            if (this.lastAdded != null) {
                this.lastAdded.orderedNext = getterSlot;
            }
            if (this.firstAdded == null) {
                this.firstAdded = getterSlot;
            }
            this.lastAdded = getterSlot;
            addKnownAbsentSlot(slotArr, getterSlot, i3);
            return getterSlot;
        }
    }

    public static <T extends Scriptable> String defineClass(Scriptable scriptable, Class<T> cls, boolean z, boolean z2) throws IllegalAccessException, InstantiationException, InvocationTargetException {
        BaseFunction buildClassCtor = buildClassCtor(scriptable, cls, z, z2);
        if (buildClassCtor == null) {
            return null;
        }
        String className = buildClassCtor.getClassPrototype().getClassName();
        defineProperty(scriptable, className, buildClassCtor, 2);
        return className;
    }

    public static <T extends Scriptable> void defineClass(Scriptable scriptable, Class<T> cls) throws IllegalAccessException, InstantiationException, InvocationTargetException {
        defineClass(scriptable, cls, false, false);
    }

    public static <T extends Scriptable> void defineClass(Scriptable scriptable, Class<T> cls, boolean z) throws IllegalAccessException, InstantiationException, InvocationTargetException {
        defineClass(scriptable, cls, z, false);
    }

    public static void defineConstProperty(Scriptable scriptable, String str) {
        if (scriptable instanceof ConstProperties) {
            ((ConstProperties) scriptable).defineConst(str, scriptable);
        } else {
            defineProperty(scriptable, str, Undefined.instance, 13);
        }
    }

    public static void defineProperty(Scriptable scriptable, String str, Object obj, int i) {
        if (!(scriptable instanceof ScriptableObject)) {
            scriptable.put(str, scriptable, obj);
        } else {
            ((ScriptableObject) scriptable).defineProperty(str, obj, i);
        }
    }

    public static boolean deleteProperty(Scriptable scriptable, int i) {
        Scriptable base = getBase(scriptable, i);
        if (base == null) {
            return true;
        }
        base.delete(i);
        return !base.has(i, scriptable);
    }

    public static boolean deleteProperty(Scriptable scriptable, String str) {
        Scriptable base = getBase(scriptable, str);
        if (base == null) {
            return true;
        }
        base.delete(str);
        return !base.has(str, scriptable);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static Scriptable ensureScriptable(Object obj) {
        if (obj instanceof Scriptable) {
            return (Scriptable) obj;
        }
        throw ScriptRuntime.typeError1("msg.arg.not.object", ScriptRuntime.typeof(obj));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static ScriptableObject ensureScriptableObject(Object obj) {
        if (obj instanceof ScriptableObject) {
            return (ScriptableObject) obj;
        }
        throw ScriptRuntime.typeError1("msg.arg.not.object", ScriptRuntime.typeof(obj));
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static <T extends Scriptable> Class<T> extendsScriptable(Class<?> cls) {
        if (ScriptRuntime.ScriptableClass.isAssignableFrom(cls)) {
            return cls;
        }
        return null;
    }

    private static Member findAnnotatedMember(AccessibleObject[] accessibleObjectArr, Class<? extends Annotation> cls) {
        for (AccessibleObject accessibleObject : accessibleObjectArr) {
            if (accessibleObject.isAnnotationPresent(cls)) {
                return (Member) accessibleObject;
            }
        }
        return null;
    }

    private Slot findAttributeSlot(String str, int i, int i2) {
        Slot slot = getSlot(str, i, i2);
        if (slot != null) {
            return slot;
        }
        if (str == null) {
            str = Integer.toString(i);
        }
        throw Context.reportRuntimeError1("msg.prop.not.found", str);
    }

    private static Method findSetterMethod(Method[] methodArr, String str, String str2) {
        StringBuilder sb = new StringBuilder();
        sb.append("set");
        sb.append(Character.toUpperCase(str.charAt(0)));
        sb.append(str.substring(1));
        String sb2 = sb.toString();
        for (Method method : methodArr) {
            JSSetter jSSetter = (JSSetter) method.getAnnotation(JSSetter.class);
            if (jSSetter != null && (str.equals(jSSetter.value()) || ("".equals(jSSetter.value()) && sb2.equals(method.getName())))) {
                return method;
            }
        }
        String str3 = str2 + str;
        for (Method method2 : methodArr) {
            if (str3.equals(method2.getName())) {
                return method2;
            }
        }
        return null;
    }

    public static Scriptable getArrayPrototype(Scriptable scriptable) {
        return TopLevel.getBuiltinPrototype(getTopLevelScope(scriptable), TopLevel.Builtins.Array);
    }

    private static Scriptable getBase(Scriptable scriptable, int i) {
        while (true) {
            if (!scriptable.has(i, scriptable)) {
                Scriptable prototype = scriptable.getPrototype();
                scriptable = prototype;
                if (prototype == null) {
                    scriptable = prototype;
                    break;
                }
            } else {
                break;
            }
        }
        return scriptable;
    }

    private static Scriptable getBase(Scriptable scriptable, String str) {
        while (true) {
            if (!scriptable.has(str, scriptable)) {
                Scriptable prototype = scriptable.getPrototype();
                scriptable = prototype;
                if (prototype == null) {
                    scriptable = prototype;
                    break;
                }
            } else {
                break;
            }
        }
        return scriptable;
    }

    public static Scriptable getClassPrototype(Scriptable scriptable, String str) {
        Object obj;
        Object property = getProperty(getTopLevelScope(scriptable), str);
        if (property instanceof BaseFunction) {
            obj = ((BaseFunction) property).getPrototypeProperty();
        } else if (!(property instanceof Scriptable)) {
            return null;
        } else {
            Scriptable scriptable2 = (Scriptable) property;
            obj = scriptable2.get("prototype", scriptable2);
        }
        if (obj instanceof Scriptable) {
            return (Scriptable) obj;
        }
        return null;
    }

    public static Object getDefaultValue(Scriptable scriptable, Class<?> cls) {
        Object[] objArr;
        String str;
        String str2;
        Context context = null;
        int i = 0;
        while (i < 2) {
            boolean z = cls != ScriptRuntime.StringClass ? i == 1 : i == 0;
            if (z) {
                str = "toString";
                objArr = ScriptRuntime.emptyArgs;
            } else {
                if (cls == null) {
                    str2 = "undefined";
                } else if (cls == ScriptRuntime.StringClass) {
                    str2 = "string";
                } else if (cls == ScriptRuntime.ScriptableClass) {
                    str2 = "object";
                } else if (cls == ScriptRuntime.FunctionClass) {
                    str2 = "function";
                } else if (cls == ScriptRuntime.BooleanClass || cls == Boolean.TYPE) {
                    str2 = "boolean";
                } else if (cls == ScriptRuntime.NumberClass || cls == ScriptRuntime.ByteClass || cls == Byte.TYPE || cls == ScriptRuntime.ShortClass || cls == Short.TYPE || cls == ScriptRuntime.IntegerClass || cls == Integer.TYPE || cls == ScriptRuntime.FloatClass || cls == Float.TYPE || cls == ScriptRuntime.DoubleClass || cls == Double.TYPE) {
                    str2 = "number";
                } else {
                    throw Context.reportRuntimeError1("msg.invalid.type", cls.toString());
                }
                objArr = new Object[]{str2};
                str = "valueOf";
            }
            Object property = getProperty(scriptable, str);
            if (property instanceof Function) {
                Function function = (Function) property;
                Context context2 = context;
                if (context == null) {
                    context2 = Context.getContext();
                }
                Object call = function.call(context2, function.getParentScope(), scriptable, objArr);
                context = context2;
                if (call == null) {
                    continue;
                } else if (!(call instanceof Scriptable)) {
                    return call;
                } else {
                    if (cls == ScriptRuntime.ScriptableClass || cls == ScriptRuntime.FunctionClass) {
                        return call;
                    }
                    context = context2;
                    if (z) {
                        context = context2;
                        if (call instanceof Wrapper) {
                            Object unwrap = ((Wrapper) call).unwrap();
                            context = context2;
                            if (unwrap instanceof String) {
                                return unwrap;
                            }
                        } else {
                            continue;
                        }
                    } else {
                        continue;
                    }
                }
            }
            i++;
        }
        throw ScriptRuntime.typeError1("msg.default.value", cls == null ? "undefined" : cls.getName());
    }

    public static Scriptable getFunctionPrototype(Scriptable scriptable) {
        return TopLevel.getBuiltinPrototype(getTopLevelScope(scriptable), TopLevel.Builtins.Function);
    }

    public static Scriptable getObjectPrototype(Scriptable scriptable) {
        return TopLevel.getBuiltinPrototype(getTopLevelScope(scriptable), TopLevel.Builtins.Object);
    }

    public static Object getProperty(Scriptable scriptable, int i) {
        Object obj;
        Scriptable prototype;
        Scriptable scriptable2 = scriptable;
        do {
            obj = scriptable2.get(i, scriptable);
            if (obj != Scriptable.NOT_FOUND) {
                break;
            }
            prototype = scriptable2.getPrototype();
            scriptable2 = prototype;
        } while (prototype != null);
        return obj;
    }

    public static Object getProperty(Scriptable scriptable, String str) {
        Object obj;
        Scriptable prototype;
        Scriptable scriptable2 = scriptable;
        do {
            obj = scriptable2.get(str, scriptable);
            if (obj != Scriptable.NOT_FOUND) {
                break;
            }
            prototype = scriptable2.getPrototype();
            scriptable2 = prototype;
        } while (prototype != null);
        return obj;
    }

    public static Object[] getPropertyIds(Scriptable scriptable) {
        if (scriptable == null) {
            return ScriptRuntime.emptyArgs;
        }
        Object[] ids = scriptable.getIds();
        ObjToIntMap objToIntMap = null;
        Scriptable scriptable2 = scriptable;
        while (true) {
            Scriptable prototype = scriptable2.getPrototype();
            if (prototype == null) {
                break;
            }
            Object[] ids2 = prototype.getIds();
            if (ids2.length == 0) {
                scriptable2 = prototype;
            } else {
                ObjToIntMap objToIntMap2 = objToIntMap;
                ids = ids;
                int i = 0;
                if (objToIntMap == null) {
                    if (ids.length == 0) {
                        ids = ids2;
                        scriptable2 = prototype;
                    } else {
                        objToIntMap2 = new ObjToIntMap(ids.length + ids2.length);
                        for (int i2 = 0; i2 != ids.length; i2++) {
                            objToIntMap2.intern(ids[i2]);
                        }
                        ids = null;
                        i = 0;
                    }
                }
                while (true) {
                    objToIntMap = objToIntMap2;
                    scriptable2 = prototype;
                    if (i != ids2.length) {
                        objToIntMap2.intern(ids2[i]);
                        i++;
                    }
                }
            }
        }
        if (objToIntMap != null) {
            ids = objToIntMap.getKeys();
        }
        return ids;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x002a, code lost:
        if (r0.length() == 0) goto L_0x002d;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.String getPropertyName(java.lang.String r4, java.lang.String r5, java.lang.annotation.Annotation r6) {
        /*
            Method dump skipped, instructions count: 213
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.ScriptableObject.getPropertyName(java.lang.String, java.lang.String, java.lang.annotation.Annotation):java.lang.String");
    }

    private Slot getSlot(String str, int i, int i2) {
        Slot[] slotArr = this.slots;
        if (slotArr == null && i2 == 1) {
            return null;
        }
        if (str != null) {
            i = str.hashCode();
        }
        if (slotArr != null) {
            Slot slot = slotArr[getSlotIndex(slotArr.length, i)];
            while (slot != null) {
                String str2 = slot.name;
                if (i == slot.indexOrHash && (str2 == str || (str != null && str.equals(str2)))) {
                    break;
                }
                slot = slot.next;
            }
            switch (i2) {
                case 1:
                    return slot;
                case 2:
                case 3:
                    if (slot != null) {
                        return slot;
                    }
                    break;
                case 4:
                    Slot unwrapSlot = unwrapSlot(slot);
                    if (unwrapSlot instanceof GetterSlot) {
                        return unwrapSlot;
                    }
                    break;
                case 5:
                    Slot unwrapSlot2 = unwrapSlot(slot);
                    if (!(unwrapSlot2 instanceof GetterSlot)) {
                        return unwrapSlot2;
                    }
                    break;
            }
        }
        return createSlot(str, i, i2);
    }

    private static int getSlotIndex(int i, int i2) {
        return (i - 1) & i2;
    }

    public static Scriptable getTopLevelScope(Scriptable scriptable) {
        while (true) {
            Scriptable parentScope = scriptable.getParentScope();
            if (parentScope == null) {
                return scriptable;
            }
            scriptable = parentScope;
        }
    }

    public static Object getTopScopeValue(Scriptable scriptable, Object obj) {
        Scriptable prototype;
        Object associatedValue;
        Scriptable topLevelScope = getTopLevelScope(scriptable);
        do {
            if ((topLevelScope instanceof ScriptableObject) && (associatedValue = ((ScriptableObject) topLevelScope).getAssociatedValue(obj)) != null) {
                return associatedValue;
            }
            prototype = topLevelScope.getPrototype();
            topLevelScope = prototype;
        } while (prototype != null);
        return null;
    }

    public static <T> T getTypedProperty(Scriptable scriptable, int i, Class<T> cls) {
        Object property = getProperty(scriptable, i);
        Object obj = property;
        if (property == Scriptable.NOT_FOUND) {
            obj = null;
        }
        return cls.cast(Context.jsToJava(obj, cls));
    }

    public static <T> T getTypedProperty(Scriptable scriptable, String str, Class<T> cls) {
        Object property = getProperty(scriptable, str);
        Object obj = property;
        if (property == Scriptable.NOT_FOUND) {
            obj = null;
        }
        return cls.cast(Context.jsToJava(obj, cls));
    }

    public static boolean hasProperty(Scriptable scriptable, int i) {
        return getBase(scriptable, i) != null;
    }

    public static boolean hasProperty(Scriptable scriptable, String str) {
        return getBase(scriptable, str) != null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static boolean isFalse(Object obj) {
        return !isTrue(obj);
    }

    protected static boolean isTrue(Object obj) {
        return obj != NOT_FOUND && ScriptRuntime.toBoolean(obj);
    }

    private boolean putConstImpl(String str, int i, Scriptable scriptable, Object obj, int i2) {
        Slot slot;
        if (this != scriptable) {
            Slot slot2 = getSlot(str, i, 1);
            slot = slot2;
            if (slot2 == null) {
                return false;
            }
        } else if (!isExtensible()) {
            Slot slot3 = getSlot(str, i, 1);
            slot = slot3;
            if (slot3 == null) {
                return true;
            }
        } else {
            checkNotSealed(str, i);
            Slot unwrapSlot = unwrapSlot(getSlot(str, i, 3));
            int attributes = unwrapSlot.getAttributes();
            if ((attributes & 1) == 0) {
                throw Context.reportRuntimeError1("msg.var.redecl", str);
            } else if ((attributes & 8) == 0) {
                return true;
            } else {
                unwrapSlot.value = obj;
                if (i2 == 8) {
                    return true;
                }
                unwrapSlot.setAttributes(attributes & (-9));
                return true;
            }
        }
        return slot.setValue(obj, this, scriptable);
    }

    public static void putConstProperty(Scriptable scriptable, String str, Object obj) {
        Scriptable base = getBase(scriptable, str);
        Scriptable scriptable2 = base;
        if (base == null) {
            scriptable2 = scriptable;
        }
        if (scriptable2 instanceof ConstProperties) {
            ((ConstProperties) scriptable2).putConst(str, scriptable, obj);
        }
    }

    private boolean putImpl(String str, int i, Scriptable scriptable, Object obj) {
        Slot slot;
        if (this != scriptable) {
            Slot slot2 = getSlot(str, i, 1);
            slot = slot2;
            if (slot2 == null) {
                return false;
            }
        } else if (!this.isExtensible) {
            Slot slot3 = getSlot(str, i, 1);
            slot = slot3;
            if (slot3 == null) {
                return true;
            }
        } else {
            if (this.count < 0) {
                checkNotSealed(str, i);
            }
            slot = getSlot(str, i, 2);
        }
        return slot.setValue(obj, this, scriptable);
    }

    public static void putProperty(Scriptable scriptable, int i, Object obj) {
        Scriptable base = getBase(scriptable, i);
        Scriptable scriptable2 = base;
        if (base == null) {
            scriptable2 = scriptable;
        }
        scriptable2.put(i, scriptable, obj);
    }

    public static void putProperty(Scriptable scriptable, String str, Object obj) {
        Scriptable base = getBase(scriptable, str);
        Scriptable scriptable2 = base;
        if (base == null) {
            scriptable2 = scriptable;
        }
        scriptable2.put(str, scriptable, obj);
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        int readInt = objectInputStream.readInt();
        if (readInt != 0) {
            int i = readInt;
            if (((readInt - 1) & readInt) != 0) {
                if (readInt > 1073741824) {
                    throw new RuntimeException("Property table overflow");
                }
                i = 4;
                while (i < readInt) {
                    i <<= 1;
                }
            }
            this.slots = new Slot[i];
            int i2 = this.count;
            int i3 = i2;
            if (i2 < 0) {
                i3 = i2 ^ (-1);
            }
            Slot slot = null;
            for (int i4 = 0; i4 != i3; i4++) {
                this.lastAdded = (Slot) objectInputStream.readObject();
                if (i4 == 0) {
                    this.firstAdded = this.lastAdded;
                } else {
                    slot.orderedNext = this.lastAdded;
                }
                addKnownAbsentSlot(this.slots, this.lastAdded, getSlotIndex(i, this.lastAdded.indexOrHash));
                slot = this.lastAdded;
            }
        }
    }

    public static void redefineProperty(Scriptable scriptable, String str, boolean z) {
        Scriptable base = getBase(scriptable, str);
        if (base != null) {
            if ((base instanceof ConstProperties) && ((ConstProperties) base).isConst(str)) {
                throw ScriptRuntime.typeError1("msg.const.redecl", str);
            } else if (z) {
                throw ScriptRuntime.typeError1("msg.var.redecl", str);
            }
        }
    }

    private void removeSlot(String str, int i) {
        Slot slot;
        synchronized (this) {
            if (str != null) {
                i = str.hashCode();
            }
            Slot[] slotArr = this.slots;
            if (this.count != 0) {
                int slotIndex = getSlotIndex(slotArr.length, i);
                Slot slot2 = slotArr[slotIndex];
                Slot slot3 = slot2;
                while (slot2 != null && (slot2.indexOrHash != i || (slot2.name != str && (str == null || !str.equals(slot2.name))))) {
                    slot2 = slot2.next;
                    slot3 = slot2;
                }
                if (slot2 != null && (slot2.getAttributes() & 4) == 0) {
                    this.count--;
                    if (slot3 == slot2) {
                        slotArr[slotIndex] = slot2.next;
                    } else {
                        slot3.next = slot2.next;
                    }
                    Slot unwrapSlot = unwrapSlot(slot2);
                    if (unwrapSlot == this.firstAdded) {
                        slot = null;
                        this.firstAdded = unwrapSlot.orderedNext;
                    } else {
                        slot = this.firstAdded;
                        while (slot.orderedNext != unwrapSlot) {
                            slot = slot.orderedNext;
                        }
                        slot.orderedNext = unwrapSlot.orderedNext;
                    }
                    if (unwrapSlot == this.lastAdded) {
                        this.lastAdded = slot;
                    }
                    slot2.markDeleted();
                }
            }
        }
    }

    private void setGetterOrSetter(String str, int i, Callable callable, boolean z, boolean z2) {
        GetterSlot getterSlot;
        if (str == null || i == 0) {
            if (!z2) {
                checkNotSealed(str, i);
            }
            if (isExtensible()) {
                getterSlot = (GetterSlot) getSlot(str, i, 4);
            } else {
                Slot unwrapSlot = unwrapSlot(getSlot(str, i, 1));
                if (unwrapSlot instanceof GetterSlot) {
                    getterSlot = (GetterSlot) unwrapSlot;
                } else {
                    return;
                }
            }
            if (z2 || (getterSlot.getAttributes() & 1) == 0) {
                if (z) {
                    getterSlot.setter = callable;
                } else {
                    getterSlot.getter = callable;
                }
                getterSlot.value = Undefined.instance;
                return;
            }
            throw Context.reportRuntimeError1("msg.modify.readonly", str);
        }
        throw new IllegalArgumentException(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Slot unwrapSlot(Slot slot) {
        Slot slot2 = slot;
        if (slot instanceof RelinkedSlot) {
            slot2 = ((RelinkedSlot) slot).slot;
        }
        return slot2;
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        synchronized (this) {
            objectOutputStream.defaultWriteObject();
            int i = this.count;
            int i2 = i;
            if (i < 0) {
                i2 = i ^ (-1);
            }
            if (i2 == 0) {
                objectOutputStream.writeInt(0);
            } else {
                objectOutputStream.writeInt(this.slots.length);
                Slot slot = this.firstAdded;
                while (slot != null && slot.wasDeleted) {
                    slot = slot.orderedNext;
                }
                this.firstAdded = slot;
                Slot slot2 = slot;
                while (slot2 != null) {
                    objectOutputStream.writeObject(slot2);
                    Slot slot3 = slot2.orderedNext;
                    while (slot3 != null && slot3.wasDeleted) {
                        slot3 = slot3.orderedNext;
                    }
                    slot2.orderedNext = slot3;
                    slot2 = slot3;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addLazilyInitializedValue(String str, int i, LazilyLoadedCtor lazilyLoadedCtor, int i2) {
        if (str == null || i == 0) {
            checkNotSealed(str, i);
            GetterSlot getterSlot = (GetterSlot) getSlot(str, i, 4);
            getterSlot.setAttributes(i2);
            getterSlot.getter = null;
            getterSlot.setter = null;
            getterSlot.value = lazilyLoadedCtor;
            return;
        }
        throw new IllegalArgumentException(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int applyDescriptorToAttributeBitset(int i, ScriptableObject scriptableObject) {
        Object property = getProperty(scriptableObject, "enumerable");
        int i2 = i;
        if (property != NOT_FOUND) {
            i2 = ScriptRuntime.toBoolean(property) ? i & (-3) : i | 2;
        }
        Object property2 = getProperty(scriptableObject, "writable");
        int i3 = i2;
        if (property2 != NOT_FOUND) {
            i3 = ScriptRuntime.toBoolean(property2) ? i2 & (-2) : i2 | 1;
        }
        Object property3 = getProperty(scriptableObject, "configurable");
        int i4 = i3;
        if (property3 != NOT_FOUND) {
            i4 = ScriptRuntime.toBoolean(property3) ? i3 & (-5) : i3 | 4;
        }
        return i4;
    }

    public final Object associateValue(Object obj, Object obj2) {
        Object initHash;
        synchronized (this) {
            if (obj2 == null) {
                throw new IllegalArgumentException();
            }
            Map<Object, Object> map = this.associatedValues;
            Map<Object, Object> map2 = map;
            if (map == null) {
                map2 = new HashMap<>();
                this.associatedValues = map2;
            }
            initHash = Kit.initHash(map2, obj, obj2);
        }
        return initHash;
    }

    public boolean avoidObjectDetection() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void checkPropertyChange(String str, ScriptableObject scriptableObject, ScriptableObject scriptableObject2) {
        if (scriptableObject == null) {
            if (!isExtensible()) {
                throw ScriptRuntime.typeError0("msg.not.extensible");
            }
        } else if (!isFalse(scriptableObject.get("configurable", scriptableObject))) {
        } else {
            if (isTrue(getProperty(scriptableObject2, "configurable"))) {
                throw ScriptRuntime.typeError1("msg.change.configurable.false.to.true", str);
            } else if (isTrue(scriptableObject.get("enumerable", scriptableObject)) != isTrue(getProperty(scriptableObject2, "enumerable"))) {
                throw ScriptRuntime.typeError1("msg.change.enumerable.with.configurable.false", str);
            } else {
                boolean isDataDescriptor = isDataDescriptor(scriptableObject2);
                boolean isAccessorDescriptor = isAccessorDescriptor(scriptableObject2);
                if (!isDataDescriptor && !isAccessorDescriptor) {
                    return;
                }
                if (!isDataDescriptor || !isDataDescriptor(scriptableObject)) {
                    if (!isAccessorDescriptor || !isAccessorDescriptor(scriptableObject)) {
                        if (isDataDescriptor(scriptableObject)) {
                            throw ScriptRuntime.typeError1("msg.change.property.data.to.accessor.with.configurable.false", str);
                        }
                        throw ScriptRuntime.typeError1("msg.change.property.accessor.to.data.with.configurable.false", str);
                    } else if (!sameValue(getProperty(scriptableObject2, "set"), scriptableObject.get("set", scriptableObject))) {
                        throw ScriptRuntime.typeError1("msg.change.setter.with.configurable.false", str);
                    } else if (!sameValue(getProperty(scriptableObject2, "get"), scriptableObject.get("get", scriptableObject))) {
                        throw ScriptRuntime.typeError1("msg.change.getter.with.configurable.false", str);
                    }
                } else if (!isFalse(scriptableObject.get("writable", scriptableObject))) {
                } else {
                    if (isTrue(getProperty(scriptableObject2, "writable"))) {
                        throw ScriptRuntime.typeError1("msg.change.writable.false.to.true.with.configurable.false", str);
                    } else if (!sameValue(getProperty(scriptableObject2, FirebaseAnalytics.Param.VALUE), scriptableObject.get(FirebaseAnalytics.Param.VALUE, scriptableObject))) {
                        throw ScriptRuntime.typeError1("msg.change.value.with.writable.false", str);
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void checkPropertyDefinition(ScriptableObject scriptableObject) {
        Object property = getProperty(scriptableObject, "get");
        if (property == NOT_FOUND || property == Undefined.instance || (property instanceof Callable)) {
            Object property2 = getProperty(scriptableObject, "set");
            if (property2 != NOT_FOUND && property2 != Undefined.instance && !(property2 instanceof Callable)) {
                throw ScriptRuntime.notFunctionError(property2);
            } else if (isDataDescriptor(scriptableObject) && isAccessorDescriptor(scriptableObject)) {
                throw ScriptRuntime.typeError0("msg.both.data.and.accessor.desc");
            }
        } else {
            throw ScriptRuntime.notFunctionError(property);
        }
    }

    @Override // org.mozilla.javascript.ConstProperties
    public void defineConst(String str, Scriptable scriptable) {
        if (!putConstImpl(str, 0, scriptable, Undefined.instance, 8)) {
            if (scriptable == this) {
                throw Kit.codeBug();
            } else if (scriptable instanceof ConstProperties) {
                ((ConstProperties) scriptable).defineConst(str, scriptable);
            }
        }
    }

    public void defineFunctionProperties(String[] strArr, Class<?> cls, int i) {
        Method[] methodList = FunctionObject.getMethodList(cls);
        for (String str : strArr) {
            Method findSingleMethod = FunctionObject.findSingleMethod(methodList, str);
            if (findSingleMethod == null) {
                throw Context.reportRuntimeError2("msg.method.not.found", str, cls.getName());
            }
            defineProperty(str, new FunctionObject(str, findSingleMethod, this), i);
        }
    }

    public void defineOwnProperties(Context context, ScriptableObject scriptableObject) {
        Object[] ids = scriptableObject.getIds();
        ScriptableObject[] scriptableObjectArr = new ScriptableObject[ids.length];
        int length = ids.length;
        for (int i = 0; i < length; i++) {
            ScriptableObject ensureScriptableObject = ensureScriptableObject(ScriptRuntime.getObjectElem((Scriptable) scriptableObject, ids[i], context));
            checkPropertyDefinition(ensureScriptableObject);
            scriptableObjectArr[i] = ensureScriptableObject;
        }
        int length2 = ids.length;
        for (int i2 = 0; i2 < length2; i2++) {
            defineOwnProperty(context, ids[i2], scriptableObjectArr[i2]);
        }
    }

    public void defineOwnProperty(Context context, Object obj, ScriptableObject scriptableObject) {
        checkPropertyDefinition(scriptableObject);
        defineOwnProperty(context, obj, scriptableObject, true);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void defineOwnProperty(Context context, Object obj, ScriptableObject scriptableObject, boolean z) {
        int i;
        Slot slot;
        boolean z2 = true;
        Slot slot2 = getSlot(context, obj, 1);
        if (slot2 != null) {
            z2 = false;
        }
        if (z) {
            checkPropertyChange(ScriptRuntime.toString(obj), slot2 == null ? null : slot2.getPropertyDescriptor(context, this), scriptableObject);
        }
        boolean isAccessorDescriptor = isAccessorDescriptor(scriptableObject);
        if (slot2 == null) {
            slot = getSlot(context, obj, isAccessorDescriptor ? 4 : 2);
            i = applyDescriptorToAttributeBitset(7, scriptableObject);
        } else {
            i = applyDescriptorToAttributeBitset(slot2.getAttributes(), scriptableObject);
            slot = slot2;
        }
        Slot unwrapSlot = unwrapSlot(slot);
        if (isAccessorDescriptor) {
            Slot slot3 = unwrapSlot;
            if (!(unwrapSlot instanceof GetterSlot)) {
                slot3 = getSlot(context, obj, 4);
            }
            GetterSlot getterSlot = (GetterSlot) slot3;
            Object property = getProperty(scriptableObject, "get");
            if (property != NOT_FOUND) {
                getterSlot.getter = property;
            }
            Object property2 = getProperty(scriptableObject, "set");
            if (property2 != NOT_FOUND) {
                getterSlot.setter = property2;
            }
            getterSlot.value = Undefined.instance;
            getterSlot.setAttributes(i);
            return;
        }
        Slot slot4 = unwrapSlot;
        if (unwrapSlot instanceof GetterSlot) {
            slot4 = unwrapSlot;
            if (isDataDescriptor(scriptableObject)) {
                slot4 = getSlot(context, obj, 5);
            }
        }
        Object property3 = getProperty(scriptableObject, FirebaseAnalytics.Param.VALUE);
        if (property3 != NOT_FOUND) {
            slot4.value = property3;
        } else if (z2) {
            slot4.value = Undefined.instance;
        }
        slot4.setAttributes(i);
    }

    public void defineProperty(String str, Class<?> cls, int i) {
        int length = str.length();
        if (length == 0) {
            throw new IllegalArgumentException();
        }
        char[] cArr = new char[length + 3];
        str.getChars(0, length, cArr, 3);
        cArr[3] = Character.toUpperCase(cArr[3]);
        cArr[0] = (char) 103;
        cArr[1] = (char) 101;
        cArr[2] = (char) 116;
        String str2 = new String(cArr);
        cArr[0] = (char) 115;
        String str3 = new String(cArr);
        Method[] methodList = FunctionObject.getMethodList(cls);
        Method findSingleMethod = FunctionObject.findSingleMethod(methodList, str2);
        Method findSingleMethod2 = FunctionObject.findSingleMethod(methodList, str3);
        int i2 = i;
        if (findSingleMethod2 == null) {
            i2 = i | 1;
        }
        Method method = findSingleMethod2;
        if (findSingleMethod2 == null) {
            method = null;
        }
        defineProperty(str, null, findSingleMethod, method, i2);
    }

    public void defineProperty(String str, Object obj, int i) {
        checkNotSealed(str, 0);
        put(str, this, obj);
        setAttributes(str, i);
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0097  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void defineProperty(java.lang.String r6, java.lang.Object r7, java.lang.reflect.Method r8, java.lang.reflect.Method r9, int r10) {
        /*
            Method dump skipped, instructions count: 366
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.ScriptableObject.defineProperty(java.lang.String, java.lang.Object, java.lang.reflect.Method, java.lang.reflect.Method, int):void");
    }

    @Override // org.mozilla.javascript.Scriptable
    public void delete(int i) {
        checkNotSealed(null, i);
        removeSlot(null, i);
    }

    @Override // org.mozilla.javascript.Scriptable
    public void delete(String str) {
        checkNotSealed(str, 0);
        removeSlot(str, 0);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Object equivalentValues(Object obj) {
        return this == obj ? Boolean.TRUE : Scriptable.NOT_FOUND;
    }

    @Override // org.mozilla.javascript.Scriptable
    public Object get(int i, Scriptable scriptable) {
        if (this.externalData != null) {
            return i < this.externalData.getArrayLength() ? this.externalData.getArrayElement(i) : Scriptable.NOT_FOUND;
        }
        Slot slot = getSlot((String) null, i, 1);
        return slot == null ? Scriptable.NOT_FOUND : slot.getValue(scriptable);
    }

    public Object get(Object obj) {
        Object obj2 = obj instanceof String ? get((String) obj, this) : obj instanceof Number ? get(((Number) obj).intValue(), this) : null;
        if (obj2 == Scriptable.NOT_FOUND || obj2 == Undefined.instance) {
            return null;
        }
        return obj2 instanceof Wrapper ? ((Wrapper) obj2).unwrap() : obj2;
    }

    @Override // org.mozilla.javascript.Scriptable
    public Object get(String str, Scriptable scriptable) {
        Slot slot = getSlot(str, 0, 1);
        return slot == null ? Scriptable.NOT_FOUND : slot.getValue(scriptable);
    }

    public Object[] getAllIds() {
        return getIds(true);
    }

    public final Object getAssociatedValue(Object obj) {
        Map<Object, Object> map = this.associatedValues;
        if (map == null) {
            return null;
        }
        return map.get(obj);
    }

    public int getAttributes(int i) {
        return findAttributeSlot(null, i, 1).getAttributes();
    }

    @Deprecated
    public final int getAttributes(int i, Scriptable scriptable) {
        return getAttributes(i);
    }

    public int getAttributes(String str) {
        return findAttributeSlot(str, 0, 1).getAttributes();
    }

    @Deprecated
    public final int getAttributes(String str, Scriptable scriptable) {
        return getAttributes(str);
    }

    @Override // org.mozilla.javascript.Scriptable
    public abstract String getClassName();

    @Override // org.mozilla.javascript.Scriptable
    public Object getDefaultValue(Class<?> cls) {
        return getDefaultValue(this, cls);
    }

    public ExternalArrayData getExternalArrayData() {
        return this.externalData;
    }

    public Object getExternalArrayLength() {
        return Integer.valueOf(this.externalData == null ? 0 : this.externalData.getArrayLength());
    }

    public Object getGetterOrSetter(String str, int i, boolean z) {
        if (str == null || i == 0) {
            Slot unwrapSlot = unwrapSlot(getSlot(str, i, 1));
            if (unwrapSlot == null) {
                return null;
            }
            if (!(unwrapSlot instanceof GetterSlot)) {
                return Undefined.instance;
            }
            GetterSlot getterSlot = (GetterSlot) unwrapSlot;
            Object obj = z ? getterSlot.setter : getterSlot.getter;
            if (obj == null) {
                obj = Undefined.instance;
            }
            return obj;
        }
        throw new IllegalArgumentException(str);
    }

    @Override // org.mozilla.javascript.Scriptable
    public Object[] getIds() {
        return getIds(false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x008d, code lost:
        if ((r14.getAttributes() & 2) == 0) goto L_0x0090;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object[] getIds(boolean r7) {
        /*
            Method dump skipped, instructions count: 311
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.ScriptableObject.getIds(boolean):java.lang.Object[]");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ScriptableObject getOwnPropertyDescriptor(Context context, Object obj) {
        Slot slot = getSlot(context, obj, 1);
        if (slot == null) {
            return null;
        }
        Scriptable parentScope = getParentScope();
        Scriptable scriptable = parentScope;
        if (parentScope == null) {
            scriptable = this;
        }
        return slot.getPropertyDescriptor(context, scriptable);
    }

    @Override // org.mozilla.javascript.Scriptable
    public Scriptable getParentScope() {
        return this.parentScopeObject;
    }

    @Override // org.mozilla.javascript.Scriptable
    public Scriptable getPrototype() {
        return this.prototypeObject;
    }

    protected Slot getSlot(Context context, Object obj, int i) {
        String stringIdOrIndex = ScriptRuntime.toStringIdOrIndex(context, obj);
        return stringIdOrIndex == null ? getSlot((String) null, ScriptRuntime.lastIndexResult(context), i) : getSlot(stringIdOrIndex, 0, i);
    }

    public String getTypeOf() {
        return avoidObjectDetection() ? "undefined" : "object";
    }

    @Override // org.mozilla.javascript.Scriptable
    public boolean has(int i, Scriptable scriptable) {
        boolean z = false;
        boolean z2 = false;
        if (this.externalData != null) {
            if (i < this.externalData.getArrayLength()) {
                z2 = true;
            }
            return z2;
        }
        if (getSlot((String) null, i, 1) != null) {
            z = true;
        }
        return z;
    }

    @Override // org.mozilla.javascript.Scriptable
    public boolean has(String str, Scriptable scriptable) {
        boolean z = true;
        if (getSlot(str, 0, 1) == null) {
            z = false;
        }
        return z;
    }

    @Override // org.mozilla.javascript.Scriptable
    public boolean hasInstance(Scriptable scriptable) {
        return ScriptRuntime.jsDelegatesTo(scriptable, this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean isAccessorDescriptor(ScriptableObject scriptableObject) {
        return hasProperty(scriptableObject, "get") || hasProperty(scriptableObject, "set");
    }

    @Override // org.mozilla.javascript.ConstProperties
    public boolean isConst(String str) {
        boolean z = true;
        Slot slot = getSlot(str, 0, 1);
        if (slot == null) {
            return false;
        }
        if ((slot.getAttributes() & 5) != 5) {
            z = false;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean isDataDescriptor(ScriptableObject scriptableObject) {
        return hasProperty(scriptableObject, FirebaseAnalytics.Param.VALUE) || hasProperty(scriptableObject, "writable");
    }

    public boolean isEmpty() {
        return this.count == 0 || this.count == -1;
    }

    public boolean isExtensible() {
        return this.isExtensible;
    }

    protected boolean isGenericDescriptor(ScriptableObject scriptableObject) {
        return !isDataDescriptor(scriptableObject) && !isAccessorDescriptor(scriptableObject);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean isGetterOrSetter(String str, int i, boolean z) {
        Slot unwrapSlot = unwrapSlot(getSlot(str, i, 1));
        if (!(unwrapSlot instanceof GetterSlot)) {
            return false;
        }
        if (!z || ((GetterSlot) unwrapSlot).setter == null) {
            return !z && ((GetterSlot) unwrapSlot).getter != null;
        }
        return true;
    }

    public final boolean isSealed() {
        return this.count < 0;
    }

    public void preventExtensions() {
        this.isExtensible = false;
    }

    @Override // org.mozilla.javascript.Scriptable
    public void put(int i, Scriptable scriptable, Object obj) {
        if (this.externalData != null) {
            if (i < this.externalData.getArrayLength()) {
                this.externalData.setArrayElement(i, obj);
                return;
            }
            throw new JavaScriptException(ScriptRuntime.newNativeError(Context.getCurrentContext(), this, TopLevel.NativeErrors.RangeError, new Object[]{"External array index out of bounds "}), null, 0);
        } else if (!putImpl(null, i, scriptable, obj)) {
            if (scriptable == this) {
                throw Kit.codeBug();
            }
            scriptable.put(i, scriptable, obj);
        }
    }

    @Override // org.mozilla.javascript.Scriptable
    public void put(String str, Scriptable scriptable, Object obj) {
        if (!putImpl(str, 0, scriptable, obj)) {
            if (scriptable == this) {
                throw Kit.codeBug();
            }
            scriptable.put(str, scriptable, obj);
        }
    }

    @Override // org.mozilla.javascript.ConstProperties
    public void putConst(String str, Scriptable scriptable, Object obj) {
        if (!putConstImpl(str, 0, scriptable, obj, 1)) {
            if (scriptable == this) {
                throw Kit.codeBug();
            } else if (scriptable instanceof ConstProperties) {
                ((ConstProperties) scriptable).putConst(str, scriptable, obj);
            } else {
                scriptable.put(str, scriptable, obj);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean sameValue(Object obj, Object obj2) {
        if (obj == NOT_FOUND) {
            return true;
        }
        Object obj3 = obj2;
        if (obj2 == NOT_FOUND) {
            obj3 = Undefined.instance;
        }
        if ((obj3 instanceof Number) && (obj instanceof Number)) {
            double doubleValue = ((Number) obj3).doubleValue();
            double doubleValue2 = ((Number) obj).doubleValue();
            if (Double.isNaN(doubleValue) && Double.isNaN(doubleValue2)) {
                return true;
            }
            if (doubleValue == 0.0d && Double.doubleToLongBits(doubleValue) != Double.doubleToLongBits(doubleValue2)) {
                return false;
            }
        }
        return ScriptRuntime.shallowEq(obj3, obj);
    }

    public void sealObject() {
        synchronized (this) {
            if (this.count >= 0) {
                for (Slot slot = this.firstAdded; slot != null; slot = slot.orderedNext) {
                    Object obj = slot.value;
                    if (obj instanceof LazilyLoadedCtor) {
                        LazilyLoadedCtor lazilyLoadedCtor = (LazilyLoadedCtor) obj;
                        lazilyLoadedCtor.init();
                        slot.value = lazilyLoadedCtor.getValue();
                    }
                }
                this.count ^= -1;
            }
        }
    }

    public void setAttributes(int i, int i2) {
        checkNotSealed(null, i);
        findAttributeSlot(null, i, 2).setAttributes(i2);
    }

    @Deprecated
    public void setAttributes(int i, Scriptable scriptable, int i2) {
        setAttributes(i, i2);
    }

    public void setAttributes(String str, int i) {
        checkNotSealed(str, 0);
        findAttributeSlot(str, 0, 2).setAttributes(i);
    }

    @Deprecated
    public final void setAttributes(String str, Scriptable scriptable, int i) {
        setAttributes(str, i);
    }

    public void setExternalArrayData(ExternalArrayData externalArrayData) {
        this.externalData = externalArrayData;
        if (externalArrayData == null) {
            delete("length");
        } else {
            defineProperty("length", null, GET_ARRAY_LENGTH, null, 3);
        }
    }

    public void setGetterOrSetter(String str, int i, Callable callable, boolean z) {
        setGetterOrSetter(str, i, callable, z, false);
    }

    @Override // org.mozilla.javascript.Scriptable
    public void setParentScope(Scriptable scriptable) {
        this.parentScopeObject = scriptable;
    }

    @Override // org.mozilla.javascript.Scriptable
    public void setPrototype(Scriptable scriptable) {
        this.prototypeObject = scriptable;
    }

    public int size() {
        return this.count < 0 ? this.count ^ (-1) : this.count;
    }
}
