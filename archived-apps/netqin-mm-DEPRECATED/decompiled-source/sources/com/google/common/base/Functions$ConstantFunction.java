package com.google.common.base;

import java.io.Serializable;
import p131c.p161d.p266c.p267a.AbstractC4920g;
import p131c.p161d.p266c.p267a.C4928k;
/* loaded from: classes2-dex2jar.jar:com/google/common/base/Functions$ConstantFunction.class */
public class Functions$ConstantFunction<E> implements AbstractC4920g<Object, E>, Serializable {
    public static final long serialVersionUID = 0;
    public final E value;

    public Functions$ConstantFunction(E e) {
        this.value = e;
    }

    @Override // p131c.p161d.p266c.p267a.AbstractC4920g
    public E apply(Object obj) {
        return this.value;
    }

    @Override // p131c.p161d.p266c.p267a.AbstractC4920g
    public boolean equals(Object obj) {
        if (obj instanceof Functions$ConstantFunction) {
            return C4928k.m24808a(this.value, ((Functions$ConstantFunction) obj).value);
        }
        return false;
    }

    public int hashCode() {
        E e = this.value;
        return e == null ? 0 : e.hashCode();
    }

    public String toString() {
        return "Functions.constant(" + this.value + ")";
    }
}
