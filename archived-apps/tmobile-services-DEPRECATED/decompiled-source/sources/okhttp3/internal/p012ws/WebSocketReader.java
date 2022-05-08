package okhttp3.internal.p012ws;

import java.io.Closeable;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.Util;
import okhttp3.internal.http2.C2445Settings;
import okio.Buffer;
import okio.BufferedSource;
import okio.ByteString;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\u0018��2\u00020\u0001:\u00011B/\u0012\u0006\u0010\u0017\u001a\u00020\u000b\u0012\u0006\u0010+\u001a\u00020*\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010(\u001a\u00020\u000b\u0012\u0006\u0010$\u001a\u00020\u000b¢\u0006\u0004\b/\u00100J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004J\r\u0010\u0005\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0007\u0010\u0004J\u000f\u0010\b\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\b\u0010\u0004J\u000f\u0010\t\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\t\u0010\u0004J\u000f\u0010\n\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\n\u0010\u0004R\u0016\u0010\f\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\f\u0010\rR\u0016\u0010\u000f\u001a\u00020\u000e8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R\u0016\u0010\u0012\u001a\u00020\u00118\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u0016\u0010\u0015\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0016\u0010\u0017\u001a\u00020\u000b8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\rR\u0016\u0010\u0018\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010\rR\u0016\u0010\u0019\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u0010\rR\u0018\u0010\u001b\u001a\u0004\u0018\u00010\u001a8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u0018\u0010\u001e\u001a\u0004\u0018\u00010\u001d8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u0016\u0010 \u001a\u00020\u000e8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b \u0010\u0010R\u0018\u0010\"\u001a\u0004\u0018\u00010!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010#R\u0016\u0010$\u001a\u00020\u000b8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b$\u0010\rR\u0016\u0010&\u001a\u00020%8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u0010'R\u0016\u0010(\u001a\u00020\u000b8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b(\u0010\rR\u0016\u0010)\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b)\u0010\rR\u0019\u0010+\u001a\u00020*8\u0006@\u0006¢\u0006\f\n\u0004\b+\u0010,\u001a\u0004\b-\u0010.¨\u00062"}, d2 = {"Lokhttp3/internal/ws/WebSocketReader;", "Ljava/io/Closeable;", "", "close", "()V", "processNextFrame", "readControlFrame", "readHeader", "readMessage", "readMessageFrame", "readUntilNonControlFrame", "", "closed", "Z", "Lokio/Buffer;", "controlFrameBuffer", "Lokio/Buffer;", "Lokhttp3/internal/ws/WebSocketReader$FrameCallback;", "frameCallback", "Lokhttp3/internal/ws/WebSocketReader$FrameCallback;", "", "frameLength", "J", "isClient", "isControlFrame", "isFinalFrame", "Lokio/Buffer$UnsafeCursor;", "maskCursor", "Lokio/Buffer$UnsafeCursor;", "", "maskKey", "[B", "messageFrameBuffer", "Lokhttp3/internal/ws/MessageInflater;", "messageInflater", "Lokhttp3/internal/ws/MessageInflater;", "noContextTakeover", "", "opcode", "I", "perMessageDeflate", "readingCompressedMessage", "Lokio/BufferedSource;", "source", "Lokio/BufferedSource;", "getSource", "()Lokio/BufferedSource;", "<init>", "(ZLokio/BufferedSource;Lokhttp3/internal/ws/WebSocketReader$FrameCallback;ZZ)V", "FrameCallback", "okhttp"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* renamed from: okhttp3.internal.ws.WebSocketReader */
/* loaded from: classes2-dex2jar.jar:okhttp3/internal/ws/WebSocketReader.class */
public final class WebSocketReader implements Closeable {
    private boolean closed;
    private final FrameCallback frameCallback;
    private long frameLength;
    private final boolean isClient;
    private boolean isControlFrame;
    private boolean isFinalFrame;
    private final Buffer.UnsafeCursor maskCursor;
    private final byte[] maskKey;
    private MessageInflater messageInflater;
    private final boolean noContextTakeover;
    private int opcode;
    private final boolean perMessageDeflate;
    private boolean readingCompressedMessage;
    @NotNull
    private final BufferedSource source;
    private final Buffer controlFrameBuffer = new Buffer();
    private final Buffer messageFrameBuffer = new Buffer();

    @Metadata(bv = {1, 0, 3}, d1 = {"��$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\bf\u0018��2\u00020\u0001J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H&¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\n\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0004H&¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\n\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\fH&¢\u0006\u0004\b\n\u0010\u000eJ\u0017\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\fH&¢\u0006\u0004\b\u0010\u0010\u000eJ\u0017\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\fH&¢\u0006\u0004\b\u0011\u0010\u000e¨\u0006\u0012"}, d2 = {"Lokhttp3/internal/ws/WebSocketReader$FrameCallback;", "Lkotlin/Any;", "", "code", "", "reason", "", "onReadClose", "(ILjava/lang/String;)V", "text", "onReadMessage", "(Ljava/lang/String;)V", "Lokio/ByteString;", "bytes", "(Lokio/ByteString;)V", "payload", "onReadPing", "onReadPong", "okhttp"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* renamed from: okhttp3.internal.ws.WebSocketReader$FrameCallback */
    /* loaded from: classes2-dex2jar.jar:okhttp3/internal/ws/WebSocketReader$FrameCallback.class */
    public interface FrameCallback {
        void onReadClose(int i, @NotNull String str);

        void onReadMessage(@NotNull String str) throws IOException;

        void onReadMessage(@NotNull ByteString byteString) throws IOException;

        void onReadPing(@NotNull ByteString byteString);

        void onReadPong(@NotNull ByteString byteString);
    }

    public WebSocketReader(boolean z, @NotNull BufferedSource source, @NotNull FrameCallback frameCallback, boolean z2, boolean z3) {
        Intrinsics.m1830e(source, "source");
        Intrinsics.m1830e(frameCallback, "frameCallback");
        this.isClient = z;
        this.source = source;
        this.frameCallback = frameCallback;
        this.perMessageDeflate = z2;
        this.noContextTakeover = z3;
        Buffer.UnsafeCursor unsafeCursor = null;
        this.maskKey = this.isClient ? null : new byte[4];
        if (!this.isClient) {
            unsafeCursor = new Buffer.UnsafeCursor();
        }
        this.maskCursor = unsafeCursor;
    }

    private final void readControlFrame() throws IOException {
        String str;
        long j = this.frameLength;
        if (j > 0) {
            this.source.mo86D(this.controlFrameBuffer, j);
            if (!this.isClient) {
                Buffer buffer = this.controlFrameBuffer;
                Buffer.UnsafeCursor unsafeCursor = this.maskCursor;
                Intrinsics.m1832c(unsafeCursor);
                buffer.m209N(unsafeCursor);
                this.maskCursor.m181d(0L);
                WebSocketProtocol webSocketProtocol = WebSocketProtocol.INSTANCE;
                Buffer.UnsafeCursor unsafeCursor2 = this.maskCursor;
                byte[] bArr = this.maskKey;
                Intrinsics.m1832c(bArr);
                webSocketProtocol.toggleMask(unsafeCursor2, bArr);
                this.maskCursor.close();
            }
        }
        switch (this.opcode) {
            case 8:
                short s = 1005;
                long v0 = this.controlFrameBuffer.m188v0();
                if (v0 != 1) {
                    if (v0 != 0) {
                        s = this.controlFrameBuffer.readShort();
                        str = this.controlFrameBuffer.m199e0();
                        String closeCodeExceptionMessage = WebSocketProtocol.INSTANCE.closeCodeExceptionMessage(s);
                        if (closeCodeExceptionMessage != null) {
                            throw new ProtocolException(closeCodeExceptionMessage);
                        }
                    } else {
                        str = "";
                    }
                    this.frameCallback.onReadClose(s, str);
                    this.closed = true;
                    return;
                }
                throw new ProtocolException("Malformed close payload length of 1.");
            case 9:
                this.frameCallback.onReadPing(this.controlFrameBuffer.mo80U());
                return;
            case 10:
                this.frameCallback.onReadPong(this.controlFrameBuffer.mo80U());
                return;
            default:
                throw new ProtocolException("Unknown control opcode: " + Util.toHexString(this.opcode));
        }
    }

    /* JADX WARN: Finally extract failed */
    private final void readHeader() throws IOException, ProtocolException {
        boolean z;
        if (!this.closed) {
            long timeoutNanos = this.source.timeout().timeoutNanos();
            this.source.timeout().clearTimeout();
            try {
                int and = Util.and(this.source.readByte(), 255);
                this.source.timeout().timeout(timeoutNanos, TimeUnit.NANOSECONDS);
                this.opcode = and & 15;
                boolean z2 = false;
                this.isFinalFrame = (and & 128) != 0;
                boolean z3 = (and & 8) != 0;
                this.isControlFrame = z3;
                if (!z3 || this.isFinalFrame) {
                    boolean z4 = (and & 64) != 0;
                    int i = this.opcode;
                    if (i == 1 || i == 2) {
                        if (!z4) {
                            z = false;
                        } else if (this.perMessageDeflate) {
                            z = true;
                        } else {
                            throw new ProtocolException("Unexpected rsv1 flag");
                        }
                        this.readingCompressedMessage = z;
                    } else if (z4) {
                        throw new ProtocolException("Unexpected rsv1 flag");
                    }
                    if (!((and & 32) != 0)) {
                        if (!((and & 16) != 0)) {
                            int and2 = Util.and(this.source.readByte(), 255);
                            if ((and2 & 128) != 0) {
                                z2 = true;
                            }
                            if (z2 == this.isClient) {
                                throw new ProtocolException(this.isClient ? "Server-sent frames must not be masked." : "Client-sent frames must be masked.");
                            }
                            long j = and2 & 127;
                            this.frameLength = j;
                            if (j == ((long) WebSocketProtocol.PAYLOAD_SHORT)) {
                                this.frameLength = Util.and(this.source.readShort(), (int) C2445Settings.DEFAULT_INITIAL_WINDOW_SIZE);
                            } else if (j == 127) {
                                long readLong = this.source.readLong();
                                this.frameLength = readLong;
                                if (readLong < 0) {
                                    throw new ProtocolException("Frame length 0x" + Util.toHexString(this.frameLength) + " > 0x7FFFFFFFFFFFFFFF");
                                }
                            }
                            if (this.isControlFrame && this.frameLength > 125) {
                                throw new ProtocolException("Control frame must be less than 125B.");
                            } else if (z2) {
                                BufferedSource bufferedSource = this.source;
                                byte[] bArr = this.maskKey;
                                Intrinsics.m1832c(bArr);
                                bufferedSource.readFully(bArr);
                            }
                        } else {
                            throw new ProtocolException("Unexpected rsv3 flag");
                        }
                    } else {
                        throw new ProtocolException("Unexpected rsv2 flag");
                    }
                } else {
                    throw new ProtocolException("Control frames must be final.");
                }
            } catch (Throwable th) {
                this.source.timeout().timeout(timeoutNanos, TimeUnit.NANOSECONDS);
                throw th;
            }
        } else {
            throw new IOException("closed");
        }
    }

    private final void readMessage() throws IOException {
        while (!this.closed) {
            long j = this.frameLength;
            if (j > 0) {
                this.source.mo86D(this.messageFrameBuffer, j);
                if (!this.isClient) {
                    Buffer buffer = this.messageFrameBuffer;
                    Buffer.UnsafeCursor unsafeCursor = this.maskCursor;
                    Intrinsics.m1832c(unsafeCursor);
                    buffer.m209N(unsafeCursor);
                    this.maskCursor.m181d(this.messageFrameBuffer.m188v0() - this.frameLength);
                    WebSocketProtocol webSocketProtocol = WebSocketProtocol.INSTANCE;
                    Buffer.UnsafeCursor unsafeCursor2 = this.maskCursor;
                    byte[] bArr = this.maskKey;
                    Intrinsics.m1832c(bArr);
                    webSocketProtocol.toggleMask(unsafeCursor2, bArr);
                    this.maskCursor.close();
                }
            }
            if (!this.isFinalFrame) {
                readUntilNonControlFrame();
                if (this.opcode != 0) {
                    throw new ProtocolException("Expected continuation opcode. Got: " + Util.toHexString(this.opcode));
                }
            } else {
                return;
            }
        }
        throw new IOException("closed");
    }

    private final void readMessageFrame() throws IOException {
        int i = this.opcode;
        if (i == 1 || i == 2) {
            readMessage();
            if (this.readingCompressedMessage) {
                MessageInflater messageInflater = this.messageInflater;
                if (messageInflater == null) {
                    messageInflater = new MessageInflater(this.noContextTakeover);
                    this.messageInflater = messageInflater;
                }
                messageInflater.inflate(this.messageFrameBuffer);
            }
            if (i == 1) {
                this.frameCallback.onReadMessage(this.messageFrameBuffer.m199e0());
            } else {
                this.frameCallback.onReadMessage(this.messageFrameBuffer.mo80U());
            }
        } else {
            throw new ProtocolException("Unknown opcode: " + Util.toHexString(i));
        }
    }

    private final void readUntilNonControlFrame() throws IOException {
        while (!this.closed) {
            readHeader();
            if (this.isControlFrame) {
                readControlFrame();
            } else {
                return;
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        MessageInflater messageInflater = this.messageInflater;
        if (messageInflater != null) {
            messageInflater.close();
        }
    }

    @NotNull
    public final BufferedSource getSource() {
        return this.source;
    }

    public final void processNextFrame() throws IOException {
        readHeader();
        if (this.isControlFrame) {
            readControlFrame();
        } else {
            readMessageFrame();
        }
    }
}
