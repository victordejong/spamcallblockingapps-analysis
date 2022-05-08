package androidx.media2.player.exoplayer;

import android.annotation.SuppressLint;
import android.net.Uri;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.util.Preconditions;
import androidx.media2.exoplayer.external.upstream.BaseDataSource;
import androidx.media2.exoplayer.external.upstream.DataSource;
import androidx.media2.exoplayer.external.upstream.DataSpec;
import java.io.EOFException;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
@SuppressLint({"RestrictedApi"})
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes-dex2jar.jar:androidx/media2/player/exoplayer/FileDescriptorDataSource.class */
public class FileDescriptorDataSource extends BaseDataSource {
    public long mBytesRemaining;
    public final FileDescriptor mFileDescriptor;
    @Nullable
    public InputStream mInputStream;
    public final long mLength;
    public final Object mLock;
    public final long mOffset;
    public boolean mOpened;
    public long mPosition;
    @Nullable
    public Uri mUri;

    public FileDescriptorDataSource(FileDescriptor fileDescriptor, long j, long j2, Object obj) {
        super(false);
        this.mFileDescriptor = fileDescriptor;
        this.mOffset = j;
        this.mLength = j2;
        this.mLock = obj;
    }

    public static DataSource.Factory getFactory(final FileDescriptor fileDescriptor, final long j, final long j2, final Object obj) {
        return new DataSource.Factory() { // from class: androidx.media2.player.exoplayer.FileDescriptorDataSource.1
            @Override // androidx.media2.exoplayer.external.upstream.DataSource.Factory
            public DataSource createDataSource() {
                return new FileDescriptorDataSource(fileDescriptor, j, j2, obj);
            }
        };
    }

    @Override // androidx.media2.exoplayer.external.upstream.DataSource
    public void close() throws IOException {
        this.mUri = null;
        try {
            if (this.mInputStream != null) {
                this.mInputStream.close();
            }
            this.mInputStream = null;
            if (this.mOpened) {
                this.mOpened = false;
                transferEnded();
            }
        } catch (Throwable th) {
            this.mInputStream = null;
            if (this.mOpened) {
                this.mOpened = false;
                transferEnded();
            }
            throw th;
        }
    }

    @Override // androidx.media2.exoplayer.external.upstream.DataSource
    public Uri getUri() {
        return (Uri) Preconditions.checkNotNull(this.mUri);
    }

    @Override // androidx.media2.exoplayer.external.upstream.DataSource
    public long open(DataSpec dataSpec) {
        this.mUri = dataSpec.uri;
        transferInitializing(dataSpec);
        this.mInputStream = new FileInputStream(this.mFileDescriptor);
        long j = dataSpec.length;
        if (j != -1) {
            this.mBytesRemaining = j;
        } else {
            long j2 = this.mLength;
            if (j2 != -1) {
                this.mBytesRemaining = j2 - dataSpec.position;
            } else {
                this.mBytesRemaining = -1L;
            }
        }
        this.mPosition = this.mOffset + dataSpec.position;
        this.mOpened = true;
        transferStarted(dataSpec);
        return this.mBytesRemaining;
    }

    @Override // androidx.media2.exoplayer.external.upstream.DataSource
    public int read(byte[] bArr, int i, int i2) throws IOException {
        if (i2 == 0) {
            return 0;
        }
        long j = this.mBytesRemaining;
        if (j == 0) {
            return -1;
        }
        if (j != -1) {
            i2 = (int) Math.min(j, i2);
        }
        synchronized (this.mLock) {
            FileDescriptorUtil.seek(this.mFileDescriptor, this.mPosition);
            int read = ((InputStream) Preconditions.checkNotNull(this.mInputStream)).read(bArr, i, i2);
            if (read != -1) {
                long j2 = read;
                this.mPosition += j2;
                long j3 = this.mBytesRemaining;
                if (j3 != -1) {
                    this.mBytesRemaining = j3 - j2;
                }
                bytesTransferred(read);
                return read;
            } else if (this.mBytesRemaining == -1) {
                return -1;
            } else {
                throw new EOFException();
            }
        }
    }
}
