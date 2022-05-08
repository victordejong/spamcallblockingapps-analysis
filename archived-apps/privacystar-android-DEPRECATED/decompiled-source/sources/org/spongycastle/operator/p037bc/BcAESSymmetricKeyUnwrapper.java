package org.spongycastle.operator.p037bc;

import org.spongycastle.crypto.engines.AESWrapEngine;
import org.spongycastle.crypto.params.KeyParameter;
/* renamed from: org.spongycastle.operator.bc.BcAESSymmetricKeyUnwrapper */
/* loaded from: classes3-dex2jar.jar:org/spongycastle/operator/bc/BcAESSymmetricKeyUnwrapper.class */
public class BcAESSymmetricKeyUnwrapper extends BcSymmetricKeyUnwrapper {
    public BcAESSymmetricKeyUnwrapper(KeyParameter keyParameter) {
        super(AESUtil.determineKeyEncAlg(keyParameter), new AESWrapEngine(), keyParameter);
    }
}
