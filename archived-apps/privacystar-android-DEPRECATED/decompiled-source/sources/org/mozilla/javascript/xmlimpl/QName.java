package org.mozilla.javascript.xmlimpl;

import org.mozilla.javascript.Context;
import org.mozilla.javascript.IdFunctionObject;
import org.mozilla.javascript.IdScriptableObject;
import org.mozilla.javascript.ScriptRuntime;
import org.mozilla.javascript.Scriptable;
import org.mozilla.javascript.Undefined;
import org.mozilla.javascript.xmlimpl.XmlNode;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/xmlimpl/QName.class */
public final class QName extends IdScriptableObject {
    private static final int Id_constructor = 1;
    private static final int Id_localName = 1;
    private static final int Id_toSource = 3;
    private static final int Id_toString = 2;
    private static final int Id_uri = 2;
    private static final int MAX_INSTANCE_ID = 2;
    private static final int MAX_PROTOTYPE_ID = 3;
    private static final Object QNAME_TAG = "QName";
    static final long serialVersionUID = 416745167693026750L;
    private XmlNode.QName delegate;
    private XMLLibImpl lib;
    private QName prototype;

    private QName() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static QName create(XMLLibImpl xMLLibImpl, Scriptable scriptable, QName qName, XmlNode.QName qName2) {
        QName qName3 = new QName();
        qName3.lib = xMLLibImpl;
        qName3.setParentScope(scriptable);
        qName3.prototype = qName;
        qName3.setPrototype(qName);
        qName3.delegate = qName2;
        return qName3;
    }

    private boolean equals(QName qName) {
        return this.delegate.equals(qName.delegate);
    }

    private Object jsConstructor(Context context, boolean z, Object[] objArr) {
        return (z || objArr.length != 1) ? objArr.length == 0 ? constructQName(this.lib, context, Undefined.instance) : objArr.length == 1 ? constructQName(this.lib, context, objArr[0]) : constructQName(this.lib, context, objArr[0], objArr[1]) : castToQName(this.lib, context, objArr[0]);
    }

    private String js_toSource() {
        StringBuilder sb = new StringBuilder();
        sb.append('(');
        toSourceImpl(uri(), localName(), prefix(), sb);
        sb.append(')');
        return sb.toString();
    }

    private QName realThis(Scriptable scriptable, IdFunctionObject idFunctionObject) {
        if (scriptable instanceof QName) {
            return (QName) scriptable;
        }
        throw incompatibleCallError(idFunctionObject);
    }

