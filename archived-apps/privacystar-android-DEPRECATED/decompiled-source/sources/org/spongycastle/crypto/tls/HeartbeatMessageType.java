package org.spongycastle.crypto.tls;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/tls/HeartbeatMessageType.class */
public class HeartbeatMessageType {
    public static final short heartbeat_request = 1;
    public static final short heartbeat_response = 2;

    public static boolean isValid(short s) {
        boolean z = true;
        if (s < 1 || s > 2) {
            z = false;
        }
        return z;
    }
}
