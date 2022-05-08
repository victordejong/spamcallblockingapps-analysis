package com.aotter.net.trek.network;

import com.aotter.net.volley.Request;
import com.aotter.net.volley.RequestQueue;
/* renamed from: com.aotter.net.trek.network.f */
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/network/f.class */
public class C1760f implements RequestQueue.RequestFilter {

    /* renamed from: a */
    public final /* synthetic */ Request f1572a;

    /* renamed from: b */
    public final /* synthetic */ TrekRequestQueue f1573b;

    public C1760f(TrekRequestQueue trekRequestQueue, Request request) {
        this.f1573b = trekRequestQueue;
        this.f1572a = request;
    }

    @Override // com.aotter.net.volley.RequestQueue.RequestFilter
    public boolean apply(Request<?> request) {
        return this.f1572a == request;
    }
}
