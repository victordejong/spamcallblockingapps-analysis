package org.spongycastle.jcajce.spec;

import javax.crypto.spec.PBEKeySpec;
import org.spongycastle.asn1.DERNull;
import org.spongycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/spec/PBKDF2KeySpec.class */
public class PBKDF2KeySpec extends PBEKeySpec {
    private static final AlgorithmIdentifier defaultPRF = new AlgorithmIdentifier(PKCSObjectIdentifiers.id_hmacWithSHA1, DERNull.INSTANCE);
    private AlgorithmIdentifier prf;

    public PBKDF2KeySpec(char[] cArr, byte[] bArr, int i, int i2, AlgorithmIdentifier algorithmIdentifier) {
        super(cArr, bArr, i, i2);
        this.prf = algorithmIdentifier;
    }

    public AlgorithmIdentifier getPrf() {
        return this.prf;
    }

    public boolean isDefaultPrf() {
        return defaultPRF.equals(this.prf);
    }
}
