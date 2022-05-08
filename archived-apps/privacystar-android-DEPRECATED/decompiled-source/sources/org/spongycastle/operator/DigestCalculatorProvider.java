package org.spongycastle.operator;

import org.spongycastle.asn1.x509.AlgorithmIdentifier;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/operator/DigestCalculatorProvider.class */
public interface DigestCalculatorProvider {
    DigestCalculator get(AlgorithmIdentifier algorithmIdentifier) throws OperatorCreationException;
}
