package org.spongycastle.crypto.tls;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/tls/TlsFatalAlert.class */
public class TlsFatalAlert extends TlsException {
    protected short alertDescription;

    public TlsFatalAlert(short s) {
        this(s, null);
    }

    public TlsFatalAlert(short s, Throwable th) {
        super(AlertDescription.getText(s), th);
        this.alertDescription = s;
    }

    public short getAlertDescription() {
        return this.alertDescription;
    }
}
