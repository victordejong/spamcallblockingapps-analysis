package org.spongycastle.openpgp.operator;

import java.io.OutputStream;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/openpgp/operator/PGPContentSigner.class */
public interface PGPContentSigner {
    byte[] getDigest();

    int getHashAlgorithm();

    int getKeyAlgorithm();

    long getKeyID();

    OutputStream getOutputStream();

    byte[] getSignature();

    int getType();
}
