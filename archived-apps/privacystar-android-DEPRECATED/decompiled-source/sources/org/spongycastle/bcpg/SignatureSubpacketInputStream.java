package org.spongycastle.bcpg;

import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import org.spongycastle.util.Arrays;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/bcpg/SignatureSubpacketInputStream.class */
public class SignatureSubpacketInputStream extends InputStream implements SignatureSubpacketTags {

    /* renamed from: in */
    InputStream f991in;

    public SignatureSubpacketInputStream(InputStream inputStream) {
        this.f991in = inputStream;
    }

    private byte[] checkData(byte[] bArr, int i, int i2, String str) throws EOFException {
        if (i2 == i) {
            return Arrays.copyOfRange(bArr, 0, i);
        }
        throw new EOFException("truncated " + str + " subpacket data.");
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        return this.f991in.available();
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        return this.f991in.read();
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0082  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.spongycastle.bcpg.SignatureSubpacket readPacket() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 574
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.bcpg.SignatureSubpacketInputStream.readPacket():org.spongycastle.bcpg.SignatureSubpacket");
    }
}
