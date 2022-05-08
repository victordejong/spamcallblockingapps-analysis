package androidx.media2.exoplayer.external.upstream;

import android.net.Uri;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.util.Assertions;
import java.io.IOException;
import java.util.Collections;
import java.util.List;
import java.util.Map;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/StatsDataSource.class */
public final class StatsDataSource implements DataSource {
    public long bytesRead;
    public final DataSource dataSource;
    public Uri lastOpenedUri = Uri.EMPTY;
    public Map<String, List<String>> lastResponseHeaders = Collections.emptyMap();

    public StatsDataSource(DataSource dataSource) {
        this.dataSource = (DataSource) Assertions.checkNotNull(dataSource);
    }

    @Override // androidx.media2.exoplayer.external.upstream.DataSource
    public void addTransferListener(TransferListener transferListener) {
        this.dataSource.addTransferListener(transferListener);
    }

    @Override // androidx.media2.exoplayer.external.upstream.DataSource
    public void close() throws IOException {
        this.dataSource.close();
    }

    public long getBytesRead() {
        return this.bytesRead;
    }

    public Uri getLastOpenedUri() {
        return this.lastOpenedUri;
    }

    public Map<String, List<String>> getLastResponseHeaders() {
        return this.lastResponseHeaders;
    }

    @Override // androidx.media2.exoplayer.external.upstream.DataSource
    public Map<String, List<String>> getResponseHeaders() {
        return this.dataSource.getResponseHeaders();
    }

    @Override // androidx.media2.exoplayer.external.upstream.DataSource
    @Nullable
    public Uri getUri() {
        return this.dataSource.getUri();
    }

    @Override // androidx.media2.exoplayer.external.upstream.DataSource
    public long open(DataSpec dataSpec) throws IOException {
        this.lastOpenedUri = dataSpec.uri;
        this.lastResponseHeaders = Collections.emptyMap();
        long open = this.dataSource.open(dataSpec);
        this.lastOpenedUri = (Uri) Assertions.checkNotNull(getUri());
        this.lastResponseHeaders = getResponseHeaders();
        return open;
    }

    @Override // androidx.media2.exoplayer.external.upstream.DataSource
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int read = this.dataSource.read(bArr, i, i2);
        if (read != -1) {
            this.bytesRead += read;
        }
        return read;
    }

    public void resetBytesRead() {
        this.bytesRead = 0L;
    }
}
