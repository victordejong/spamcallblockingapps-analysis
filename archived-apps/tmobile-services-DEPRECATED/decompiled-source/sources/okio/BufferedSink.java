package okio;

import java.io.IOException;
import java.nio.channels.WritableByteChannel;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\b\u0012\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\r\bf\u0018��2\u00020\u00012\u00020\u00022\u00020\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H'¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\u0007\u001a\u00020��H&¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\t\u001a\u00020��H&¢\u0006\u0004\b\t\u0010\bJ\u000f\u0010\u000b\u001a\u00020\nH&¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\u000e\u001a\u00020\rH&¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0012\u001a\u00020��2\u0006\u0010\u0011\u001a\u00020\u0010H&¢\u0006\u0004\b\u0012\u0010\u0013J'\u0010\u0012\u001a\u00020��2\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u0014H&¢\u0006\u0004\b\u0012\u0010\u0017J\u0017\u0010\u0012\u001a\u00020��2\u0006\u0010\u0019\u001a\u00020\u0018H&¢\u0006\u0004\b\u0012\u0010\u001aJ'\u0010\u0012\u001a\u00020��2\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u0014H&¢\u0006\u0004\b\u0012\u0010\u001bJ\u001f\u0010\u0012\u001a\u00020��2\u0006\u0010\u0011\u001a\u00020\u001c2\u0006\u0010\u0016\u001a\u00020\u001dH&¢\u0006\u0004\b\u0012\u0010\u001eJ\u0017\u0010\u001f\u001a\u00020\u001d2\u0006\u0010\u0011\u001a\u00020\u001cH&¢\u0006\u0004\b\u001f\u0010 J\u0017\u0010\"\u001a\u00020��2\u0006\u0010!\u001a\u00020\u0014H&¢\u0006\u0004\b\"\u0010#J\u0017\u0010%\u001a\u00020��2\u0006\u0010$\u001a\u00020\u001dH&¢\u0006\u0004\b%\u0010&J\u0017\u0010'\u001a\u00020��2\u0006\u0010$\u001a\u00020\u001dH&¢\u0006\u0004\b'\u0010&J\u0017\u0010)\u001a\u00020��2\u0006\u0010(\u001a\u00020\u0014H&¢\u0006\u0004\b)\u0010#J\u0017\u0010*\u001a\u00020��2\u0006\u0010(\u001a\u00020\u0014H&¢\u0006\u0004\b*\u0010#J\u0017\u0010+\u001a\u00020��2\u0006\u0010$\u001a\u00020\u001dH&¢\u0006\u0004\b+\u0010&J\u0017\u0010,\u001a\u00020��2\u0006\u0010$\u001a\u00020\u001dH&¢\u0006\u0004\b,\u0010&J\u0017\u0010.\u001a\u00020��2\u0006\u0010-\u001a\u00020\u0014H&¢\u0006\u0004\b.\u0010#J\u0017\u0010/\u001a\u00020��2\u0006\u0010-\u001a\u00020\u0014H&¢\u0006\u0004\b/\u0010#J\u001f\u00104\u001a\u00020��2\u0006\u00101\u001a\u0002002\u0006\u00103\u001a\u000202H&¢\u0006\u0004\b4\u00105J/\u00104\u001a\u00020��2\u0006\u00101\u001a\u0002002\u0006\u00106\u001a\u00020\u00142\u0006\u00107\u001a\u00020\u00142\u0006\u00103\u001a\u000202H&¢\u0006\u0004\b4\u00108J\u0017\u00109\u001a\u00020��2\u0006\u00101\u001a\u000200H&¢\u0006\u0004\b9\u0010:J'\u00109\u001a\u00020��2\u0006\u00101\u001a\u0002002\u0006\u00106\u001a\u00020\u00142\u0006\u00107\u001a\u00020\u0014H&¢\u0006\u0004\b9\u0010;J\u0017\u0010=\u001a\u00020��2\u0006\u0010<\u001a\u00020\u0014H&¢\u0006\u0004\b=\u0010#R\u0016\u0010\u0005\u001a\u00020\u00048&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b>\u0010\u0006¨\u0006?"}, d2 = {"Lokio/BufferedSink;", "Lokio/Sink;", "Ljava/nio/channels/WritableByteChannel;", "Lkotlin/Any;", "Lokio/Buffer;", "buffer", "()Lokio/Buffer;", "emit", "()Lokio/BufferedSink;", "emitCompleteSegments", "", "flush", "()V", "Ljava/io/OutputStream;", "outputStream", "()Ljava/io/OutputStream;", "", "source", "write", "([B)Lokio/BufferedSink;", "", "offset", "byteCount", "([BII)Lokio/BufferedSink;", "Lokio/ByteString;", "byteString", "(Lokio/ByteString;)Lokio/BufferedSink;", "(Lokio/ByteString;II)Lokio/BufferedSink;", "Lokio/Source;", "", "(Lokio/Source;J)Lokio/BufferedSink;", "writeAll", "(Lokio/Source;)J", "b", "writeByte", "(I)Lokio/BufferedSink;", "v", "writeDecimalLong", "(J)Lokio/BufferedSink;", "writeHexadecimalUnsignedLong", "i", "writeInt", "writeIntLe", "writeLong", "writeLongLe", "s", "writeShort", "writeShortLe", "", "string", "Ljava/nio/charset/Charset;", "charset", "writeString", "(Ljava/lang/String;Ljava/nio/charset/Charset;)Lokio/BufferedSink;", "beginIndex", "endIndex", "(Ljava/lang/String;IILjava/nio/charset/Charset;)Lokio/BufferedSink;", "writeUtf8", "(Ljava/lang/String;)Lokio/BufferedSink;", "(Ljava/lang/String;II)Lokio/BufferedSink;", "codePoint", "writeUtf8CodePoint", "getBuffer", "okio"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:okio/BufferedSink.class */
public interface BufferedSink extends Sink, WritableByteChannel {
    @NotNull
    /* renamed from: A */
    BufferedSink mo100A(int i) throws IOException;

    @NotNull
    /* renamed from: F */
    BufferedSink mo99F() throws IOException;

    @NotNull
    /* renamed from: M */
    BufferedSink mo98M(@NotNull String str) throws IOException;

    @NotNull
    /* renamed from: Q */
    BufferedSink mo97Q(@NotNull byte[] bArr, int i, int i2) throws IOException;

    @NotNull
    /* renamed from: R */
    BufferedSink mo96R(@NotNull String str, int i, int i2) throws IOException;

    /* renamed from: S */
    long mo95S(@NotNull Source source) throws IOException;

    @NotNull
    /* renamed from: T */
    BufferedSink mo94T(long j) throws IOException;

    @NotNull
    /* renamed from: c */
    Buffer mo76c();

    @Override // okio.Sink, java.io.Flushable
    void flush() throws IOException;

    @NotNull
    /* renamed from: g0 */
    BufferedSink mo92g0(@NotNull byte[] bArr) throws IOException;

    @NotNull
    /* renamed from: h0 */
    BufferedSink mo91h0(@NotNull ByteString byteString) throws IOException;

    @NotNull
    /* renamed from: q0 */
    BufferedSink mo90q0(long j) throws IOException;

    @NotNull
    /* renamed from: r */
    BufferedSink mo89r() throws IOException;

    @NotNull
    /* renamed from: s */
    BufferedSink mo88s(int i) throws IOException;

    @NotNull
    /* renamed from: u */
    BufferedSink mo87u(int i) throws IOException;
}
