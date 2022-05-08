package org.spongycastle.crypto.tls;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/tls/TlsFatalAlertReceived.class */
public class TlsFatalAlertReceived extends TlsException {
    protected short alertDescription;

    public TlsFatalAlertReceived(short s) {
        super(AlertDescription.getText(s), null);
        this.alertDescription = s;
    }

    public short getAlertDescription() {
        return this.alertDescription;
    }
}
