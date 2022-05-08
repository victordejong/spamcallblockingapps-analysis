package org.mozilla.javascript.xmlimpl;

import org.mozilla.javascript.Context;
import org.mozilla.javascript.IdFunctionObject;
import org.mozilla.javascript.ScriptRuntime;
import org.mozilla.javascript.Scriptable;
import org.mozilla.javascript.ScriptableObject;
import org.mozilla.javascript.Undefined;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/xmlimpl/XMLCtor.class */
class XMLCtor extends IdFunctionObject {
    private static final int Id_defaultSettings = 1;
    private static final int Id_ignoreComments = 1;
    private static final int Id_ignoreProcessingInstructions = 2;
    private static final int Id_ignoreWhitespace = 3;
    private static final int Id_prettyIndent = 4;
    private static final int Id_prettyPrinting = 5;
    private static final int Id_setSettings = 3;
    private static final int Id_settings = 2;
    private static final int MAX_FUNCTION_ID = 3;
    private static final int MAX_INSTANCE_ID = 5;
    private static final Object XMLCTOR_TAG = "XMLCtor";
    static final long serialVersionUID = -8708195078359817341L;
    private XmlProcessor options;

    /* JADX INFO: Access modifiers changed from: package-private */
    public XMLCtor(XML xml, Object obj, int i, int i2) {
        super(xml, obj, i, i2);
        this.options = xml.getProcessor();
        activatePrototypeMap(3);
    }

    private void readSettings(Scriptable scriptable) {
        for (int i = 1; i <= 5; i++) {
            int maxInstanceId = super.getMaxInstanceId() + i;
            Object property = ScriptableObject.getProperty(scriptable, getInstanceIdName(maxInstanceId));
            if (property != Scriptable.NOT_FOUND) {
                switch (i) {
                    case 1:
                    case 2:
                    case 3:
                    case 5:
                        if (!(property instanceof Boolean)) {
                            break;
                        }
                        setInstanceIdValue(maxInstanceId, property);
                        break;
                    case 4:
                        if (!(property instanceof Number)) {
                            break;
                        }
                        setInstanceIdValue(maxInstanceId, property);
                        break;
                    default:
                        throw new IllegalStateException();
                }
            }
        }
    }

    private void writeSetting(Scriptable scriptable) {
        for (int i = 1; i <= 5; i++) {
            int maxInstanceId = super.getMaxInstanceId() + i;
            ScriptableObject.putProperty(scriptable, getInstanceIdName(maxInstanceId), getInstanceIdValue(maxInstanceId));
        }
    }

