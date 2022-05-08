package com.mopub.volley.toolbox;

import com.mopub.volley.Header;
import java.io.InputStream;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/mopub/volley/toolbox/HttpResponse.class */
public final class HttpResponse {

    /* renamed from: a */
    public final int f9558a;

    /* renamed from: b */
    public final List<Header> f9559b;

    /* renamed from: c */
    public final int f9560c;

    /* renamed from: d */
    public final InputStream f9561d;

    public HttpResponse(int i, List<Header> list) {
        this(i, list, -1, null);
    }

    public HttpResponse(int i, List<Header> list, int i2, InputStream inputStream) {
        this.f9558a = i;
        this.f9559b = list;
        this.f9560c = i2;
        this.f9561d = inputStream;
    }

    public final InputStream getContent() {
        return this.f9561d;
    }

    public final int getContentLength() {
        return this.f9560c;
    }

    public final List<Header> getHeaders() {
        return Collections.unmodifiableList(this.f9559b);
    }

    public final int getStatusCode() {
        return this.f9558a;
    }
}
