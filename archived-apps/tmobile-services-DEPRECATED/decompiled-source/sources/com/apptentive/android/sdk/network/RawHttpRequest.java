package com.apptentive.android.sdk.network;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/network/RawHttpRequest.class */
public class RawHttpRequest extends HttpRequest {
    private final byte[] data;

    public RawHttpRequest(String str, byte[] bArr) {
        super(str);
        if (bArr != null) {
            this.data = bArr;
            return;
        }
        throw new IllegalArgumentException("data is null");
    }

    @Override // com.apptentive.android.sdk.network.HttpRequest
    protected byte[] createRequestData() throws IOException {
        return this.data;
    }
}
