package org.spongycastle.cert.ocsp;

import org.spongycastle.asn1.ocsp.Request;
import org.spongycastle.asn1.x509.Extensions;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/cert/ocsp/Req.class */
public class Req {
    private Request req;

    public Req(Request request) {
        this.req = request;
    }

    public CertificateID getCertID() {
        return new CertificateID(this.req.getReqCert());
    }

    public Extensions getSingleRequestExtensions() {
        return this.req.getSingleRequestExtensions();
    }
}
