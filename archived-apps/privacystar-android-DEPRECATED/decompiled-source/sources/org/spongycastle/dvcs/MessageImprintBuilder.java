package org.spongycastle.dvcs;

import java.io.OutputStream;
import org.spongycastle.asn1.x509.DigestInfo;
import org.spongycastle.operator.DigestCalculator;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/dvcs/MessageImprintBuilder.class */
public class MessageImprintBuilder {
    private final DigestCalculator digestCalculator;

    public MessageImprintBuilder(DigestCalculator digestCalculator) {
        this.digestCalculator = digestCalculator;
    }

    public MessageImprint build(byte[] bArr) throws DVCSException {
        try {
            OutputStream outputStream = this.digestCalculator.getOutputStream();
            outputStream.write(bArr);
            outputStream.close();
            return new MessageImprint(new DigestInfo(this.digestCalculator.getAlgorithmIdentifier(), this.digestCalculator.getDigest()));
        } catch (Exception e) {
            throw new DVCSException("unable to build MessageImprint: " + e.getMessage(), e);
        }
    }
}
