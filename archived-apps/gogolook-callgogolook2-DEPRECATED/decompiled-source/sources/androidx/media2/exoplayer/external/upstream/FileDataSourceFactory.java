package androidx.media2.exoplayer.external.upstream;

import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.upstream.DataSource;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/FileDataSourceFactory.class */
public final class FileDataSourceFactory implements DataSource.Factory {
    @Nullable
    public final TransferListener listener;

    public FileDataSourceFactory() {
        this(null);
    }

    public FileDataSourceFactory(@Nullable TransferListener transferListener) {
        this.listener = transferListener;
    }

    @Override // androidx.media2.exoplayer.external.upstream.DataSource.Factory
    public DataSource createDataSource() {
        FileDataSource fileDataSource = new FileDataSource();
        TransferListener transferListener = this.listener;
        if (transferListener != null) {
            fileDataSource.addTransferListener(transferListener);
        }
        return fileDataSource;
    }
}
