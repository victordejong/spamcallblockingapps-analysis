package org.mozilla.javascript;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/NativeCallSite.class */
public class NativeCallSite extends IdScriptableObject {
    private static final String CALLSITE_TAG = "CallSite";
    private static final int Id_constructor = 1;
    private static final int Id_getColumnNumber = 9;
    private static final int Id_getEvalOrigin = 10;
    private static final int Id_getFileName = 7;
    private static final int Id_getFunction = 4;
    private static final int Id_getFunctionName = 5;
    private static final int Id_getLineNumber = 8;
    private static final int Id_getMethodName = 6;
    private static final int Id_getThis = 2;
    private static final int Id_getTypeName = 3;
    private static final int Id_isConstructor = 14;
    private static final int Id_isEval = 12;
    private static final int Id_isNative = 13;
    private static final int Id_isToplevel = 11;
    private static final int Id_toString = 15;
    private static final int MAX_PROTOTYPE_ID = 15;
    private ScriptStackElement element;

    private NativeCallSite() {
    }

    private Object getFalse() {
        return Boolean.FALSE;
    }

    private Object getFileName(Scriptable scriptable) {
        while (scriptable != null && !(scriptable instanceof NativeCallSite)) {
            scriptable = scriptable.getPrototype();
        }
        if (scriptable == null) {
            return NOT_FOUND;
        }
        NativeCallSite nativeCallSite = (NativeCallSite) scriptable;
        return nativeCallSite.element == null ? null : nativeCallSite.element.fileName;
    }

    private Object getFunctionName(Scriptable scriptable) {
        while (scriptable != null && !(scriptable instanceof NativeCallSite)) {
            scriptable = scriptable.getPrototype();
        }
        if (scriptable == null) {
            return NOT_FOUND;
        }
        NativeCallSite nativeCallSite = (NativeCallSite) scriptable;
        return nativeCallSite.element == null ? null : nativeCallSite.element.functionName;
    }

    private Object getLineNumber(Scriptable scriptable) {
        while (scriptable != null && !(scriptable instanceof NativeCallSite)) {
            scriptable = scriptable.getPrototype();
        }
        if (scriptable == null) {
            return NOT_FOUND;
        }
        NativeCallSite nativeCallSite = (NativeCallSite) scriptable;
        return (nativeCallSite.element == null || nativeCallSite.element.lineNumber < 0) ? Undefined.instance : Integer.valueOf(nativeCallSite.element.lineNumber);
    }

    private Object getNull() {
        return null;
    }

    private Object getUndefined() {
        return Undefined.instance;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void init(Scriptable scriptable, boolean z) {
        new NativeCallSite().exportAsJSClass(15, scriptable, z);
    }

    private Object js_toString(Scriptable scriptable) {
        while (scriptable != null && !(scriptable instanceof NativeCallSite)) {
            scriptable = scriptable.getPrototype();
        }
        if (scriptable == null) {
            return NOT_FOUND;
        }
        StringBuilder sb = new StringBuilder();
        ((NativeCallSite) scriptable).element.renderJavaStyle(sb);
        return sb.toString();
    }

    static NativeCallSite make(Scriptable scriptable, Scriptable scriptable2) {
        NativeCallSite nativeCallSite = new NativeCallSite();
        nativeCallSite.setParentScope(scriptable);
        nativeCallSite.setPrototype((Scriptable) scriptable2.get("prototype", scriptable2));
        return nativeCallSite;
    }

    @Override // org.mozilla.javascript.IdScriptableObject, org.mozilla.javascript.IdFunctionCall
    public Object execIdCall(IdFunctionObject idFunctionObject, Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        if (!idFunctionObject.hasTag(CALLSITE_TAG)) {
            return super.execIdCall(idFunctionObject, context, scriptable, scriptable2, objArr);
        }
        int methodId = idFunctionObject.methodId();
        switch (methodId) {
            case 1:
                return make(scriptable, idFunctionObject);
            case 2:
            case 3:
            case 4:
            case 9:
                return getUndefined();
            case 5:
                return getFunctionName(scriptable2);
            case 6:
                return getNull();
            case 7:
                return getFileName(scriptable2);
            case 8:
                return getLineNumber(scriptable2);
            case 10:
            case 12:
            case 14:
                return getFalse();
            case 11:
            case 13:
            default:
                throw new IllegalArgumentException(String.valueOf(methodId));
            case 15:
                return js_toString(scriptable2);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:39:0x014d  */
    @Override // org.mozilla.javascript.IdScriptableObject
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected int findPrototypeId(java.lang.String r4) {
        /*
            Method dump skipped, instructions count: 368
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.NativeCallSite.findPrototypeId(java.lang.String):int");
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public String getClassName() {
        return CALLSITE_TAG;
    }

    @Override // org.mozilla.javascript.IdScriptableObject
    protected void initPrototypeId(int i) {
        String str;
        switch (i) {
            case 1:
                str = "constructor";
                break;
            case 2:
                str = "getThis";
                break;
            case 3:
                str = "getTypeName";
                break;
            case 4:
                str = "getFunction";
                break;
            case 5:
                str = "getFunctionName";
                break;
            case 6:
                str = "getMethodName";
                break;
            case 7:
                str = "getFileName";
                break;
            case 8:
                str = "getLineNumber";
                break;
            case 9:
                str = "getColumnNumber";
                break;
            case 10:
                str = "getEvalOrigin";
                break;
            case 11:
                str = "isToplevel";
                break;
            case 12:
                str = "isEval";
                break;
            case 13:
                str = "isNative";
                break;
            case 14:
                str = "isConstructor";
                break;
            case 15:
                str = "toString";
                break;
            default:
                throw new IllegalArgumentException(String.valueOf(i));
        }
        initPrototypeMethod(CALLSITE_TAG, i, str, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setElement(ScriptStackElement scriptStackElement) {
        this.element = scriptStackElement;
    }

    public String toString() {
        return this.element == null ? "" : this.element.toString();
    }
}
