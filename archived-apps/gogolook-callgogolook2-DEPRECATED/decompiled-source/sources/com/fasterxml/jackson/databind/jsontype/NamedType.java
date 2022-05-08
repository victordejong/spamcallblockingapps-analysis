package com.fasterxml.jackson.databind.jsontype;

import java.io.Serializable;
import p459j.p460a.p582w0.p590x4.C14247d;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/jsontype/NamedType.class */
public final class NamedType implements Serializable {
    public final Class<?> _class;
    public final int _hashCode;
    public String _name;

    public NamedType(Class<?> cls) {
        this(cls, null);
    }

    public NamedType(Class<?> cls, String str) {
        this._class = cls;
        this._hashCode = cls.getName().hashCode();
        setName(str);
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (obj == null || obj.getClass() != NamedType.class) {
            return false;
        }
        if (this._class != ((NamedType) obj)._class) {
            z = false;
        }
        return z;
    }

    public String getName() {
        return this._name;
    }

    public Class<?> getType() {
        return this._class;
    }

    public boolean hasName() {
        return this._name != null;
    }

    public int hashCode() {
        return this._hashCode;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x000a, code lost:
        if (r4.length() == 0) goto L_0x000d;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setName(java.lang.String r4) {
        /*
            r3 = this;
            r0 = r4
            if (r0 == 0) goto L_0x000d
            r0 = r4
            r5 = r0
            r0 = r4
            int r0 = r0.length()
            if (r0 != 0) goto L_0x000f
        L_0x000d:
            r0 = 0
            r5 = r0
        L_0x000f:
            r0 = r3
            r1 = r5
            r0._name = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.jsontype.NamedType.setName(java.lang.String):void");
    }

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append("[NamedType, class ");
        sb.append(this._class.getName());
        sb.append(", name: ");
        if (this._name == null) {
            str = C14247d.f31851f;
        } else {
            str = "'" + this._name + "'";
        }
        sb.append(str);
        sb.append("]");
        return sb.toString();
    }
}
