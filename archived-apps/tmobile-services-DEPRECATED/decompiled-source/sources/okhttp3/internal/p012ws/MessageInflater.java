package okhttp3.internal.p012ws;

import java.io.Closeable;
import java.io.IOException;
import java.util.zip.Inflater;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.http2.C2445Settings;
import okio.Buffer;
import okio.InflaterSource;
import okio.Source;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��0\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\u0018��2\u00020\u0001B\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004J\u0015\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bR\u0016\u0010\t\u001a\u00020\u00058\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\nR\u0016\u0010\f\u001a\u00020\u000b8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\rR\u0016\u0010\u000f\u001a\u00020\u000e8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R\u0016\u0010\u0012\u001a\u00020\u00118\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013¨\u0006\u0016"}, d2 = {"Lokhttp3/internal/ws/MessageInflater;", "Ljava/io/Closeable;", "", "close", "()V", "Lokio/Buffer;", "buffer", "inflate", "(Lokio/Buffer;)V", "deflatedBytes", "Lokio/Buffer;", "Ljava/util/zip/Inflater;", "inflater", "Ljava/util/zip/Inflater;", "Lokio/InflaterSource;", "inflaterSource", "Lokio/InflaterSource;", "", "noContextTakeover", "Z", "<init>", "(Z)V", "okhttp"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* renamed from: okhttp3.internal.ws.MessageInflater */
/* loaded from: classes2-dex2jar.jar:okhttp3/internal/ws/MessageInflater.class */
public final class MessageInflater implements Closeable {
    private final Buffer deflatedBytes = new Buffer();
    private final Inflater inflater;
    private final InflaterSource inflaterSource;
    private final boolean noContextTakeover;

    public MessageInflater(boolean z) {
        this.noContextTakeover = z;
        Inflater inflater = new Inflater(true);
        this.inflater = inflater;
        this.inflaterSource = new InflaterSource((Source) this.deflatedBytes, inflater);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.inflaterSource.close();
    }

    public final void inflate(@NotNull Buffer buffer) throws IOException {
        Intrinsics.m1830e(buffer, "buffer");
        if (this.deflatedBytes.m188v0() == 0) {
            if (this.noContextTakeover) {
                this.inflater.reset();
            }
            this.deflatedBytes.mo95S(buffer);
            this.deflatedBytes.m219G0(C2445Settings.DEFAULT_INITIAL_WINDOW_SIZE);
            long bytesRead = this.inflater.getBytesRead();
            long v0 = this.deflatedBytes.m188v0();
            do {
                this.inflaterSource.m149a(buffer, Long.MAX_VALUE);
            } while (this.inflater.getBytesRead() < bytesRead + v0);
            return;
        }
        throw new IllegalArgumentException("Failed requirement.".toString());
    }
}
