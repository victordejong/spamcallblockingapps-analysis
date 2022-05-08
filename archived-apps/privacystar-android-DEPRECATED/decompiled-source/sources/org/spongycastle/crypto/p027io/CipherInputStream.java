package org.spongycastle.crypto.p027io;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import org.spongycastle.crypto.BufferedBlockCipher;
import org.spongycastle.crypto.InvalidCipherTextException;
import org.spongycastle.crypto.SkippingCipher;
import org.spongycastle.crypto.StreamCipher;
import org.spongycastle.crypto.modes.AEADBlockCipher;
import org.spongycastle.util.Arrays;
/* renamed from: org.spongycastle.crypto.io.CipherInputStream */
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/io/CipherInputStream.class */
public class CipherInputStream extends FilterInputStream {
    private static final int INPUT_BUF_SIZE = 2048;
    private AEADBlockCipher aeadBlockCipher;
    private byte[] buf;
    private int bufOff;
    private BufferedBlockCipher bufferedBlockCipher;
    private boolean finalized;
    private byte[] inBuf;
    private byte[] markBuf;
    private int markBufOff;
    private long markPosition;
    private int maxBuf;
    private SkippingCipher skippingCipher;
    private StreamCipher streamCipher;

    public CipherInputStream(InputStream inputStream, BufferedBlockCipher bufferedBlockCipher) {
        this(inputStream, bufferedBlockCipher, 2048);
    }

    public CipherInputStream(InputStream inputStream, BufferedBlockCipher bufferedBlockCipher, int i) {
        super(inputStream);
        this.bufferedBlockCipher = bufferedBlockCipher;
        this.inBuf = new byte[i];
        this.skippingCipher = bufferedBlockCipher instanceof SkippingCipher ? (SkippingCipher) bufferedBlockCipher : null;
    }

    public CipherInputStream(InputStream inputStream, StreamCipher streamCipher) {
        this(inputStream, streamCipher, 2048);
    }

    public CipherInputStream(InputStream inputStream, StreamCipher streamCipher, int i) {
        super(inputStream);
        this.streamCipher = streamCipher;
        this.inBuf = new byte[i];
        this.skippingCipher = streamCipher instanceof SkippingCipher ? (SkippingCipher) streamCipher : null;
    }

    public CipherInputStream(InputStream inputStream, AEADBlockCipher aEADBlockCipher) {
        this(inputStream, aEADBlockCipher, 2048);
    }

    public CipherInputStream(InputStream inputStream, AEADBlockCipher aEADBlockCipher, int i) {
        super(inputStream);
        this.aeadBlockCipher = aEADBlockCipher;
        this.inBuf = new byte[i];
        this.skippingCipher = aEADBlockCipher instanceof SkippingCipher ? (SkippingCipher) aEADBlockCipher : null;
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

    private void finaliseCipher() throws IOException {
        try {
            this.finalized = true;
            ensureCapacity(0, true);
            if (this.bufferedBlockCipher != null) {
                this.maxBuf = this.bufferedBlockCipher.doFinal(this.buf, 0);
            } else if (this.aeadBlockCipher != null) {
                this.maxBuf = this.aeadBlockCipher.doFinal(this.buf, 0);
            } else {
                this.maxBuf = 0;
            }
        } catch (InvalidCipherTextException e) {
            throw new InvalidCipherTextIOException("Error finalising cipher", e);
        } catch (Exception e2) {
            throw new IOException("Error finalising cipher " + e2);
        }
    }

    private int nextChunk() throws IOException {
        if (this.finalized) {
            return -1;
        }
        this.bufOff = 0;
        this.maxBuf = 0;
        while (this.maxBuf == 0) {
            int read = this.in.read(this.inBuf);
            if (read == -1) {
                finaliseCipher();
                if (this.maxBuf == 0) {
                    return -1;
                }
                return this.maxBuf;
            }
            try {
                ensureCapacity(read, false);
                if (this.bufferedBlockCipher != null) {
                    this.maxBuf = this.bufferedBlockCipher.processBytes(this.inBuf, 0, read, this.buf, 0);
                } else if (this.aeadBlockCipher != null) {
                    this.maxBuf = this.aeadBlockCipher.processBytes(this.inBuf, 0, read, this.buf, 0);
                } else {
                    this.streamCipher.processBytes(this.inBuf, 0, read, this.buf, 0);
                    this.maxBuf = read;
                }
            } catch (Exception e) {
                throw new CipherIOException("Error processing stream ", e);
            }
        }
        return this.maxBuf;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int available() throws IOException {
        return this.maxBuf - this.bufOff;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        try {
            this.in.close();
            if (!this.finalized) {
                finaliseCipher();
            }
            this.bufOff = 0;
            this.maxBuf = 0;
            this.markBufOff = 0;
            this.markPosition = 0L;
            if (this.markBuf != null) {
                Arrays.fill(this.markBuf, (byte) 0);
                this.markBuf = null;
            }
            if (this.buf != null) {
                Arrays.fill(this.buf, (byte) 0);
                this.buf = null;
            }
            Arrays.fill(this.inBuf, (byte) 0);
        } catch (Throwable th) {
            if (!this.finalized) {
                finaliseCipher();
            }
            throw th;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public void mark(int i) {
        this.in.mark(i);
        if (this.skippingCipher != null) {
            this.markPosition = this.skippingCipher.getPosition();
        }
        if (this.buf != null) {
            this.markBuf = new byte[this.buf.length];
            System.arraycopy(this.buf, 0, this.markBuf, 0, this.buf.length);
        }
        this.markBufOff = this.bufOff;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public boolean markSupported() {
        if (this.skippingCipher != null) {
            return this.in.markSupported();
        }
        return false;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        if (this.bufOff >= this.maxBuf && nextChunk() < 0) {
            return -1;
        }
        byte[] bArr = this.buf;
        int i = this.bufOff;
        this.bufOff = i + 1;
        return bArr[i] & 255;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        if (this.bufOff >= this.maxBuf && nextChunk() < 0) {
            return -1;
        }
        int min = Math.min(i2, available());
        System.arraycopy(this.buf, this.bufOff, bArr, i, min);
        this.bufOff += min;
        return min;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public void reset() throws IOException {
        if (this.skippingCipher == null) {
            throw new IOException("cipher must implement SkippingCipher to be used with reset()");
        }
        this.in.reset();
        this.skippingCipher.seekTo(this.markPosition);
        if (this.markBuf != null) {
            this.buf = this.markBuf;
        }
        this.bufOff = this.markBufOff;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public long skip(long j) throws IOException {
        if (j <= 0) {
            return 0L;
        }
        if (this.skippingCipher != null) {
            long available = available();
            if (j <= available) {
                this.bufOff = (int) (this.bufOff + j);
                return j;
            }
            this.bufOff = this.maxBuf;
            long skip = this.in.skip(j - available);
            if (skip == this.skippingCipher.skip(skip)) {
                return skip + available;
            }
            throw new IOException("Unable to skip cipher " + skip + " bytes.");
        }
        int min = (int) Math.min(j, available());
        this.bufOff += min;
        return min;
    }
}
