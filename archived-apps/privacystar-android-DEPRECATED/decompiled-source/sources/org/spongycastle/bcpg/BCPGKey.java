package org.spongycastle.bcpg;

import org.spongycastle.util.Encodable;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/bcpg/BCPGKey.class */
public interface BCPGKey extends Encodable {
    @Override // org.spongycastle.util.Encodable
    byte[] getEncoded();

    String getFormat();
}
