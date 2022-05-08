package org.spongycastle.cms.p025bc;

import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.cms.CMSException;
import org.spongycastle.cms.KEKRecipient;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.operator.OperatorException;
import org.spongycastle.operator.SymmetricKeyUnwrapper;
import org.spongycastle.operator.p037bc.BcSymmetricKeyUnwrapper;
/* renamed from: org.spongycastle.cms.bc.BcKEKRecipient */
/* loaded from: classes-dex2jar.jar:org/spongycastle/cms/bc/BcKEKRecipient.class */
public abstract class BcKEKRecipient implements KEKRecipient {
    private SymmetricKeyUnwrapper unwrapper;

    public BcKEKRecipient(BcSymmetricKeyUnwrapper bcSymmetricKeyUnwrapper) {
        this.unwrapper = bcSymmetricKeyUnwrapper;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public CipherParameters extractSecretKey(AlgorithmIdentifier algorithmIdentifier, AlgorithmIdentifier algorithmIdentifier2, byte[] bArr) throws CMSException {
        try {
            return CMSUtils.getBcKey(this.unwrapper.generateUnwrappedKey(algorithmIdentifier2, bArr));
        } catch (OperatorException e) {
            throw new CMSException("exception unwrapping key: " + e.getMessage(), e);
        }
    }
}
