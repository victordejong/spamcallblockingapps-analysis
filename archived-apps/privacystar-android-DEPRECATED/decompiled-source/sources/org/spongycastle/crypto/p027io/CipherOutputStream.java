package org.spongycastle.crypto.p027io;

import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import org.spongycastle.crypto.BufferedBlockCipher;
import org.spongycastle.crypto.StreamCipher;
import org.spongycastle.crypto.modes.AEADBlockCipher;
/* renamed from: org.spongycastle.crypto.io.CipherOutputStream */
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/io/CipherOutputStream.class */
public class CipherOutputStream extends FilterOutputStream {
    private AEADBlockCipher aeadBlockCipher;
    private byte[] buf;
    private BufferedBlockCipher bufferedBlockCipher;
    private final byte[] oneByte;
    private StreamCipher streamCipher;

    public CipherOutputStream(OutputStream outputStream, BufferedBlockCipher bufferedBlockCipher) {
        super(outputStream);
        this.oneByte = new byte[1];
        this.bufferedBlockCipher = bufferedBlockCipher;
    }

    public CipherOutputStream(OutputStream outputStream, StreamCipher streamCipher) {
        super(outputStream);
        this.oneByte = new byte[1];
        this.streamCipher = streamCipher;
    }

    public CipherOutputStream(OutputStream outputStream, AEADBlockCipher aEADBlockCipher) {
        super(outputStream);
        this.oneByte = new byte[1];
        this.aeadBlockCipher = aEADBlockCipher;
    }

