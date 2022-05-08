package org.spongycastle.operator;

import java.io.OutputStream;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/operator/DigestCalculator.class */
public interface DigestCalculator {
    AlgorithmIdentifier getAlgorithmIdentifier();

    byte[] getDigest();

    OutputStream getOutputStream();
}
