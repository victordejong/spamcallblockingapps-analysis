package org.spongycastle.crypto.tls;

import java.io.IOException;
import org.spongycastle.crypto.params.AsymmetricKeyParameter;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/tls/TlsAgreementCredentials.class */
public interface TlsAgreementCredentials extends TlsCredentials {
    byte[] generateAgreement(AsymmetricKeyParameter asymmetricKeyParameter) throws IOException;
}
