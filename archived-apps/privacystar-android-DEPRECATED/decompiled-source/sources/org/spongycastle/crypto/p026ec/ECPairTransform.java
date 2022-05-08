package org.spongycastle.crypto.p026ec;

import org.spongycastle.crypto.CipherParameters;
/* renamed from: org.spongycastle.crypto.ec.ECPairTransform */
/* loaded from: classes-dex2jar.jar:org/spongycastle/crypto/ec/ECPairTransform.class */
public interface ECPairTransform {
    void init(CipherParameters cipherParameters);

    ECPair transform(ECPair eCPair);
}
