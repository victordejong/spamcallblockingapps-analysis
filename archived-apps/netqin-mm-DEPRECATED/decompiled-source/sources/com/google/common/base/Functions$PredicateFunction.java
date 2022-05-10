package com.google.common.base;

import java.io.Serializable;
import p131c.p161d.p266c.p267a.AbstractC4920g;
import p131c.p161d.p266c.p267a.AbstractC4934o;
import p131c.p161d.p266c.p267a.C4933n;
/* loaded from: classes2-dex2jar.jar:com/google/common/base/Functions$PredicateFunction.class */
public class Functions$PredicateFunction<T> implements AbstractC4920g<T, Boolean>, Serializable {
    public static final long serialVersionUID = 0;
    public final AbstractC4934o<T> predicate;

    public Functions$PredicateFunction(AbstractC4934o<T> oVar) {
        C4933n.m24795a(oVar);
        this.predicate = oVar;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // p131c.p161d.p266c.p267a.AbstractC4920g
    public Boolean apply(T t) {
        return Boolean.valueOf(this.predicate.apply(t));
    }

    @Override // p131c.p161d.p266c.p267a.AbstractC4920g
    public boolean equals(Object obj) {
        if (obj instanceof Functions$PredicateFunction) {
            return this.predicate.equals(((Functions$PredicateFunction) obj).predicate);
        }
        return false;
    }

    public int hashCode() {
        return this.predicate.hashCode();
    }

    public String toString() {
        return "Functions.forPredicate(" + this.predicate + ")";
    }
}
