package org.spongycastle.bcpg;

import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/bcpg/UserAttributeSubpacketInputStream.class */
public class UserAttributeSubpacketInputStream extends InputStream implements UserAttributeSubpacketTags {

    /* renamed from: in */
    InputStream f992in;

    public UserAttributeSubpacketInputStream(InputStream inputStream) {
        this.f992in = inputStream;
    }

    private void readFully(byte[] bArr, int i, int i2) throws IOException {
        int i3 = i;
        int i4 = i2;
        if (i2 > 0) {
            int read = read();
            if (read < 0) {
                throw new EOFException();
            }
            bArr[i] = (byte) read;
            i3 = i + 1;
            i4 = i2 - 1;
        }
        while (i4 > 0) {
            int read2 = this.f992in.read(bArr, i3, i4);
            if (read2 < 0) {
                throw new EOFException();
            }
            i3 += read2;
            i4 -= read2;
        }
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        return this.f992in.available();
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        return this.f992in.read();
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x007e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.spongycastle.bcpg.UserAttributeSubpacket readPacket() throws java.io.IOException {
        /*
            r6 = this;
            r0 = r6
            int r0 = r0.read()
            r7 = r0
            r0 = r7
            if (r0 >= 0) goto L_0x000b
            r0 = 0
            return r0
        L_0x000b:
            r0 = r7
            r1 = 192(0xc0, float:2.69E-43)
            if (r0 >= r1) goto L_0x0017
        L_0x0012:
            r0 = 0
            r8 = r0
            goto L_0x0068
        L_0x0017:
            r0 = r7
            r1 = 223(0xdf, float:3.12E-43)
            if (r0 > r1) goto L_0x0036
            r0 = r7
            r1 = 192(0xc0, float:2.69E-43)
            int r0 = r0 - r1
            r1 = 8
            int r0 = r0 << r1
            r1 = r6
            java.io.InputStream r1 = r1.f992in
            int r1 = r1.read()
            int r0 = r0 + r1
            r1 = 192(0xc0, float:2.69E-43)
            int r0 = r0 + r1
            r7 = r0
            goto L_0x0012
        L_0x0036:
            r0 = r7
            r1 = 255(0xff, float:3.57E-43)
            if (r0 != r1) goto L_0x00ab
            r0 = r6
            java.io.InputStream r0 = r0.f992in
            int r0 = r0.read()
            r1 = 24
            int r0 = r0 << r1
            r1 = r6
            java.io.InputStream r1 = r1.f992in
            int r1 = r1.read()
            r2 = 16
            int r1 = r1 << r2
            r0 = r0 | r1
            r1 = r6
            java.io.InputStream r1 = r1.f992in
            int r1 = r1.read()
            r2 = 8
            int r1 = r1 << r2
            r0 = r0 | r1
            r1 = r6
            java.io.InputStream r1 = r1.f992in
            int r1 = r1.read()
            r0 = r0 | r1
            r7 = r0
            r0 = 1
            r8 = r0
        L_0x0068:
            r0 = r6
            java.io.InputStream r0 = r0.f992in
            int r0 = r0.read()
            r9 = r0
            r0 = r9
            if (r0 >= 0) goto L_0x007e
            java.io.EOFException r0 = new java.io.EOFException
            r1 = r0
            java.lang.String r2 = "unexpected EOF reading user attribute sub packet"
            r1.<init>(r2)
            throw r0
        L_0x007e:
            r0 = r7
            r1 = 1
            int r0 = r0 - r1
            byte[] r0 = new byte[r0]
            r10 = r0
            r0 = r6
            r1 = r10
            r2 = 0
            r3 = r10
            int r3 = r3.length
            r0.readFully(r1, r2, r3)
            r0 = r9
            r1 = 1
            if (r0 == r1) goto L_0x00a0
            org.spongycastle.bcpg.UserAttributeSubpacket r0 = new org.spongycastle.bcpg.UserAttributeSubpacket
            r1 = r0
            r2 = r9
            r3 = r8
            r4 = r10
            r1.<init>(r2, r3, r4)
            return r0
        L_0x00a0:
            org.spongycastle.bcpg.attr.ImageAttribute r0 = new org.spongycastle.bcpg.attr.ImageAttribute
            r1 = r0
            r2 = r8
            r3 = r10
            r1.<init>(r2, r3)
            return r0
        L_0x00ab:
            java.io.IOException r0 = new java.io.IOException
            r1 = r0
            java.lang.String r2 = "unrecognised length reading user attribute sub packet"
            r1.<init>(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.bcpg.UserAttributeSubpacketInputStream.readPacket():org.spongycastle.bcpg.UserAttributeSubpacket");
    }
}
