package org.spongycastle.operator;

import org.spongycastle.asn1.x509.AlgorithmIdentifier;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/operator/DigestAlgorithmIdentifierFinder.class */
public interface DigestAlgorithmIdentifierFinder {
    AlgorithmIdentifier find(String str);

    AlgorithmIdentifier find(AlgorithmIdentifier algorithmIdentifier);
}
