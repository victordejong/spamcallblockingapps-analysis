package org.spongycastle.jce.interfaces;

import java.security.PublicKey;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/jce/interfaces/MQVPublicKey.class */
public interface MQVPublicKey extends PublicKey {
    PublicKey getEphemeralKey();

    PublicKey getStaticKey();
}
