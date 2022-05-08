package org.spongycastle.openpgp.operator.jcajce;

import java.security.Provider;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import org.spongycastle.jcajce.util.DefaultJcaJceHelper;
import org.spongycastle.jcajce.util.NamedJcaJceHelper;
import org.spongycastle.jcajce.util.ProviderJcaJceHelper;
import org.spongycastle.openpgp.PGPException;
import org.spongycastle.openpgp.operator.PBEDataDecryptorFactory;
import org.spongycastle.openpgp.operator.PGPDataDecryptor;
import org.spongycastle.openpgp.operator.PGPDigestCalculatorProvider;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/openpgp/operator/jcajce/JcePBEDataDecryptorFactoryBuilder.class */
public class JcePBEDataDecryptorFactoryBuilder {
    private PGPDigestCalculatorProvider calculatorProvider;
    private OperatorHelper helper = new OperatorHelper(new DefaultJcaJceHelper());

    public JcePBEDataDecryptorFactoryBuilder(PGPDigestCalculatorProvider pGPDigestCalculatorProvider) {
        this.calculatorProvider = pGPDigestCalculatorProvider;
    }

    public PBEDataDecryptorFactory build(char[] cArr) {
        return new PBEDataDecryptorFactory(cArr, this.calculatorProvider) { // from class: org.spongycastle.openpgp.operator.jcajce.JcePBEDataDecryptorFactoryBuilder.1
            @Override // org.spongycastle.openpgp.operator.PGPDataDecryptorFactory
            public PGPDataDecryptor createDataDecryptor(boolean z, int i, byte[] bArr) throws PGPException {
                return JcePBEDataDecryptorFactoryBuilder.this.helper.createDataDecryptor(z, i, bArr);
            }

            @Override // org.spongycastle.openpgp.operator.PBEDataDecryptorFactory
            public byte[] recoverSessionData(int i, byte[] bArr, byte[] bArr2) throws PGPException {
                if (bArr2 != null) {
                    try {
                        if (bArr2.length > 0) {
                            String symmetricCipherName = PGPUtil.getSymmetricCipherName(i);
                            OperatorHelper operatorHelper = JcePBEDataDecryptorFactoryBuilder.this.helper;
                            Cipher createCipher = operatorHelper.createCipher(symmetricCipherName + "/CFB/NoPadding");
                            createCipher.init(2, new SecretKeySpec(bArr, symmetricCipherName), new IvParameterSpec(new byte[createCipher.getBlockSize()]));
                            return createCipher.doFinal(bArr2);
                        }
                    } catch (Exception e) {
                        throw new PGPException("Exception recovering session info", e);
                    }
                }
                byte[] bArr3 = new byte[bArr.length + 1];
                bArr3[0] = (byte) i;
                System.arraycopy(bArr, 0, bArr3, 1, bArr.length);
                return bArr3;
            }
        };
    }

    public JcePBEDataDecryptorFactoryBuilder setProvider(String str) {
        this.helper = new OperatorHelper(new NamedJcaJceHelper(str));
        return this;
    }

    public JcePBEDataDecryptorFactoryBuilder setProvider(Provider provider) {
        this.helper = new OperatorHelper(new ProviderJcaJceHelper(provider));
        return this;
    }
}
