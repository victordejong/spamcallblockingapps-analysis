package org.spongycastle.cms.p025bc;

import java.io.InputStream;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.cms.CMSException;
import org.spongycastle.cms.RecipientOperator;
import org.spongycastle.crypto.BufferedBlockCipher;
import org.spongycastle.crypto.StreamCipher;
import org.spongycastle.crypto.p027io.CipherInputStream;
import org.spongycastle.crypto.params.KeyParameter;
import org.spongycastle.operator.InputDecryptor;
import org.spongycastle.operator.p037bc.BcSymmetricKeyUnwrapper;
/* renamed from: org.spongycastle.cms.bc.BcKEKEnvelopedRecipient */
/* loaded from: classes-dex2jar.jar:org/spongycastle/cms/bc/BcKEKEnvelopedRecipient.class */
public class BcKEKEnvelopedRecipient extends BcKEKRecipient {
    public BcKEKEnvelopedRecipient(BcSymmetricKeyUnwrapper bcSymmetricKeyUnwrapper) {
        super(bcSymmetricKeyUnwrapper);
    }

    @Override // org.spongycastle.cms.KEKRecipient
    public RecipientOperator getRecipientOperator(AlgorithmIdentifier algorithmIdentifier, final AlgorithmIdentifier algorithmIdentifier2, byte[] bArr) throws CMSException {
        final Object createContentCipher = EnvelopedDataHelper.createContentCipher(false, (KeyParameter) extractSecretKey(algorithmIdentifier, algorithmIdentifier2, bArr), algorithmIdentifier2);
        return new RecipientOperator(new InputDecryptor() { // from class: org.spongycastle.cms.bc.BcKEKEnvelopedRecipient.1
            @Override // org.spongycastle.operator.InputDecryptor
            public AlgorithmIdentifier getAlgorithmIdentifier() {
                return algorithmIdentifier2;
            }

            @Override // org.spongycastle.operator.InputDecryptor
            public InputStream getInputStream(InputStream inputStream) {
                return createContentCipher instanceof BufferedBlockCipher ? new CipherInputStream(inputStream, (BufferedBlockCipher) createContentCipher) : new CipherInputStream(inputStream, (StreamCipher) createContentCipher);
            }
        });
    }
}
