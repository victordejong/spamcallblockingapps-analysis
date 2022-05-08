package com.flurry.sdk;

import com.google.ads.AdRequest;
import java.nio.ByteBuffer;
/* renamed from: com.flurry.sdk.dd */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/dd.class */
public class C2944dd extends AbstractC3386kd {

    /* renamed from: f */
    public static final String f4569f = "dd";

    /* renamed from: a */
    public final C3361jv<C2926cw> f4570a;

    /* renamed from: g */
    public final C3361jv<C2927cx> f4571g;

    public C2944dd() {
        this((byte) 0);
    }

    public C2944dd(byte b) {
        super(AdRequest.LOGTAG, C2944dd.class.getSimpleName());
        this.f4570a = new C3361jv<>("sdk log request", new C2948df());
        this.f4571g = new C3361jv<>("sdk log response", new C2950dg());
        this.f5821c = "AdData_";
        m32548b();
    }

    /* renamed from: a */
    public static byte[] m33429a(byte[] bArr, String str) {
        byte[] bytes = str.getBytes();
        byte[] array = ByteBuffer.allocate(4).putInt(bytes.length).array();
        byte[] bArr2 = new byte[array.length + bytes.length + bArr.length];
        for (int i = 0; i < bArr2.length; i++) {
            if (i < array.length) {
                bArr2[i] = array[i];
            } else if (i < array.length || i >= bytes.length + array.length) {
                bArr2[i] = bArr[(i - 4) - bytes.length];
            } else {
                bArr2[i] = bytes[i - 4];
            }
        }
        return bArr2;
    }

    /* JADX WARN: Type inference failed for: r0v49, types: [byte[], RequestObjectType] */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // com.flurry.sdk.AbstractC3386kd
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo32549a(byte[] r8, final java.lang.String r9, final java.lang.String r10) {
        /*
            Method dump skipped, instructions count: 459
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.flurry.sdk.C2944dd.mo32549a(byte[], java.lang.String, java.lang.String):void");
    }
}
