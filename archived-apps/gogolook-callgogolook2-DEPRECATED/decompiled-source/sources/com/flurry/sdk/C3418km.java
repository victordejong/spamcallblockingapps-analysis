package com.flurry.sdk;

import com.aotter.net.volley.toolbox.JsonRequest;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
/* renamed from: com.flurry.sdk.km */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/km.class */
public final class C3418km implements AbstractC3417kl<String> {
    @Override // com.flurry.sdk.AbstractC3417kl
    /* renamed from: a */
    public final /* synthetic */ String mo32526a(InputStream inputStream) throws IOException {
        if (inputStream == null) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        C3445la.m32463a(inputStream, byteArrayOutputStream);
        return byteArrayOutputStream.toString();
    }

    @Override // com.flurry.sdk.AbstractC3417kl
    /* renamed from: a */
    public final /* synthetic */ void mo32525a(OutputStream outputStream, String str) throws IOException {
        String str2 = str;
        if (outputStream != null && str2 != null) {
            byte[] bytes = str2.getBytes(JsonRequest.PROTOCOL_CHARSET);
            outputStream.write(bytes, 0, bytes.length);
        }
    }
}