    @Override // org.mozilla.javascript.BaseFunction, org.mozilla.javascript.IdScriptableObject, org.mozilla.javascript.IdFunctionCall
    public Object execIdCall(IdFunctionObject idFunctionObject, Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        if (!idFunctionObject.hasTag(XMLCTOR_TAG)) {
            return super.execIdCall(idFunctionObject, context, scriptable, scriptable2, objArr);
        }
        int methodId = idFunctionObject.methodId();
        switch (methodId) {
            case 1:
                this.options.setDefault();
                Scriptable newObject = context.newObject(scriptable);
                writeSetting(newObject);
                return newObject;
            case 2:
                Scriptable newObject2 = context.newObject(scriptable);
                writeSetting(newObject2);
                return newObject2;
            case 3:
                if (objArr.length == 0 || objArr[0] == null || objArr[0] == Undefined.instance) {
                    this.options.setDefault();
                } else if (objArr[0] instanceof Scriptable) {
                    readSettings((Scriptable) objArr[0]);
                }
                return Undefined.instance;
            default:
                throw new IllegalArgumentException(String.valueOf(methodId));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.mozilla.javascript.BaseFunction, org.mozilla.javascript.IdScriptableObject
    public int findInstanceIdInfo(String str) {
        String str2;
        int i;
        int length = str.length();
        if (length == 12) {
            str2 = "prettyIndent";
            i = 4;
        } else if (length == 14) {
            char charAt = str.charAt(0);
            if (charAt == 'i') {
                str2 = "ignoreComments";
                i = 1;
            } else {
                if (charAt == 'p') {
                    str2 = "prettyPrinting";
                    i = 5;
                }
                str2 = null;
                i = 0;
            }
        } else if (length != 16) {
            if (length == 28) {
                str2 = "ignoreProcessingInstructions";
                i = 2;
            }
            str2 = null;
            i = 0;
        } else {
            str2 = "ignoreWhitespace";
            i = 3;
        }
        int i2 = i;
        if (str2 != null) {
            i2 = i;
            if (str2 != str) {
                i2 = i;
                if (!str2.equals(str)) {
                    i2 = 0;
                }
            }
        }
        if (i2 == 0) {
            return super.findInstanceIdInfo(str);
        }
        switch (i2) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
                return instanceIdInfo(6, super.getMaxInstanceId() + i2);
            default:
                throw new IllegalStateException();
        }
    }

    @Override // org.mozilla.javascript.BaseFunction, org.mozilla.javascript.IdScriptableObject
    protected int findPrototypeId(String str) {
        String str2;
        int length = str.length();
        int i = 0;
        if (length == 8) {
            str2 = "settings";
            i = 2;
        } else if (length == 11) {
            str2 = "setSettings";
            i = 3;
        } else if (length == 15) {
            str2 = "defaultSettings";
            i = 1;
        } else {
            str2 = null;
            i = 0;
        }
        if (str2 == null || str2 == str || !str2.equals(str)) {
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.mozilla.javascript.BaseFunction, org.mozilla.javascript.IdScriptableObject
    public String getInstanceIdName(int i) {
        switch (i - super.getMaxInstanceId()) {
            case 1:
                return "ignoreComments";
            case 2:
                return "ignoreProcessingInstructions";
            case 3:
                return "ignoreWhitespace";
            case 4:
                return "prettyIndent";
            case 5:
                return "prettyPrinting";
            default:
                return super.getInstanceIdName(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.mozilla.javascript.BaseFunction, org.mozilla.javascript.IdScriptableObject
    public Object getInstanceIdValue(int i) {
        switch (i - super.getMaxInstanceId()) {
            case 1:
                return ScriptRuntime.wrapBoolean(this.options.isIgnoreComments());
            case 2:
                return ScriptRuntime.wrapBoolean(this.options.isIgnoreProcessingInstructions());
            case 3:
                return ScriptRuntime.wrapBoolean(this.options.isIgnoreWhitespace());
            case 4:
                return ScriptRuntime.wrapInt(this.options.getPrettyIndent());
            case 5:
                return ScriptRuntime.wrapBoolean(this.options.isPrettyPrinting());
            default:
                return super.getInstanceIdValue(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.mozilla.javascript.BaseFunction, org.mozilla.javascript.IdScriptableObject
    public int getMaxInstanceId() {
        return super.getMaxInstanceId() + 5;
    }

    @Override // org.mozilla.javascript.BaseFunction, org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public boolean hasInstance(Scriptable scriptable) {
        return (scriptable instanceof XML) || (scriptable instanceof XMLList);
    }

    @Override // org.mozilla.javascript.BaseFunction, org.mozilla.javascript.IdScriptableObject
    protected void initPrototypeId(int i) {
        String str;
        int i2 = 0;
        switch (i) {
            case 1:
                str = "defaultSettings";
                break;
            case 2:
                str = "settings";
                break;
            case 3:
                i2 = 1;
                str = "setSettings";
                break;
            default:
                throw new IllegalArgumentException(String.valueOf(i));
        }
        initPrototypeMethod(XMLCTOR_TAG, i, str, i2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.mozilla.javascript.BaseFunction, org.mozilla.javascript.IdScriptableObject
    public void setInstanceIdValue(int i, Object obj) {
        switch (i - super.getMaxInstanceId()) {
            case 1:
                this.options.setIgnoreComments(ScriptRuntime.toBoolean(obj));
                return;
            case 2:
                this.options.setIgnoreProcessingInstructions(ScriptRuntime.toBoolean(obj));
                return;
            case 3:
                this.options.setIgnoreWhitespace(ScriptRuntime.toBoolean(obj));
                return;
            case 4:
                this.options.setPrettyIndent(ScriptRuntime.toInt32(obj));
                return;
            case 5:
                this.options.setPrettyPrinting(ScriptRuntime.toBoolean(obj));
                return;
            default:
                super.setInstanceIdValue(i, obj);
                return;
        }
    }
}
