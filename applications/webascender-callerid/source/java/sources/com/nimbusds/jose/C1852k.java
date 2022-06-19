package com.nimbusds.jose;

import com.nimbusds.jose.util.C1859d;
import java.io.Serializable;
import l.a.a.c;
/* renamed from: com.nimbusds.jose.k */
/* loaded from: classes2-dex2jar.jar:com/nimbusds/jose/k.class */
public final class C1852k implements Serializable {

    /* renamed from: f */
    private final c f5037f;

    /* renamed from: g */
    private final String f5038g;

    /* renamed from: h */
    private final byte[] f5039h;

    /* renamed from: i */
    private final com.nimbusds.jose.util.c f5040i;

    /* renamed from: j */
    private final h f5041j;

    /* renamed from: com.nimbusds.jose.k$a */
    /* loaded from: classes2-dex2jar.jar:com/nimbusds/jose/k$a.class */
    public enum EnumC1853a {
        JSON,
        STRING,
        BYTE_ARRAY,
        BASE64URL,
        JWS_OBJECT,
        SIGNED_JWT
    }

    public C1852k(String str) {
        if (str != null) {
            this.f5037f = null;
            this.f5038g = str;
            this.f5039h = null;
            this.f5040i = null;
            this.f5041j = null;
            EnumC1853a enumC1853a = EnumC1853a.STRING;
            return;
        }
        throw new IllegalArgumentException("The string must not be null");
    }

    /* renamed from: a */
    private static String m799a(byte[] bArr) {
        return bArr != null ? new String(bArr, C1859d.f5047a) : null;
    }

    /* renamed from: b */
    private static byte[] m798b(String str) {
        return str != null ? str.getBytes(C1859d.f5047a) : null;
    }

    /* renamed from: c */
    public com.nimbusds.jose.util.c m797c() {
        com.nimbusds.jose.util.c cVar = this.f5040i;
        return cVar != null ? cVar : com.nimbusds.jose.util.c.d(m796d());
    }

    /* renamed from: d */
    public byte[] m796d() {
        byte[] bArr = this.f5039h;
        if (bArr != null) {
            return bArr;
        }
        com.nimbusds.jose.util.c cVar = this.f5040i;
        return cVar != null ? cVar.a() : m798b(toString());
    }

    public String toString() {
        String str = this.f5038g;
        if (str != null) {
            return str;
        }
        h hVar = this.f5041j;
        if (hVar != null) {
            return hVar.m804a() != null ? this.f5041j.m804a() : this.f5041j.i();
        }
        c cVar = this.f5037f;
        if (cVar != null) {
            return cVar.toString();
        }
        byte[] bArr = this.f5039h;
        if (bArr != null) {
            return m799a(bArr);
        }
        com.nimbusds.jose.util.c cVar2 = this.f5040i;
        if (cVar2 == null) {
            return null;
        }
        return cVar2.b();
    }
}
