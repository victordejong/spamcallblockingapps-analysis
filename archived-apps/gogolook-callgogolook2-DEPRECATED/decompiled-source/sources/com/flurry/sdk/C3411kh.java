package com.flurry.sdk;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
/* renamed from: com.flurry.sdk.kh */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/kh.class */
public final class C3411kh implements AbstractC3417kl<byte[]> {
    @Override // com.flurry.sdk.AbstractC3417kl
    /* renamed from: a */
    public final /* synthetic */ byte[] mo32526a(InputStream inputStream) throws IOException {
        if (inputStream == null) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        C3445la.m32463a(inputStream, byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }

    @Override // com.flurry.sdk.AbstractC3417kl
    /* renamed from: a */
    public final /* synthetic */ void mo32525a(OutputStream outputStream, byte[] bArr) throws IOException {
        byte[] bArr2 = bArr;
        if (outputStream != null && bArr2 != null) {
            outputStream.write(bArr2, 0, bArr2.length);
        }
    }
}
