package org.apache.commons.p018io.input;

import java.io.IOException;
import java.io.InputStream;
/* renamed from: org.apache.commons.io.input.WindowsLineEndingInputStream */
/* loaded from: classes2-dex2jar.jar:org/apache/commons/io/input/WindowsLineEndingInputStream.class */
public class WindowsLineEndingInputStream extends InputStream {
    private final boolean ensureLineFeedAtEndOfFile;
    private final InputStream target;
    private boolean slashRSeen = false;
    private boolean slashNSeen = false;
    private boolean injectSlashN = false;
    private boolean eofSeen = false;

    public WindowsLineEndingInputStream(InputStream inputStream, boolean z) {
        this.target = inputStream;
        this.ensureLineFeedAtEndOfFile = z;
    }

    private int eofGame() {
        if (!this.ensureLineFeedAtEndOfFile) {
            return -1;
        }
        if (!this.slashNSeen && !this.slashRSeen) {
            this.slashRSeen = true;
            return 13;
        } else if (this.slashNSeen) {
            return -1;
        } else {
            this.slashRSeen = false;
            this.slashNSeen = true;
            return 10;
        }
    }

    private int readWithUpdate() throws IOException {
        int read = this.target.read();
        boolean z = false;
        this.eofSeen = read == -1;
        if (this.eofSeen) {
            return read;
        }
        this.slashRSeen = read == 13;
        if (read == 10) {
            z = true;
        }
        this.slashNSeen = z;
        return read;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        super.close();
        this.target.close();
    }

    @Override // java.io.InputStream
    public void mark(int i) {
        synchronized (this) {
            throw new UnsupportedOperationException("Mark not supported");
        }
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (this.eofSeen) {
            return eofGame();
        }
        if (this.injectSlashN) {
            this.injectSlashN = false;
            return 10;
        }
        boolean z = this.slashRSeen;
        int readWithUpdate = readWithUpdate();
        if (this.eofSeen) {
            return eofGame();
        }
        if (readWithUpdate != 10 || z) {
            return readWithUpdate;
        }
        this.injectSlashN = true;
        return 13;
    }
}
