package org.spongycastle.cms;

import org.spongycastle.asn1.x509.AlgorithmIdentifier;
/* loaded from: classes-dex2jar.jar:org/spongycastle/cms/CMSSignatureAlgorithmNameGenerator.class */
public interface CMSSignatureAlgorithmNameGenerator {
    String getSignatureName(AlgorithmIdentifier algorithmIdentifier, AlgorithmIdentifier algorithmIdentifier2);
}
