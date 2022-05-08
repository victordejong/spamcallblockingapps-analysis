package org.spongycastle.jce.interfaces;

import java.security.PublicKey;
import org.spongycastle.math.p032ec.ECPoint;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/jce/interfaces/ECPublicKey.class */
public interface ECPublicKey extends ECKey, PublicKey {
    ECPoint getQ();
}
