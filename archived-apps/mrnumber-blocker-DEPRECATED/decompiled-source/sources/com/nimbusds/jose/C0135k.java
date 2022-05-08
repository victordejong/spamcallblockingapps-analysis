package com.nimbusds.jose;

import com.nimbusds.jose.util.C0142d;
import java.io.Serializable;
import l.a.a.c;
/* renamed from: com.nimbusds.jose.k */
/* loaded from: classes2-dex2jar.jar:com/nimbusds/jose/k.class */
public final class C0135k implements Serializable {

    /* renamed from: f */
    private final c f243f;

    /* renamed from: g */
    private final String f244g;

    /* renamed from: h */
    private final byte[] f245h;

    /* renamed from: i */
    private final com.nimbusds.jose.util.c f246i;

    /* renamed from: j */
    private final h f247j;

    /* renamed from: com.nimbusds.jose.k$a */
    /* loaded from: classes2-dex2jar.jar:com/nimbusds/jose/k$a.class */
    public enum EnumC0136a {
        JSON,
        STRING,
        BYTE_ARRAY,
        BASE64URL,
        JWS_OBJECT,
        SIGNED_JWT
    }

    public C0135k(String str) {
        if (str != null) {
            this.f243f = null;
            this.f244g = str;
            this.f245h = null;
            this.f246i = null;
            this.f247j = null;
            EnumC0136a aVar = EnumC0136a.STRING;
            return;
        }
        throw new IllegalArgumentException("The string must not be null");
    }

    /* renamed from: a */
    private static String m878a(byte[] bArr) {
        return bArr != null ? new String(bArr, C0142d.f253a) : null;
    }

    /* renamed from: b */
    private static byte[] m877b(String str) {
        return str != null ? str.getBytes(C0142d.f253a) : null;
    }

    /* renamed from: c */
    public com.nimbusds.jose.util.c m876c() {
        com.nimbusds.jose.util.c cVar = this.f246i;
        return cVar != null ? cVar : com.nimbusds.jose.util.c.d(m875d());
    }

    /* renamed from: d */
    public byte[] m875d() {
        byte[] bArr = this.f245h;
        if (bArr != null) {
            return bArr;
        }
        com.nimbusds.jose.util.c cVar = this.f246i;
        return cVar != null ? cVar.a() : m877b(toString());
    }

    public String toString() {
        String str = this.f244g;
        if (str != null) {
            return str;
        }
        h hVar = this.f247j;
        if (hVar != null) {
            return hVar.m883a() != null ? this.f247j.m883a() : this.f247j.i();
        }
        c cVar = this.f243f;
        if (cVar != null) {
            return cVar.toString();
        }
        byte[] bArr = this.f245h;
        if (bArr != null) {
            return m878a(bArr);
        }
        com.nimbusds.jose.util.c cVar2 = this.f246i;
        if (cVar2 != null) {
            return cVar2.b();
        }
        return null;
    }
}
