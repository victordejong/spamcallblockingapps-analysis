package com.flurry.sdk;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
/* renamed from: com.flurry.sdk.jv */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/jv.class */
public class C3361jv<ObjectType> {

    /* renamed from: a */
    public static final String f5746a = "jv";

    /* renamed from: b */
    public static final byte[] f5747b = {113, -92, -8, 125, 121, 107, -65, -61, -74, -114, -32, 0, -57, -87, -35, -56, -6, -52, 51, 126, -104, 49, 79, -52, 118, -84, 99, -52, -14, -126, -27, -64};

    /* renamed from: c */
    public String f5748c;

    /* renamed from: d */
    public AbstractC3417kl<ObjectType> f5749d;

    public C3361jv(String str, AbstractC3417kl<ObjectType> klVar) {
        this.f5748c = str;
        this.f5749d = klVar;
    }

    /* renamed from: a */
    public static int m32597a(byte[] bArr) {
        if (bArr == null) {
            return 0;
        }
        C3339jh jhVar = new C3339jh();
        jhVar.update(bArr);
        return jhVar.m32645b();
    }

    /* renamed from: c */
    public static void m32595c(byte[] bArr) {
        if (bArr != null) {
            int length = bArr.length;
            int length2 = f5747b.length;
            for (int i = 0; i < length; i++) {
                bArr[i] = (byte) ((bArr[i] ^ f5747b[i % length2]) ^ ((i * 31) % 251));
            }
        }
    }

    /* renamed from: a */
    public final byte[] m32598a(ObjectType objecttype) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        this.f5749d.mo32525a(byteArrayOutputStream, objecttype);
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        String str = f5746a;
        C3356jq.m32615a(3, str, "Encoding " + this.f5748c + ": " + new String(byteArray));
        C3413kj kjVar = new C3413kj(new C3411kh());
        ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
        kjVar.mo32525a(byteArrayOutputStream2, byteArray);
        byte[] byteArray2 = byteArrayOutputStream2.toByteArray();
        m32595c(byteArray2);
        return byteArray2;
    }

    /* renamed from: b */
    public final ObjectType m32596b(byte[] bArr) throws IOException {
        if (bArr != null) {
            m32595c(bArr);
            byte[] bArr2 = (byte[]) new C3413kj(new C3411kh()).mo32526a(new ByteArrayInputStream(bArr));
            String str = f5746a;
            C3356jq.m32615a(3, str, "Decoding: " + this.f5748c + ": " + new String(bArr2));
            return this.f5749d.mo32526a(new ByteArrayInputStream(bArr2));
        }
        throw new IOException("Decoding: " + this.f5748c + ": Nothing to decode");
    }
}
