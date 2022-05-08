package org.apache.commons.p018io.input;

import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;
/* renamed from: org.apache.commons.io.input.NullReader */
/* loaded from: classes2-dex2jar.jar:org/apache/commons/io/input/NullReader.class */
public class NullReader extends Reader {
    private boolean eof;
    private long mark;
    private final boolean markSupported;
    private long position;
    private long readlimit;
    private final long size;
    private final boolean throwEofException;

    public NullReader(long j) {
        this(j, true, false);
    }

    public NullReader(long j, boolean z, boolean z2) {
        this.mark = -1L;
        this.size = j;
        this.markSupported = z;
        this.throwEofException = z2;
    }

    private int doEndOfFile() throws EOFException {
        this.eof = true;
        if (!this.throwEofException) {
            return -1;
        }
        throw new EOFException();
    }

    @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.eof = false;
        this.position = 0L;
        this.mark = -1L;
    }

    public long getPosition() {
        return this.position;
    }

    public long getSize() {
        return this.size;
    }

    @Override // java.io.Reader
    public void mark(int i) {
        synchronized (this) {
            if (!this.markSupported) {
                throw new UnsupportedOperationException("Mark not supported");
            }
            this.mark = this.position;
            this.readlimit = i;
        }
    }

    @Override // java.io.Reader
    public boolean markSupported() {
        return this.markSupported;
    }

    protected int processChar() {
        return 0;
    }

    protected void processChars(char[] cArr, int i, int i2) {
    }

    @Override // java.io.Reader
    public int read() throws IOException {
        if (this.eof) {
            throw new IOException("Read after end of file");
        } else if (this.position == this.size) {
            return doEndOfFile();
        } else {
            this.position++;
            return processChar();
        }
    }

    @Override // java.io.Reader
    public int read(char[] cArr) throws IOException {
        return read(cArr, 0, cArr.length);
    }

    @Override // java.io.Reader
    public int read(char[] cArr, int i, int i2) throws IOException {
        if (this.eof) {
            throw new IOException("Read after end of file");
        } else if (this.position == this.size) {
            return doEndOfFile();
        } else {
            this.position += i2;
            int i3 = i2;
            if (this.position > this.size) {
                i3 = i2 - ((int) (this.position - this.size));
                this.position = this.size;
            }
            processChars(cArr, i, i3);
            return i3;
        }
    }

    @Override // java.io.Reader
    public void reset() throws IOException {
        synchronized (this) {
            if (!this.markSupported) {
                throw new UnsupportedOperationException("Mark not supported");
            } else if (this.mark < 0) {
                throw new IOException("No position has been marked");
            } else if (this.position > this.mark + this.readlimit) {
                throw new IOException("Marked position [" + this.mark + "] is no longer valid - passed the read limit [" + this.readlimit + "]");
            } else {
                this.position = this.mark;
                this.eof = false;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1, types: [long] */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r8v0, types: [long] */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // java.io.Reader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long skip(long r8) throws java.io.IOException {
        /*
            r7 = this;
            r0 = r7
            boolean r0 = r0.eof
            if (r0 == 0) goto L_0x0011
            java.io.IOException r0 = new java.io.IOException
            r1 = r0
            java.lang.String r2 = "Skip after end of file"
            r1.<init>(r2)
            throw r0
        L_0x0011:
            r0 = r7
            long r0 = r0.position
            r1 = r7
            long r1 = r1.size
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0023
            r0 = r7
            int r0 = r0.doEndOfFile()
            long r0 = (long) r0
            return r0
        L_0x0023:
            r0 = r7
            r1 = r7
            long r1 = r1.position
            r2 = r8
            long r1 = r1 + r2
            r0.position = r1
            r0 = r8
            r10 = r0
            r0 = r7
            long r0 = r0.position
            r1 = r7
            long r1 = r1.size
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x004f
            r0 = r8
            r1 = r7
            long r1 = r1.position
            r2 = r7
            long r2 = r2.size
            long r1 = r1 - r2
            long r0 = r0 - r1
            r10 = r0
            r0 = r7
            r1 = r7
            long r1 = r1.size
            r0.position = r1
        L_0x004f:
            r0 = r10
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.p018io.input.NullReader.skip(long):long");
    }
}
