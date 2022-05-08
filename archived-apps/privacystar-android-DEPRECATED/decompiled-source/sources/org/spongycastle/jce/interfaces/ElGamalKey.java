package org.spongycastle.jce.interfaces;

import javax.crypto.interfaces.DHKey;
import org.spongycastle.jce.spec.ElGamalParameterSpec;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/jce/interfaces/ElGamalKey.class */
public interface ElGamalKey extends DHKey {
    ElGamalParameterSpec getParameters();
}
