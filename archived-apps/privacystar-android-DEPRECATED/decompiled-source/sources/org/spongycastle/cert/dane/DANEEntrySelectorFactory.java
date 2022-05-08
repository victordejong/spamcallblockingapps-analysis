package org.spongycastle.cert.dane;

import java.io.IOException;
import java.io.OutputStream;
import org.spongycastle.operator.DigestCalculator;
import org.spongycastle.util.Strings;
import org.spongycastle.util.encoders.Hex;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/cert/dane/DANEEntrySelectorFactory.class */
public class DANEEntrySelectorFactory {
    private final DigestCalculator digestCalculator;

    public DANEEntrySelectorFactory(DigestCalculator digestCalculator) {
        this.digestCalculator = digestCalculator;
    }

    public DANEEntrySelector createSelector(String str) throws DANEException {
        byte[] uTF8ByteArray = Strings.toUTF8ByteArray(str.substring(0, str.indexOf(64)));
        try {
            OutputStream outputStream = this.digestCalculator.getOutputStream();
            outputStream.write(uTF8ByteArray);
            outputStream.close();
            byte[] digest = this.digestCalculator.getDigest();
            return new DANEEntrySelector(Strings.fromByteArray(Hex.encode(digest)) + "._smimecert." + str.substring(str.indexOf(64) + 1));
        } catch (IOException e) {
            throw new DANEException("Unable to calculate digest string: " + e.getMessage(), e);
        }
    }
}
