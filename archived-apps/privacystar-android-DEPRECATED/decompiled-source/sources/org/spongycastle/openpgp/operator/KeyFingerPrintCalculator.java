package org.spongycastle.openpgp.operator;

import org.spongycastle.bcpg.PublicKeyPacket;
import org.spongycastle.openpgp.PGPException;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/openpgp/operator/KeyFingerPrintCalculator.class */
public interface KeyFingerPrintCalculator {
    byte[] calculateFingerprint(PublicKeyPacket publicKeyPacket) throws PGPException;
}
