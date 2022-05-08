package okio;

import java.io.IOException;
import java.io.OutputStream;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��'\n��\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0012\n��\n\u0002\u0010\b\n\u0002\b\u0007*\u0001��\b\n\u0018��2\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0007\u0010\bJ'\u0010\u000e\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u000e\u0010\u0011¨\u0006\u0012"}, d2 = {"okio/RealBufferedSink$outputStream$1", "Ljava/io/OutputStream;", "", "close", "()V", "flush", "", "toString", "()Ljava/lang/String;", "", "data", "", "offset", "byteCount", "write", "([BII)V", "b", "(I)V", "okio"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:okio/RealBufferedSink$outputStream$1.class */
public final class RealBufferedSink$outputStream$1 extends OutputStream {

    /* renamed from: f */
    final /* synthetic */ RealBufferedSink f24191f;

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f24191f.close();
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() {
        RealBufferedSink realBufferedSink = this.f24191f;
        if (!realBufferedSink.f24189g) {
            realBufferedSink.flush();
        }
    }

    @NotNull
    public String toString() {
        return this.f24191f + ".outputStream()";
    }

    @Override // java.io.OutputStream
    public void write(int i) {
        RealBufferedSink realBufferedSink = this.f24191f;
        if (!realBufferedSink.f24189g) {
            realBufferedSink.f24188f.m222D0((byte) i);
            this.f24191f.mo99F();
            return;
        }
        throw new IOException("closed");
    }

    @Override // java.io.OutputStream
    public void write(@NotNull byte[] data, int i, int i2) {
        Intrinsics.m1830e(data, "data");
        RealBufferedSink realBufferedSink = this.f24191f;
        if (!realBufferedSink.f24189g) {
            realBufferedSink.f24188f.m223C0(data, i, i2);
            this.f24191f.mo99F();
            return;
        }
        throw new IOException("closed");
    }
}
