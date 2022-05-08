package org.spongycastle.bcpg;

import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/bcpg/SymmetricEncIntegrityPacket.class */
public class SymmetricEncIntegrityPacket extends InputStreamPacket {
    int version;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SymmetricEncIntegrityPacket(BCPGInputStream bCPGInputStream) throws IOException {
        super(bCPGInputStream);
        this.version = bCPGInputStream.read();
    }
}
