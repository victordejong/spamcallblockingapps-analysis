package com.apptentive.android.sdk.network;

import com.apptentive.android.sdk.util.StringUtils;
import com.facebook.stetho.common.Utf8Charset;
import java.io.IOException;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/network/HttpJsonRequest.class */
public class HttpJsonRequest extends HttpRequest {
    private final JSONObject requestObject;
    private JSONObject responseObject;

    public HttpJsonRequest(String str, JSONObject jSONObject) {
        super(str);
        if (jSONObject != null) {
            this.requestObject = jSONObject;
            return;
        }
        throw new IllegalArgumentException("Json object is null");
    }

    @Override // com.apptentive.android.sdk.network.HttpRequest
    protected byte[] createRequestData() throws IOException {
        return this.requestObject.toString().getBytes(Utf8Charset.NAME);
    }

    public JSONObject getResponseObject() {
        return this.responseObject;
    }

    @Override // com.apptentive.android.sdk.network.HttpRequest
    protected void handleResponse(String str) throws IOException {
        try {
            if (!StringUtils.isNullOrEmpty(str)) {
                this.responseObject = new JSONObject(str);
            }
        } catch (JSONException e) {
            throw new IOException(e);
        }
    }
}
