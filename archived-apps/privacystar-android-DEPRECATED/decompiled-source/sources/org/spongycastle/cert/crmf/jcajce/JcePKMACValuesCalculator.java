package org.spongycastle.cert.crmf.jcajce;

import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.security.Provider;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.cert.crmf.CRMFException;
import org.spongycastle.cert.crmf.PKMACValuesCalculator;
import org.spongycastle.jcajce.util.DefaultJcaJceHelper;
import org.spongycastle.jcajce.util.NamedJcaJceHelper;
import org.spongycastle.jcajce.util.ProviderJcaJceHelper;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/cert/crmf/jcajce/JcePKMACValuesCalculator.class */
public class JcePKMACValuesCalculator implements PKMACValuesCalculator {
    private MessageDigest digest;
    private CRMFHelper helper = new CRMFHelper(new DefaultJcaJceHelper());
    private Mac mac;

    @Override // org.spongycastle.cert.crmf.PKMACValuesCalculator
    public byte[] calculateDigest(byte[] bArr) {
        return this.digest.digest(bArr);
    }

    @Override // org.spongycastle.cert.crmf.PKMACValuesCalculator
    public byte[] calculateMac(byte[] bArr, byte[] bArr2) throws CRMFException {
        try {
            this.mac.init(new SecretKeySpec(bArr, this.mac.getAlgorithm()));
            return this.mac.doFinal(bArr2);
        } catch (GeneralSecurityException e) {
            throw new CRMFException("failure in setup: " + e.getMessage(), e);
        }
    }

    public JcePKMACValuesCalculator setProvider(String str) {
        this.helper = new CRMFHelper(new NamedJcaJceHelper(str));
        return this;
    }

    public JcePKMACValuesCalculator setProvider(Provider provider) {
        this.helper = new CRMFHelper(new ProviderJcaJceHelper(provider));
        return this;
    }

    @Override // org.spongycastle.cert.crmf.PKMACValuesCalculator
    public void setup(AlgorithmIdentifier algorithmIdentifier, AlgorithmIdentifier algorithmIdentifier2) throws CRMFException {
        this.digest = this.helper.createDigest(algorithmIdentifier.getAlgorithm());
        this.mac = this.helper.createMac(algorithmIdentifier2.getAlgorithm());
    }
}
