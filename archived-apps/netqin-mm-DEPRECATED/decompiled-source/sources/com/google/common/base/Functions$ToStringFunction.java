package com.google.common.base;

import p131c.p161d.p266c.p267a.AbstractC4920g;
import p131c.p161d.p266c.p267a.C4933n;
/* loaded from: classes2-dex2jar.jar:com/google/common/base/Functions$ToStringFunction.class */
public enum Functions$ToStringFunction implements AbstractC4920g<Object, String> {
    INSTANCE;

    @Override // p131c.p161d.p266c.p267a.AbstractC4920g
    public String apply(Object obj) {
        C4933n.m24795a(obj);
        return obj.toString();
    }

    @Override // java.lang.Enum
    public String toString() {
        return "Functions.toStringFunction()";
    }
}
