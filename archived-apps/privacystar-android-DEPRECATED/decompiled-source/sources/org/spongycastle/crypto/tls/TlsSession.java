package org.spongycastle.crypto.tls;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/tls/TlsSession.class */
public interface TlsSession {
    SessionParameters exportSessionParameters();

    byte[] getSessionID();

    void invalidate();

    boolean isResumable();
}
