package com.facebook.stetho.inspector.jsonrpc.protocol;

import android.annotation.SuppressLint;
import com.facebook.stetho.json.annotation.JsonProperty;
import org.json.JSONObject;
@SuppressLint({"UsingDefaultJsonDeserializer", "EmptyJsonPropertyUse"})
/* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/jsonrpc/protocol/JsonRpcRequest.class */
public class JsonRpcRequest {
    @JsonProperty

    /* renamed from: id */
    public Long f113id;
    @JsonProperty(required = true)
    public String method;
    @JsonProperty
    public JSONObject params;

    public JsonRpcRequest() {
    }

    public JsonRpcRequest(Long l, String str, JSONObject jSONObject) {
        this.f113id = l;
        this.method = str;
        this.params = jSONObject;
    }
}
