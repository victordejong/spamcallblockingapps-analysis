package org.spongycastle.crypto.tls;

import java.security.SecureRandom;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/tls/TlsClientContextImpl.class */
class TlsClientContextImpl extends AbstractTlsContext implements TlsClientContext {
    /* JADX INFO: Access modifiers changed from: package-private */
    public TlsClientContextImpl(SecureRandom secureRandom, SecurityParameters securityParameters) {
        super(secureRandom, securityParameters);
    }

    @Override // org.spongycastle.crypto.tls.TlsContext
    public boolean isServer() {
        return false;
    }
}
