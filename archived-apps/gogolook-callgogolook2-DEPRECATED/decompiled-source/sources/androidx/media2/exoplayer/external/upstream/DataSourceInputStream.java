package androidx.media2.exoplayer.external.upstream;

import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.util.Assertions;
import java.io.IOException;
import java.io.InputStream;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/DataSourceInputStream.class */
public final class DataSourceInputStream extends InputStream {
    public final DataSource dataSource;
    public final DataSpec dataSpec;
    public long totalBytesRead;
    public boolean opened = false;
    public boolean closed = false;
    public final byte[] singleByteArray = new byte[1];

    public DataSourceInputStream(DataSource dataSource, DataSpec dataSpec) {
        this.dataSource = dataSource;
        this.dataSpec = dataSpec;
    }

    private void checkOpened() throws IOException {
        if (!this.opened) {
            this.dataSource.open(this.dataSpec);
            this.opened = true;
        }
    }

    public long bytesRead() {
        return this.totalBytesRead;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (!this.closed) {
            this.dataSource.close();
            this.closed = true;
        }
    }

    public void open() throws IOException {
        checkOpened();
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        int i = -1;
        if (read(this.singleByteArray) != -1) {
            i = this.singleByteArray[0] & 255;
        }
        return i;
    }

    @Override // java.io.InputStream
    public int read(@NonNull byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public int read(@NonNull byte[] bArr, int i, int i2) throws IOException {
        Assertions.checkState(!this.closed);
        checkOpened();
        int read = this.dataSource.read(bArr, i, i2);
        if (read == -1) {
            return -1;
        }
        this.totalBytesRead += read;
        return read;
    }
}
