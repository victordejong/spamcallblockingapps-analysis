package androidx.media2.exoplayer.external.upstream;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.util.Util;
import com.flurry.sdk.C3496r;
import java.io.EOFException;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.channels.FileChannel;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/ContentDataSource.class */
public final class ContentDataSource extends BaseDataSource {
    @Nullable
    public AssetFileDescriptor assetFileDescriptor;
    public long bytesRemaining;
    @Nullable
    public FileInputStream inputStream;
    public boolean opened;
    public final ContentResolver resolver;
    @Nullable
    public Uri uri;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/ContentDataSource$ContentDataSourceException.class */
    public static class ContentDataSourceException extends IOException {
        public ContentDataSourceException(IOException iOException) {
            super(iOException);
        }
    }

    public ContentDataSource(Context context) {
        super(false);
        this.resolver = context.getContentResolver();
    }

    @Override // androidx.media2.exoplayer.external.upstream.DataSource
    public void close() throws ContentDataSourceException {
        this.uri = null;
        try {
            try {
                if (this.inputStream != null) {
                    this.inputStream.close();
                }
                this.inputStream = null;
            } catch (IOException e) {
                throw new ContentDataSourceException(e);
            }
        } catch (Throwable th) {
            this.inputStream = null;
            try {
                try {
                    if (this.assetFileDescriptor != null) {
                        this.assetFileDescriptor.close();
                    }
                    throw th;
                } catch (IOException e2) {
                    throw new ContentDataSourceException(e2);
                }
            } finally {
                this.assetFileDescriptor = null;
                if (this.opened) {
                    this.opened = false;
                    transferEnded();
                }
            }
        }
        try {
            try {
                if (this.assetFileDescriptor != null) {
                    this.assetFileDescriptor.close();
                }
                this.assetFileDescriptor = null;
                if (this.opened) {
                    this.opened = false;
                    transferEnded();
                }
            } catch (IOException e3) {
                throw new ContentDataSourceException(e3);
            }
        } finally {
        }
    }

    @Override // androidx.media2.exoplayer.external.upstream.DataSource
    @Nullable
    public Uri getUri() {
        return this.uri;
    }

    @Override // androidx.media2.exoplayer.external.upstream.DataSource
    public long open(DataSpec dataSpec) throws ContentDataSourceException {
        try {
            Uri uri = dataSpec.uri;
            this.uri = uri;
            transferInitializing(dataSpec);
            AssetFileDescriptor openAssetFileDescriptor = this.resolver.openAssetFileDescriptor(uri, C3496r.f6031a);
            this.assetFileDescriptor = openAssetFileDescriptor;
            if (openAssetFileDescriptor != null) {
                FileInputStream fileInputStream = new FileInputStream(openAssetFileDescriptor.getFileDescriptor());
                this.inputStream = fileInputStream;
                long startOffset = openAssetFileDescriptor.getStartOffset();
                long skip = fileInputStream.skip(dataSpec.position + startOffset) - startOffset;
                if (skip == dataSpec.position) {
                    long j = -1;
                    if (dataSpec.length != -1) {
                        this.bytesRemaining = dataSpec.length;
                    } else {
                        long length = openAssetFileDescriptor.getLength();
                        if (length == -1) {
                            FileChannel channel = fileInputStream.getChannel();
                            long size = channel.size();
                            if (size != 0) {
                                j = size - channel.position();
                            }
                            this.bytesRemaining = j;
                        } else {
                            this.bytesRemaining = length - skip;
                        }
                    }
                    this.opened = true;
                    transferStarted(dataSpec);
                    return this.bytesRemaining;
                }
                throw new EOFException();
            }
            String valueOf = String.valueOf(uri);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 36);
            sb.append("Could not open file descriptor for: ");
            sb.append(valueOf);
            throw new FileNotFoundException(sb.toString());
        } catch (IOException e) {
            throw new ContentDataSourceException(e);
        }
    }

    @Override // androidx.media2.exoplayer.external.upstream.DataSource
    public int read(byte[] bArr, int i, int i2) throws ContentDataSourceException {
        if (i2 == 0) {
            return 0;
        }
        long j = this.bytesRemaining;
        if (j == 0) {
            return -1;
        }
        if (j != -1) {
            try {
                i2 = (int) Math.min(j, i2);
            } catch (IOException e) {
                throw new ContentDataSourceException(e);
            }
        }
        int read = ((FileInputStream) Util.castNonNull(this.inputStream)).read(bArr, i, i2);
        if (read != -1) {
            long j2 = this.bytesRemaining;
            if (j2 != -1) {
                this.bytesRemaining = j2 - read;
            }
            bytesTransferred(read);
            return read;
        } else if (this.bytesRemaining == -1) {
            return -1;
        } else {
            throw new ContentDataSourceException(new EOFException());
        }
    }
}
