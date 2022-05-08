package org.spongycastle.operator;

import java.io.OutputStream;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/operator/ContentSigner.class */
public interface ContentSigner {
    AlgorithmIdentifier getAlgorithmIdentifier();

    OutputStream getOutputStream();

    byte[] getSignature();
}
