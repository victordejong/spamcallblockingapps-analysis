package org.spongycastle.bcpg;

import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/bcpg/OutputStreamPacket.class */
public abstract class OutputStreamPacket {
    protected BCPGOutputStream out;

    public OutputStreamPacket(BCPGOutputStream bCPGOutputStream) {
        this.out = bCPGOutputStream;
    }

    public abstract void close() throws IOException;

    public abstract BCPGOutputStream open() throws IOException;
}
