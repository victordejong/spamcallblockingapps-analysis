package androidx.media2.exoplayer.external.upstream;

import android.content.Context;
import android.content.res.AssetManager;
import android.net.Uri;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.util.Assertions;
import androidx.media2.exoplayer.external.util.Util;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/AssetDataSource.class */
public final class AssetDataSource extends BaseDataSource {
    public final AssetManager assetManager;
    public long bytesRemaining;
    @Nullable
    public InputStream inputStream;
    public boolean opened;
    @Nullable
    public Uri uri;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/AssetDataSource$AssetDataSourceException.class */
    public static final class AssetDataSourceException extends IOException {
        public AssetDataSourceException(IOException iOException) {
            super(iOException);
        }
    }

    public AssetDataSource(Context context) {
        super(false);
        this.assetManager = context.getAssets();
    }

    @Override // androidx.media2.exoplayer.external.upstream.DataSource
    public void close() throws AssetDataSourceException {
        this.uri = null;
        try {
            try {
                if (this.inputStream != null) {
                    this.inputStream.close();
                }
                this.inputStream = null;
                if (this.opened) {
                    this.opened = false;
                    transferEnded();
                }
            } catch (IOException e) {
                throw new AssetDataSourceException(e);
            }
        } catch (Throwable th) {
            this.inputStream = null;
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
    public long open(DataSpec dataSpec) throws AssetDataSourceException {
        String str;
        try {
            this.uri = dataSpec.uri;
            String str2 = (String) Assertions.checkNotNull(this.uri.getPath());
            if (str2.startsWith("/android_asset/")) {
                str = str2.substring(15);
            } else {
                str = str2;
                if (str2.startsWith("/")) {
                    str = str2.substring(1);
                }
            }
            transferInitializing(dataSpec);
            this.inputStream = this.assetManager.open(str, 1);
            if (this.inputStream.skip(dataSpec.position) >= dataSpec.position) {
                if (dataSpec.length != -1) {
                    this.bytesRemaining = dataSpec.length;
                } else {
                    this.bytesRemaining = this.inputStream.available();
                    if (this.bytesRemaining == 2147483647L) {
                        this.bytesRemaining = -1L;
                    }
                }
                this.opened = true;
                transferStarted(dataSpec);
                return this.bytesRemaining;
            }
            throw new EOFException();
        } catch (IOException e) {
            throw new AssetDataSourceException(e);
        }
    }

    @Override // androidx.media2.exoplayer.external.upstream.DataSource
    public int read(byte[] bArr, int i, int i2) throws AssetDataSourceException {
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
                throw new AssetDataSourceException(e);
            }
        }
        int read = ((InputStream) Util.castNonNull(this.inputStream)).read(bArr, i, i2);
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
            throw new AssetDataSourceException(new EOFException());
        }
    }
}
