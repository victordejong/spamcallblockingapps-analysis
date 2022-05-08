package com.mopub.volley.toolbox;

import androidx.annotation.Nullable;
import com.aotter.net.volley.toolbox.JsonRequest;
import com.mopub.volley.NetworkResponse;
import com.mopub.volley.ParseError;
import com.mopub.volley.Response;
import java.io.UnsupportedEncodingException;
import org.json.JSONArray;
import org.json.JSONException;
/* loaded from: classes2-dex2jar.jar:com/mopub/volley/toolbox/JsonArrayRequest.class */
public class JsonArrayRequest extends JsonRequest<JSONArray> {
    public JsonArrayRequest(int i, String str, @Nullable JSONArray jSONArray, Response.Listener<JSONArray> listener, @Nullable Response.ErrorListener errorListener) {
        super(i, str, jSONArray == null ? null : jSONArray.toString(), listener, errorListener);
    }

    public JsonArrayRequest(String str, Response.Listener<JSONArray> listener, @Nullable Response.ErrorListener errorListener) {
        super(0, str, null, listener, errorListener);
    }

    @Override // com.mopub.volley.Request
    /* renamed from: a */
    public Response<JSONArray> mo29871a(NetworkResponse networkResponse) {
        try {
            return Response.success(new JSONArray(new String(networkResponse.data, HttpHeaderParser.parseCharset(networkResponse.headers, JsonRequest.PROTOCOL_CHARSET))), HttpHeaderParser.parseCacheHeaders(networkResponse));
        } catch (UnsupportedEncodingException e) {
            return Response.error(new ParseError(e));
        } catch (JSONException e2) {
            return Response.error(new ParseError(e2));
        }
    }
}
