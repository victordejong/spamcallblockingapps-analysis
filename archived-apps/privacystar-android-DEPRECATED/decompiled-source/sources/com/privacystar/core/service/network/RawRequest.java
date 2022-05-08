package com.privacystar.core.service.network;

import com.privacystar.core.C1566R;
import com.privacystar.core.PSApplication;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/network/RawRequest.class */
public class RawRequest {
    String mBody;
    Map<String, String> mHeaders;
    String mMediaType;
    String mUrl;

    public RawRequest(String str) {
        this.mUrl = str;
        this.mMediaType = PSApplication.getInstance().getString(C1566R.string.raw_request_default_media_type);
        this.mBody = PSApplication.getInstance().getString(C1566R.string.raw_request_default_body);
        this.mHeaders = new HashMap();
        this.mHeaders.put(PSApplication.getInstance().getString(C1566R.string.raw_request_default_header_1_key), PSApplication.getInstance().getString(C1566R.string.raw_request_default_header_1_value));
        this.mHeaders.put(PSApplication.getInstance().getString(C1566R.string.raw_request_default_header_2_key), PSApplication.getInstance().getString(C1566R.string.raw_request_default_header_2_value));
    }

    public RawRequest(String str, String str2, String str3, Map<String, String> map) {
        this.mUrl = str;
        this.mMediaType = str2;
        this.mBody = str3;
        this.mHeaders = map;
    }

    public Response makeRequest() {
        Response response;
        OkHttpClient okHttpClient = new OkHttpClient();
        try {
            Request.Builder post = new Request.Builder().url(this.mUrl).post(RequestBody.create(MediaType.parse(this.mMediaType), this.mBody));
            Request.Builder builder = post;
            if (this.mHeaders != null) {
                Iterator<Map.Entry<String, String>> it = this.mHeaders.entrySet().iterator();
                while (true) {
                    builder = post;
                    if (!it.hasNext()) {
                        break;
                    }
                    Map.Entry<String, String> next = it.next();
                    post = post.addHeader(next.getKey(), next.getValue());
                }
            }
            response = okHttpClient.newCall(builder.build()).execute();
        } catch (IOException e) {
            Timber.m32e(e, "Making request to %s", this.mUrl);
            response = null;
            return response;
        } catch (IllegalArgumentException e2) {
            Timber.m23w(e2, "Bad request attempt made.", new Object[0]);
            response = null;
            return response;
        }
        return response;
    }
}
