package com.nimbusds.jose;

import com.nimbusds.jose.util.a;
import com.nimbusds.jose.util.c;
import java.io.Serializable;
/* renamed from: com.nimbusds.jose.d */
/* loaded from: classes2-dex2jar.jar:com/nimbusds/jose/d.class */
public abstract class AbstractC0188d implements Serializable {

    /* renamed from: f */
    private c[] f344f = null;

    protected AbstractC0188d() {
    }

    /* renamed from: a */
    public String m804a() {
        a[] aVarArr;
        if (this.f344f == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        for (a aVar : this.f344f) {
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
    protected void m803b(C0190k kVar) {
    }
}
