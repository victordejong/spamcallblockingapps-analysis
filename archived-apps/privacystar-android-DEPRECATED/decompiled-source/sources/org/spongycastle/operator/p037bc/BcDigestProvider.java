package org.spongycastle.operator.p037bc;

import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.crypto.ExtendedDigest;
import org.spongycastle.operator.OperatorCreationException;
/* renamed from: org.spongycastle.operator.bc.BcDigestProvider */
/* loaded from: classes3-dex2jar.jar:org/spongycastle/operator/bc/BcDigestProvider.class */
public interface BcDigestProvider {
    ExtendedDigest get(AlgorithmIdentifier algorithmIdentifier) throws OperatorCreationException;
}
