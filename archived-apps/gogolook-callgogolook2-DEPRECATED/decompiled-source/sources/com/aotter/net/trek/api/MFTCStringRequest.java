package com.aotter.net.trek.api;

import com.aotter.net.volley.Response;
import com.aotter.net.volley.toolbox.StringRequest;
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/api/MFTCStringRequest.class */
public class MFTCStringRequest extends StringRequest {
    public MFTCStringRequest(int i, String str, Response.Listener<String> listener, Response.ErrorListener errorListener) {
        super(i, str, listener, errorListener);
    }

    @Override // com.aotter.net.volley.Request
    public byte[] getBody() {
        return super.getBody();
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0014, code lost:
        if (r0.equals(java.util.Collections.emptyMap()) != false) goto L_0x0017;
     */
    @Override // com.aotter.net.volley.Request
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.Map<java.lang.String, java.lang.String> getHeaders() {
        /*
            r4 = this;
            r0 = r4
            java.util.Map r0 = super.getHeaders()
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L_0x0017
            r0 = r5
            r6 = r0
            r0 = r5
            java.util.Map r1 = java.util.Collections.emptyMap()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x001f
        L_0x0017:
            java.util.HashMap r0 = new java.util.HashMap
            r1 = r0
            r1.<init>()
            r6 = r0
        L_0x001f:
            r0 = r6
            java.lang.String r1 = "x-aotter-version"
            java.lang.String r2 = "android_2.0.2_rc12"
            java.lang.Object r0 = r0.put(r1, r2)
            r0 = r6
            java.lang.String r1 = "x-aotter-clientid"
            java.lang.String r2 = com.aotter.net.trek.global.AotterTrekApplication.mClientId
            java.lang.Object r0 = r0.put(r1, r2)
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.aotter.net.trek.api.MFTCStringRequest.getHeaders():java.util.Map");
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0014, code lost:
        if (r0.equals(java.util.Collections.emptyMap()) != false) goto L_0x0017;
     */
    @Override // com.aotter.net.volley.Request
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.Map<java.lang.String, java.lang.String> getParams() {
        /*
            r3 = this;
            r0 = r3
            java.util.Map r0 = super.getParams()
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L_0x0017
            r0 = r4
            r5 = r0
            r0 = r4
            java.util.Map r1 = java.util.Collections.emptyMap()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x001f
        L_0x0017:
            java.util.HashMap r0 = new java.util.HashMap
            r1 = r0
            r1.<init>()
            r5 = r0
        L_0x001f:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.aotter.net.trek.api.MFTCStringRequest.getParams():java.util.Map");
    }
}
