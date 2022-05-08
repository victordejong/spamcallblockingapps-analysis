package org.spongycastle.jcajce.p028io;

import java.io.IOException;
import java.io.OutputStream;
import javax.crypto.Mac;
/* renamed from: org.spongycastle.jcajce.io.MacOutputStream */
/* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/io/MacOutputStream.class */
public final class MacOutputStream extends OutputStream {
    private Mac mac;

    public MacOutputStream(Mac mac) {
        this.mac = mac;
    }

    public byte[] getMac() {
        return this.mac.doFinal();
    }

    @Override // java.io.OutputStream
    public void write(int i) throws IOException {
        this.mac.update((byte) i);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        this.mac.update(bArr, i, i2);
    }
}
