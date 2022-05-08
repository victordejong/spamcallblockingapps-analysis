package org.spongycastle.openpgp.operator;

import org.spongycastle.bcpg.ContainedPacket;
import org.spongycastle.openpgp.PGPException;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/openpgp/operator/PGPKeyEncryptionMethodGenerator.class */
public abstract class PGPKeyEncryptionMethodGenerator {
    public abstract ContainedPacket generate(int i, byte[] bArr) throws PGPException;
}