    private void ensureCapacity(int i, boolean z) {
        int i2;
        if (z) {
            if (this.bufferedBlockCipher != null) {
                i2 = this.bufferedBlockCipher.getOutputSize(i);
            } else {
                i2 = i;
                if (this.aeadBlockCipher != null) {
                    i2 = this.aeadBlockCipher.getOutputSize(i);
                }
            }
        } else if (this.bufferedBlockCipher != null) {
            i2 = this.bufferedBlockCipher.getUpdateOutputSize(i);
        } else {
            i2 = i;
            if (this.aeadBlockCipher != null) {
                i2 = this.aeadBlockCipher.getUpdateOutputSize(i);
            }
        }
        if (this.buf == null || this.buf.length < i2) {
            this.buf = new byte[i2];
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0098, code lost:
        if (r7 != null) goto L_0x009e;
     */
    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void close() throws java.io.IOException {
        /*
            r5 = this;
            r0 = r5
            r1 = 0
            r2 = 1
            r0.ensureCapacity(r1, r2)
            r0 = r5
            org.spongycastle.crypto.BufferedBlockCipher r0 = r0.bufferedBlockCipher     // Catch: Exception -> 0x006d, InvalidCipherTextException -> 0x007c
            if (r0 == 0) goto L_0x002e
            r0 = r5
            org.spongycastle.crypto.BufferedBlockCipher r0 = r0.bufferedBlockCipher     // Catch: Exception -> 0x006d, InvalidCipherTextException -> 0x007c
            r1 = r5
            byte[] r1 = r1.buf     // Catch: Exception -> 0x006d, InvalidCipherTextException -> 0x007c
            r2 = 0
            int r0 = r0.doFinal(r1, r2)     // Catch: Exception -> 0x006d, InvalidCipherTextException -> 0x007c
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L_0x0068
            r0 = r5
            java.io.OutputStream r0 = r0.out     // Catch: Exception -> 0x006d, InvalidCipherTextException -> 0x007c
            r1 = r5
            byte[] r1 = r1.buf     // Catch: Exception -> 0x006d, InvalidCipherTextException -> 0x007c
            r2 = 0
            r3 = r6
            r0.write(r1, r2, r3)     // Catch: Exception -> 0x006d, InvalidCipherTextException -> 0x007c
            goto L_0x0068
        L_0x002e:
            r0 = r5
            org.spongycastle.crypto.modes.AEADBlockCipher r0 = r0.aeadBlockCipher     // Catch: Exception -> 0x006d, InvalidCipherTextException -> 0x007c
            if (r0 == 0) goto L_0x0058
            r0 = r5
            org.spongycastle.crypto.modes.AEADBlockCipher r0 = r0.aeadBlockCipher     // Catch: Exception -> 0x006d, InvalidCipherTextException -> 0x007c
            r1 = r5
            byte[] r1 = r1.buf     // Catch: Exception -> 0x006d, InvalidCipherTextException -> 0x007c
            r2 = 0
            int r0 = r0.doFinal(r1, r2)     // Catch: Exception -> 0x006d, InvalidCipherTextException -> 0x007c
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L_0x0068
            r0 = r5
            java.io.OutputStream r0 = r0.out     // Catch: Exception -> 0x006d, InvalidCipherTextException -> 0x007c
            r1 = r5
            byte[] r1 = r1.buf     // Catch: Exception -> 0x006d, InvalidCipherTextException -> 0x007c
            r2 = 0
            r3 = r6
            r0.write(r1, r2, r3)     // Catch: Exception -> 0x006d, InvalidCipherTextException -> 0x007c
            goto L_0x0068
        L_0x0058:
            r0 = r5
            org.spongycastle.crypto.StreamCipher r0 = r0.streamCipher     // Catch: Exception -> 0x006d, InvalidCipherTextException -> 0x007c
            if (r0 == 0) goto L_0x0068
            r0 = r5
            org.spongycastle.crypto.StreamCipher r0 = r0.streamCipher     // Catch: Exception -> 0x006d, InvalidCipherTextException -> 0x007c
            r0.reset()     // Catch: Exception -> 0x006d, InvalidCipherTextException -> 0x007c
        L_0x0068:
            r0 = 0
            r7 = r0
            goto L_0x0088
        L_0x006d:
            r7 = move-exception
            org.spongycastle.crypto.io.CipherIOException r0 = new org.spongycastle.crypto.io.CipherIOException
            r1 = r0
            java.lang.String r2 = "Error closing stream: "
            r3 = r7
            r1.<init>(r2, r3)
            r7 = r0
            goto L_0x0088
        L_0x007c:
            r7 = move-exception
            org.spongycastle.crypto.io.InvalidCipherTextIOException r0 = new org.spongycastle.crypto.io.InvalidCipherTextIOException
            r1 = r0
            java.lang.String r2 = "Error finalising cipher data"
            r3 = r7
            r1.<init>(r2, r3)
            r7 = r0
        L_0x0088:
            r0 = r5
            r0.flush()     // Catch: IOException -> 0x0096
            r0 = r5
            java.io.OutputStream r0 = r0.out     // Catch: IOException -> 0x0096
            r0.close()     // Catch: IOException -> 0x0096
            goto L_0x009e
        L_0x0096:
            r8 = move-exception
            r0 = r7
            if (r0 != 0) goto L_0x009e
            goto L_0x00a0
        L_0x009e:
            r0 = r7
            r8 = r0
        L_0x00a0:
            r0 = r8
            if (r0 == 0) goto L_0x00a6
            r0 = r8
            throw r0
        L_0x00a6:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.crypto.p027io.CipherOutputStream.close():void");
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        this.out.flush();
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(int i) throws IOException {
        byte b = (byte) i;
        this.oneByte[0] = b;
        if (this.streamCipher != null) {
            this.out.write(this.streamCipher.returnByte(b));
        } else {
            write(this.oneByte, 0, 1);
        }
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        ensureCapacity(i2, false);
        if (this.bufferedBlockCipher != null) {
            int processBytes = this.bufferedBlockCipher.processBytes(bArr, i, i2, this.buf, 0);
            if (processBytes != 0) {
                this.out.write(this.buf, 0, processBytes);
            }
        } else if (this.aeadBlockCipher != null) {
            int processBytes2 = this.aeadBlockCipher.processBytes(bArr, i, i2, this.buf, 0);
            if (processBytes2 != 0) {
                this.out.write(this.buf, 0, processBytes2);
            }
        } else {
            this.streamCipher.processBytes(bArr, i, i2, this.buf, 0);
            this.out.write(this.buf, 0, i2);
        }
    }
}
