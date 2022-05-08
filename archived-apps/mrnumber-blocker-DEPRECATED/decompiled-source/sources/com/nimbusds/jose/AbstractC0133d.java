package com.nimbusds.jose;

import com.nimbusds.jose.util.a;
import com.nimbusds.jose.util.c;
import java.io.Serializable;
/* renamed from: com.nimbusds.jose.d */
/* loaded from: classes2-dex2jar.jar:com/nimbusds/jose/d.class */
public abstract class AbstractC0133d implements Serializable {

    /* renamed from: f */
    private c[] f229f = null;

    protected AbstractC0133d() {
    }

    /* renamed from: a */
    public String m883a() {
        a[] aVarArr;
        if (this.f229f == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        for (a aVar : this.f229f) {
            if (sb.length() > 0) {
                sb.append('.');
            }
            if (aVar != null) {
                sb.append(aVar.toString());
            }
        }
        return sb.toString();
    }

    /* renamed from: b */
    protected void m882b(C0135k kVar) {
    }
}
