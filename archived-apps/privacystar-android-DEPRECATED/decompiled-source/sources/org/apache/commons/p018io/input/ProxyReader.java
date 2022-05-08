package org.apache.commons.p018io.input;

import java.io.FilterReader;
import java.io.IOException;
import java.io.Reader;
import java.nio.CharBuffer;
/* renamed from: org.apache.commons.io.input.ProxyReader */
/* loaded from: classes2-dex2jar.jar:org/apache/commons/io/input/ProxyReader.class */
public abstract class ProxyReader extends FilterReader {
    public ProxyReader(Reader reader) {
        super(reader);
    }

    protected void afterRead(int i) throws IOException {
    }

    protected void beforeRead(int i) throws IOException {
    }

    @Override // java.io.FilterReader, java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        try {
            this.in.close();
        } catch (IOException e) {
            handleIOException(e);
        }
    }

    protected void handleIOException(IOException iOException) throws IOException {
        throw iOException;
    }

    @Override // java.io.FilterReader, java.io.Reader
    public void mark(int i) throws IOException {
        synchronized (this) {
            try {
                this.in.mark(i);
            } catch (IOException e) {
                handleIOException(e);
            }
        }
    }

    @Override // java.io.FilterReader, java.io.Reader
    public boolean markSupported() {
        return this.in.markSupported();
    }

    @Override // java.io.FilterReader, java.io.Reader
    public int read() throws IOException {
        int i = 1;
        try {
            beforeRead(1);
            int read = this.in.read();
            if (read == -1) {
                i = -1;
            }
            afterRead(i);
            return read;
        } catch (IOException e) {
            handleIOException(e);
            return -1;
        }
    }

    @Override // java.io.Reader, java.lang.Readable
    public int read(CharBuffer charBuffer) throws IOException {
        int length;
        if (charBuffer != null) {
            try {
                length = charBuffer.length();
            } catch (IOException e) {
                handleIOException(e);
                return -1;
            }
        } else {
            length = 0;
        }
        beforeRead(length);
        int read = this.in.read(charBuffer);
        afterRead(read);
        return read;
    }

    @Override // java.io.Reader
    public int read(char[] cArr) throws IOException {
        int length;
        if (cArr != null) {
            try {
                length = cArr.length;
            } catch (IOException e) {
                handleIOException(e);
                return -1;
            }
        } else {
            length = 0;
        }
        beforeRead(length);
        int read = this.in.read(cArr);
        afterRead(read);
        return read;
    }

    @Override // java.io.FilterReader, java.io.Reader
    public int read(char[] cArr, int i, int i2) throws IOException {
        try {
            beforeRead(i2);
            int read = this.in.read(cArr, i, i2);
            afterRead(read);
            return read;
        } catch (IOException e) {
            handleIOException(e);
            return -1;
        }
    }

    @Override // java.io.FilterReader, java.io.Reader
    public boolean ready() throws IOException {
        try {
            return this.in.ready();
        } catch (IOException e) {
            handleIOException(e);
            return false;
        }
    }

    @Override // java.io.FilterReader, java.io.Reader
    public void reset() throws IOException {
        synchronized (this) {
            try {
                this.in.reset();
            } catch (IOException e) {
                handleIOException(e);
            }
        }
    }

    @Override // java.io.FilterReader, java.io.Reader
    public long skip(long j) throws IOException {
        try {
            return this.in.skip(j);
        } catch (IOException e) {
            handleIOException(e);
            return 0L;
        }
    }
}
