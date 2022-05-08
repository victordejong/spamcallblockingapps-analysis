package org.spongycastle.cms;

import java.io.IOException;
import org.spongycastle.asn1.cms.KEKRecipientInfo;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
/* loaded from: classes-dex2jar.jar:org/spongycastle/cms/KEKRecipientInformation.class */
public class KEKRecipientInformation extends RecipientInformation {
    private KEKRecipientInfo info;

    /* JADX INFO: Access modifiers changed from: package-private */
    public KEKRecipientInformation(KEKRecipientInfo kEKRecipientInfo, AlgorithmIdentifier algorithmIdentifier, CMSSecureReadable cMSSecureReadable, AuthAttributesProvider authAttributesProvider) {
        super(kEKRecipientInfo.getKeyEncryptionAlgorithm(), algorithmIdentifier, cMSSecureReadable, authAttributesProvider);
        this.info = kEKRecipientInfo;
        this.rid = new KEKRecipientId(kEKRecipientInfo.getKekid().getKeyIdentifier().getOctets());
    }

    @Override // org.spongycastle.cms.RecipientInformation
    protected RecipientOperator getRecipientOperator(Recipient recipient) throws CMSException, IOException {
        return ((KEKRecipient) recipient).getRecipientOperator(this.keyEncAlg, this.messageAlgorithm, this.info.getEncryptedKey().getOctets());
    }
}