    private static void toSourceImpl(String str, String str2, String str3, StringBuilder sb) {
        sb.append("new QName(");
        if (str != null || str3 != null) {
            Namespace.toSourceImpl(str3, str, sb);
            sb.append(", ");
        } else if (!"*".equals(str2)) {
            sb.append("null, ");
        }
        sb.append('\'');
        sb.append(ScriptRuntime.escapeString(str2, '\''));
        sb.append("')");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public QName castToQName(XMLLibImpl xMLLibImpl, Context context, Object obj) {
        return obj instanceof QName ? (QName) obj : constructQName(xMLLibImpl, context, obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public QName constructQName(XMLLibImpl xMLLibImpl, Context context, Object obj) {
        return constructQName(xMLLibImpl, context, Undefined.instance, obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public QName constructQName(XMLLibImpl xMLLibImpl, Context context, Object obj, Object obj2) {
        String str;
        if (obj2 instanceof QName) {
            if (obj == Undefined.instance) {
                return (QName) obj2;
            }
            ((QName) obj2).localName();
        }
        String scriptRuntime = obj2 == Undefined.instance ? "" : ScriptRuntime.toString(obj2);
        String str2 = null;
        Object obj3 = obj;
        if (obj == Undefined.instance) {
            obj3 = "*".equals(scriptRuntime) ? null : xMLLibImpl.getDefaultNamespace(context);
        }
        Namespace newNamespace = obj3 == null ? null : obj3 instanceof Namespace ? (Namespace) obj3 : xMLLibImpl.newNamespace(ScriptRuntime.toString(obj3));
        if (obj3 == null) {
            str = null;
        } else {
            str2 = newNamespace.uri();
            str = newNamespace.prefix();
        }
        return newQName(xMLLibImpl, str2, scriptRuntime, str);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof QName)) {
            return false;
        }
        return equals((QName) obj);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.mozilla.javascript.ScriptableObject
    public Object equivalentValues(Object obj) {
        if (!(obj instanceof QName)) {
            return Scriptable.NOT_FOUND;
        }
        return equals((QName) obj) ? Boolean.TRUE : Boolean.FALSE;
    }

    @Override // org.mozilla.javascript.IdScriptableObject, org.mozilla.javascript.IdFunctionCall
    public Object execIdCall(IdFunctionObject idFunctionObject, Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        if (!idFunctionObject.hasTag(QNAME_TAG)) {
            return super.execIdCall(idFunctionObject, context, scriptable, scriptable2, objArr);
        }
        int methodId = idFunctionObject.methodId();
        switch (methodId) {
            case 1:
                return jsConstructor(context, scriptable2 == null, objArr);
            case 2:
                return realThis(scriptable2, idFunctionObject).toString();
            case 3:
                return realThis(scriptable2, idFunctionObject).js_toSource();
            default:
                throw new IllegalArgumentException(String.valueOf(methodId));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void exportAsJSClass(boolean z) {
        exportAsJSClass(3, getParentScope(), z);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.mozilla.javascript.IdScriptableObject
    public int findInstanceIdInfo(String str) {
        String str2;
        int length = str.length();
        int i = 0;
        if (length == 3) {
            str2 = "uri";
            i = 2;
        } else if (length == 9) {
            str2 = "localName";
            i = 1;
        } else {
            str2 = null;
            i = 0;
        }
        if (str2 == null || str2 == str || !str2.equals(str)) {
        }
        if (i == 0) {
            return super.findInstanceIdInfo(str);
        }
        switch (i) {
            case 1:
            case 2:
                return instanceIdInfo(5, super.getMaxInstanceId() + i);
            default:
                throw new IllegalStateException();
        }
    }

    @Override // org.mozilla.javascript.IdScriptableObject
    protected int findPrototypeId(String str) {
        String str2;
        int length = str.length();
        int i = 3;
        if (length == 8) {
            char charAt = str.charAt(3);
            if (charAt == 'o') {
                str2 = "toSource";
            } else {
                if (charAt == 't') {
                    str2 = "toString";
                    i = 2;
                }
                str2 = null;
                i = 0;
            }
        } else {
            if (length == 11) {
                str2 = "constructor";
                i = 1;
            }
            str2 = null;
            i = 0;
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
        return i2;
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public String getClassName() {
        return "QName";
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public Object getDefaultValue(Class<?> cls) {
        return toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final XmlNode.QName getDelegate() {
        return this.delegate;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.mozilla.javascript.IdScriptableObject
    public String getInstanceIdName(int i) {
        switch (i - super.getMaxInstanceId()) {
            case 1:
                return "localName";
            case 2:
                return "uri";
            default:
                return super.getInstanceIdName(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.mozilla.javascript.IdScriptableObject
    public Object getInstanceIdValue(int i) {
        switch (i - super.getMaxInstanceId()) {
            case 1:
                return localName();
            case 2:
                return uri();
            default:
                return super.getInstanceIdValue(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.mozilla.javascript.IdScriptableObject
    public int getMaxInstanceId() {
        return super.getMaxInstanceId() + 2;
    }

    public int hashCode() {
        return this.delegate.hashCode();
    }

    @Override // org.mozilla.javascript.IdScriptableObject
    protected void initPrototypeId(int i) {
        String str;
        int i2 = 0;
        switch (i) {
            case 1:
                i2 = 2;
                str = "constructor";
                break;
            case 2:
                str = "toString";
                break;
            case 3:
                str = "toSource";
                break;
            default:
                throw new IllegalArgumentException(String.valueOf(i));
        }
        initPrototypeMethod(QNAME_TAG, i, str, i2);
    }

    public String localName() {
        return this.delegate.getLocalName() == null ? "*" : this.delegate.getLocalName();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public QName newQName(XMLLibImpl xMLLibImpl, String str, String str2, String str3) {
        QName qName = this.prototype;
        QName qName2 = qName;
        if (qName == null) {
            qName2 = this;
        }
        XmlNode.Namespace create = str3 != null ? XmlNode.Namespace.create(str3, str) : str != null ? XmlNode.Namespace.create(str) : null;
        String str4 = str2;
        if (str2 != null) {
            str4 = str2;
            if (str2.equals("*")) {
                str4 = null;
            }
        }
        return create(xMLLibImpl, getParentScope(), qName2, XmlNode.QName.create(create, str4));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String prefix() {
        if (this.delegate.getNamespace() == null) {
            return null;
        }
        return this.delegate.getNamespace().getPrefix();
    }

    @Deprecated
    final XmlNode.QName toNodeQname() {
        return this.delegate;
    }

    public String toString() {
        if (this.delegate.getNamespace() == null) {
            return "*::" + localName();
        } else if (this.delegate.getNamespace().isGlobal()) {
            return localName();
        } else {
            return uri() + "::" + localName();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String uri() {
        if (this.delegate.getNamespace() == null) {
            return null;
        }
        return this.delegate.getNamespace().getUri();
    }
}
