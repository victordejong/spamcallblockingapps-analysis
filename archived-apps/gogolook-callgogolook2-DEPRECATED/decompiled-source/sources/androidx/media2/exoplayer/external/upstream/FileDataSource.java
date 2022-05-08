package androidx.media2.exoplayer.external.upstream;

import android.net.Uri;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.util.Assertions;
import androidx.media2.exoplayer.external.util.Util;
import com.flurry.sdk.C3496r;
import java.io.EOFException;
import java.io.IOException;
import java.io.RandomAccessFile;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/FileDataSource.class */
public final class FileDataSource extends BaseDataSource {
    public long bytesRemaining;
    @Nullable
    public RandomAccessFile file;
    public boolean opened;
    @Nullable
    public Uri uri;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/FileDataSource$FileDataSourceException.class */
    public static class FileDataSourceException extends IOException {
        public FileDataSourceException(IOException iOException) {
            super(iOException);
        }
    }

    public FileDataSource() {
        super(false);
    }

    @Override // androidx.media2.exoplayer.external.upstream.DataSource
    public void close() throws FileDataSourceException {
        this.uri = null;
        try {
            try {
                if (this.file != null) {
                    this.file.close();
                }
                this.file = null;
                if (this.opened) {
                    this.opened = false;
                    transferEnded();
                }
            } catch (IOException e) {
                throw new FileDataSourceException(e);
            }
        } catch (Throwable th) {
            this.file = null;
            if (this.opened) {
                this.opened = false;
                transferEnded();
            }
            throw th;
        }
    }

    @Override // androidx.media2.exoplayer.external.upstream.DataSource
    @Nullable
    public Uri getUri() {
        return this.uri;
    }

    @Override // androidx.media2.exoplayer.external.upstream.DataSource
    public long open(DataSpec dataSpec) throws FileDataSourceException {
        try {
            Uri uri = dataSpec.uri;
            this.uri = uri;
            transferInitializing(dataSpec);
            RandomAccessFile randomAccessFile = new RandomAccessFile((String) Assertions.checkNotNull(uri.getPath()), C3496r.f6031a);
            this.file = randomAccessFile;
            randomAccessFile.seek(dataSpec.position);
            this.bytesRemaining = dataSpec.length == -1 ? randomAccessFile.length() - dataSpec.position : dataSpec.length;
            if (this.bytesRemaining >= 0) {
                this.opened = true;
                transferStarted(dataSpec);
                return this.bytesRemaining;
            }
            throw new EOFException();
        } catch (IOException e) {
            throw new FileDataSourceException(e);
        }
    }

    @Override // androidx.media2.exoplayer.external.upstream.DataSource
    public int read(byte[] bArr, int i, int i2) throws FileDataSourceException {
        if (i2 == 0) {
            return 0;
        }
        if (this.bytesRemaining == 0) {
            return -1;
        }
        try {
            int read = ((RandomAccessFile) Util.castNonNull(this.file)).read(bArr, i, (int) Math.min(this.bytesRemaining, i2));
            if (read > 0) {
                this.bytesRemaining -= read;
                bytesTransferred(read);
            }
            return read;
        } catch (IOException e) {
            throw new FileDataSourceException(e);
        }
    }
}
