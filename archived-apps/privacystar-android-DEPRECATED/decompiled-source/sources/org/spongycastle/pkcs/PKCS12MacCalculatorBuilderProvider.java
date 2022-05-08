package org.spongycastle.pkcs;

import org.spongycastle.asn1.x509.AlgorithmIdentifier;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/pkcs/PKCS12MacCalculatorBuilderProvider.class */
public interface PKCS12MacCalculatorBuilderProvider {
    PKCS12MacCalculatorBuilder get(AlgorithmIdentifier algorithmIdentifier);
}
