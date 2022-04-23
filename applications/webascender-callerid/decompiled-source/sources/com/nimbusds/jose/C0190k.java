package com.nimbusds.jose;

import com.nimbusds.jose.util.C0197d;
import java.io.Serializable;
import l.a.a.c;
/* renamed from: com.nimbusds.jose.k */
/* loaded from: classes2-dex2jar.jar:com/nimbusds/jose/k.class */
public final class C0190k implements Serializable {

    /* renamed from: f */
    private final c f358f;

    /* renamed from: g */
    private final String f359g;

    /* renamed from: h */
    private final byte[] f360h;

    /* renamed from: i */
    private final com.nimbusds.jose.util.c f361i;

    /* renamed from: j */
    private final h f362j;

    /* renamed from: com.nimbusds.jose.k$a */
    /* loaded from: classes2-dex2jar.jar:com/nimbusds/jose/k$a.class */
    public enum EnumC0191a {
        JSON,
        STRING,
        BYTE_ARRAY,
        BASE64URL,
        JWS_OBJECT,
        SIGNED_JWT
    }

    public C0190k(String str) {
        if (str != null) {
            this.f358f = null;
            this.f359g = str;
            this.f360h = null;
            this.f361i = null;
            this.f362j = null;
            EnumC0191a aVar = EnumC0191a.STRING;
            return;
        }
        throw new IllegalArgumentException("The string must not be null");
    }

    /* renamed from: a */
    private static String m799a(byte[] bArr) {
        return bArr != null ? new String(bArr, C0197d.f368a) : null;
    }

    /* renamed from: b */
    private static byte[] m798b(String str) {
        return str != null ? str.getBytes(C0197d.f368a) : null;
    }

    /* renamed from: c */
    public com.nimbusds.jose.util.c m797c() {
        com.nimbusds.jose.util.c cVar = this.f361i;
        return cVar != null ? cVar : com.nimbusds.jose.util.c.d(m796d());
    }

    /* renamed from: d */
    public byte[] m796d() {
        byte[] bArr = this.f360h;
        if (bArr != null) {
            return bArr;
        }
        com.nimbusds.jose.util.c cVar = this.f361i;
        return cVar != null ? cVar.a() : m798b(toString());
    }

    public String toString() {
        String str = this.f359g;
        if (str != null) {
            return str;
        }
        h hVar = this.f362j;
        if (hVar != null) {
            return hVar.m804a() != null ? this.f362j.m804a() : this.f362j.i();
        }
        c cVar = this.f358f;
        if (cVar != null) {
            return cVar.toString();
        }
        byte[] bArr = this.f360h;
        if (bArr != null) {
            return m799a(bArr);
        }
        com.nimbusds.jose.util.c cVar2 = this.f361i;
        if (cVar2 != null) {
            return cVar2.b();
        }
        return null;
    }
}
