package org.spongycastle.crypto.tls;

import java.io.ByteArrayOutputStream;
import org.spongycastle.crypto.Signer;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/tls/SignerInputBuffer.class */
class SignerInputBuffer extends ByteArrayOutputStream {
    /* JADX INFO: Access modifiers changed from: package-private */
    public void updateSigner(Signer signer) {
        signer.update(this.buf, 0, this.count);
    }
}
