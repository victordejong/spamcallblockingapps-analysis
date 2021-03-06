package org.spongycastle.asn1;

import java.io.OutputStream;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/asn1/ASN1Generator.class */
public abstract class ASN1Generator {
    protected OutputStream _out;

    public ASN1Generator(OutputStream outputStream) {
        this._out = outputStream;
    }

    public abstract OutputStream getRawOutputStream();
}
