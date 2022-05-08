package okhttp3.internal.http2;

import java.io.Closeable;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import okhttp3.internal.Util;
import okhttp3.internal.http2.Hpack;
import p645m.AbstractC15174e;
import p645m.AbstractC15193s;
import p645m.C15170c;
import p645m.C15175f;
import p645m.C15194t;
/* loaded from: classes3-dex2jar.jar:okhttp3/internal/http2/Http2Reader.class */
public final class Http2Reader implements Closeable {
    public static final Logger logger = Logger.getLogger(Http2.class.getName());
    public final boolean client;
    public final ContinuationSource continuation;
    public final Hpack.Reader hpackReader;
    public final AbstractC15174e source;

    /* loaded from: classes3-dex2jar.jar:okhttp3/internal/http2/Http2Reader$ContinuationSource.class */
    public static final class ContinuationSource implements AbstractC15193s {
        public byte flags;
        public int left;
        public int length;
        public short padding;
        public final AbstractC15174e source;
        public int streamId;

        public ContinuationSource(AbstractC15174e eVar) {
            this.source = eVar;
        }

        @Override // p645m.AbstractC15193s, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
        }

        @Override // p645m.AbstractC15193s
        public long read(C15170c cVar, long j) throws IOException {
            while (true) {
                int i = this.left;
                if (i == 0) {
                    this.source.skip(this.padding);
                    this.padding = (short) 0;
                    if ((this.flags & 4) != 0) {
                        return -1L;
                    }
                    readContinuationHeader();
                } else {
                    long read = this.source.read(cVar, Math.min(j, i));
                    if (read == -1) {
                        return -1L;
                    }
                    this.left = (int) (this.left - read);
                    return read;
                }
            }
        }

        public final void readContinuationHeader() throws IOException {
            int i = this.streamId;
            int readMedium = Http2Reader.readMedium(this.source);
            this.left = readMedium;
            this.length = readMedium;
            byte readByte = (byte) (this.source.readByte() & 255);
            this.flags = (byte) (this.source.readByte() & 255);
            if (Http2Reader.logger.isLoggable(Level.FINE)) {
                Http2Reader.logger.fine(Http2.frameLog(true, this.streamId, this.length, readByte, this.flags));
            }
            this.streamId = this.source.readInt() & Integer.MAX_VALUE;
            if (readByte != 9) {
                Http2.ioException("%s != TYPE_CONTINUATION", Byte.valueOf(readByte));
                throw null;
            } else if (this.streamId != i) {
                Http2.ioException("TYPE_CONTINUATION streamId changed", new Object[0]);
                throw null;
            }
        }

        @Override // p645m.AbstractC15193s
        public C15194t timeout() {
            return this.source.timeout();
        }
    }

    /* loaded from: classes3-dex2jar.jar:okhttp3/internal/http2/Http2Reader$Handler.class */
    public interface Handler {
        void ackSettings();

        void data(boolean z, int i, AbstractC15174e eVar, int i2) throws IOException;

        void goAway(int i, ErrorCode errorCode, C15175f fVar);

        void headers(boolean z, int i, int i2, List<Header> list);

        void ping(boolean z, int i, int i2);

        void priority(int i, int i2, int i3, boolean z);

        void pushPromise(int i, int i2, List<Header> list) throws IOException;

        void rstStream(int i, ErrorCode errorCode);

        void settings(boolean z, Settings settings);

        void windowUpdate(int i, long j);
    }

    public Http2Reader(AbstractC15174e eVar, boolean z) {
        this.source = eVar;
        this.client = z;
        this.continuation = new ContinuationSource(this.source);
        this.hpackReader = new Hpack.Reader(4096, this.continuation);
    }

    public static int lengthWithoutPadding(int i, byte b, short s) throws IOException {
        int i2 = i;
        if ((b & 8) != 0) {
            i2 = i - 1;
        }
        if (s <= i2) {
            return (short) (i2 - s);
        }
        Http2.ioException("PROTOCOL_ERROR padding %s > remaining length %s", Short.valueOf(s), Integer.valueOf(i2));
        throw null;
    }

    public static int readMedium(AbstractC15174e eVar) throws IOException {
        return (eVar.readByte() & 255) | ((eVar.readByte() & 255) << 16) | ((eVar.readByte() & 255) << 8);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.source.close();
    }

    public boolean nextFrame(boolean z, Handler handler) throws IOException {
        try {
            this.source.mo298e(9L);
            int readMedium = readMedium(this.source);
            if (readMedium < 0 || readMedium > 16384) {
                Http2.ioException("FRAME_SIZE_ERROR: %s", Integer.valueOf(readMedium));
                throw null;
            }
            byte readByte = (byte) (this.source.readByte() & 255);
            if (!z || readByte == 4) {
                byte readByte2 = (byte) (this.source.readByte() & 255);
                int readInt = this.source.readInt() & Integer.MAX_VALUE;
                if (logger.isLoggable(Level.FINE)) {
                    logger.fine(Http2.frameLog(true, readInt, readMedium, readByte, readByte2));
                }
                switch (readByte) {
                    case 0:
                        readData(handler, readMedium, readByte2, readInt);
                        return true;
                    case 1:
                        readHeaders(handler, readMedium, readByte2, readInt);
                        return true;
                    case 2:
                        readPriority(handler, readMedium, readByte2, readInt);
                        return true;
                    case 3:
                        readRstStream(handler, readMedium, readByte2, readInt);
                        return true;
                    case 4:
                        readSettings(handler, readMedium, readByte2, readInt);
                        return true;
                    case 5:
                        readPushPromise(handler, readMedium, readByte2, readInt);
                        return true;
                    case 6:
                        readPing(handler, readMedium, readByte2, readInt);
                        return true;
                    case 7:
                        readGoAway(handler, readMedium, readByte2, readInt);
                        return true;
                    case 8:
                        readWindowUpdate(handler, readMedium, readByte2, readInt);
                        return true;
                    default:
                        this.source.skip(readMedium);
                        return true;
                }
            } else {
                Http2.ioException("Expected a SETTINGS frame but was %s", Byte.valueOf(readByte));
                throw null;
            }
        } catch (IOException e) {
            return false;
        }
    }

    public void readConnectionPreface(Handler handler) throws IOException {
        if (!this.client) {
            C15175f f = this.source.mo297f(Http2.CONNECTION_PREFACE.mo268f());
            if (logger.isLoggable(Level.FINE)) {
                logger.fine(Util.format("<< CONNECTION %s", f.mo273b()));
            }
            if (!Http2.CONNECTION_PREFACE.equals(f)) {
                Http2.ioException("Expected a connection header but was %s", f.mo265i());
                throw null;
            }
        } else if (!nextFrame(true, handler)) {
            Http2.ioException("Required SETTINGS preface not received", new Object[0]);
            throw null;
        }
    }

    public final void readData(Handler handler, int i, byte b, int i2) throws IOException {
        short s = 0;
        if (i2 != 0) {
            boolean z = true;
            boolean z2 = (b & 1) != 0;
            if ((b & 32) == 0) {
                z = false;
            }
            if (!z) {
                if ((b & 8) != 0) {
                    s = (short) (this.source.readByte() & 255);
                }
                handler.data(z2, i2, this.source, lengthWithoutPadding(i, b, s));
                this.source.skip(s);
                return;
            }
            Http2.ioException("PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA", new Object[0]);
            throw null;
        }
        Http2.ioException("PROTOCOL_ERROR: TYPE_DATA streamId == 0", new Object[0]);
        throw null;
    }

    public final void readGoAway(Handler handler, int i, byte b, int i2) throws IOException {
        if (i < 8) {
            Http2.ioException("TYPE_GOAWAY length < 8: %s", Integer.valueOf(i));
            throw null;
        } else if (i2 == 0) {
            int readInt = this.source.readInt();
            int readInt2 = this.source.readInt();
            int i3 = i - 8;
            ErrorCode fromHttp2 = ErrorCode.fromHttp2(readInt2);
            if (fromHttp2 != null) {
                C15175f fVar = C15175f.f33164e;
                if (i3 > 0) {
                    fVar = this.source.mo297f(i3);
                }
                handler.goAway(readInt, fromHttp2, fVar);
                return;
            }
            Http2.ioException("TYPE_GOAWAY unexpected error code: %d", Integer.valueOf(readInt2));
            throw null;
        } else {
            Http2.ioException("TYPE_GOAWAY streamId != 0", new Object[0]);
            throw null;
        }
    }

    public final List<Header> readHeaderBlock(int i, short s, byte b, int i2) throws IOException {
        ContinuationSource continuationSource = this.continuation;
        continuationSource.left = i;
        continuationSource.length = i;
        continuationSource.padding = s;
        continuationSource.flags = b;
        continuationSource.streamId = i2;
        this.hpackReader.readHeaders();
        return this.hpackReader.getAndResetHeaderList();
    }

    public final void readHeaders(Handler handler, int i, byte b, int i2) throws IOException {
        short s = 0;
        if (i2 != 0) {
            boolean z = (b & 1) != 0;
            if ((b & 8) != 0) {
                s = (short) (this.source.readByte() & 255);
            }
            int i3 = i;
            if ((b & 32) != 0) {
                readPriority(handler, i2);
                i3 = i - 5;
            }
            handler.headers(z, i2, -1, readHeaderBlock(lengthWithoutPadding(i3, b, s), s, b, i2));
            return;
        }
        Http2.ioException("PROTOCOL_ERROR: TYPE_HEADERS streamId == 0", new Object[0]);
        throw null;
    }

    public final void readPing(Handler handler, int i, byte b, int i2) throws IOException {
        boolean z = false;
        if (i != 8) {
            Http2.ioException("TYPE_PING length != 8: %s", Integer.valueOf(i));
            throw null;
        } else if (i2 == 0) {
            int readInt = this.source.readInt();
            int readInt2 = this.source.readInt();
            if ((b & 1) != 0) {
                z = true;
            }
            handler.ping(z, readInt, readInt2);
        } else {
            Http2.ioException("TYPE_PING streamId != 0", new Object[0]);
            throw null;
        }
    }

    public final void readPriority(Handler handler, int i) throws IOException {
        int readInt = this.source.readInt();
        handler.priority(i, readInt & Integer.MAX_VALUE, (this.source.readByte() & 255) + 1, (Integer.MIN_VALUE & readInt) != 0);
    }

    public final void readPriority(Handler handler, int i, byte b, int i2) throws IOException {
        if (i != 5) {
            Http2.ioException("TYPE_PRIORITY length: %d != 5", Integer.valueOf(i));
            throw null;
        } else if (i2 != 0) {
            readPriority(handler, i2);
        } else {
            Http2.ioException("TYPE_PRIORITY streamId == 0", new Object[0]);
            throw null;
        }
    }

    public final void readPushPromise(Handler handler, int i, byte b, int i2) throws IOException {
        short s = 0;
        if (i2 != 0) {
            if ((b & 8) != 0) {
                s = (short) (this.source.readByte() & 255);
            }
            handler.pushPromise(i2, this.source.readInt() & Integer.MAX_VALUE, readHeaderBlock(lengthWithoutPadding(i - 4, b, s), s, b, i2));
            return;
        }
        Http2.ioException("PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0", new Object[0]);
        throw null;
    }

    public final void readRstStream(Handler handler, int i, byte b, int i2) throws IOException {
        if (i != 4) {
            Http2.ioException("TYPE_RST_STREAM length: %d != 4", Integer.valueOf(i));
            throw null;
        } else if (i2 != 0) {
            int readInt = this.source.readInt();
            ErrorCode fromHttp2 = ErrorCode.fromHttp2(readInt);
            if (fromHttp2 != null) {
                handler.rstStream(i2, fromHttp2);
            } else {
                Http2.ioException("TYPE_RST_STREAM unexpected error code: %d", Integer.valueOf(readInt));
                throw null;
            }
        } else {
            Http2.ioException("TYPE_RST_STREAM streamId == 0", new Object[0]);
            throw null;
        }
    }

    public final void readSettings(Handler handler, int i, byte b, int i2) throws IOException {
        if (i2 != 0) {
            Http2.ioException("TYPE_SETTINGS streamId != 0", new Object[0]);
            throw null;
        } else if ((b & 1) != 0) {
            if (i == 0) {
                handler.ackSettings();
            } else {
                Http2.ioException("FRAME_SIZE_ERROR ack frame should be empty!", new Object[0]);
                throw null;
            }
        } else if (i % 6 == 0) {
            Settings settings = new Settings();
            for (int i3 = 0; i3 < i; i3 += 6) {
                int readShort = this.source.readShort() & 65535;
                int readInt = this.source.readInt();
                int i4 = readShort;
                switch (readShort) {
                    case 1:
                    case 6:
                        break;
                    case 2:
                        i4 = readShort;
                        if (readInt == 0) {
                            continue;
                        } else if (readInt == 1) {
                            i4 = readShort;
                            break;
                        } else {
                            Http2.ioException("PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1", new Object[0]);
                            throw null;
                        }
                    case 3:
                        i4 = 4;
                        break;
                    case 4:
                        i4 = 7;
                        if (readInt >= 0) {
                            break;
                        } else {
                            Http2.ioException("PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1", new Object[0]);
                            throw null;
                        }
                    case 5:
                        if (readInt >= 16384 && readInt <= 16777215) {
                            i4 = readShort;
                            break;
                        } else {
                            Http2.ioException("PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s", Integer.valueOf(readInt));
                            throw null;
                        }
                        break;
                    default:
                        i4 = readShort;
                        break;
                }
                settings.set(i4, readInt);
            }
            handler.settings(false, settings);
        } else {
            Http2.ioException("TYPE_SETTINGS length %% 6 != 0: %s", Integer.valueOf(i));
            throw null;
        }
    }

    public final void readWindowUpdate(Handler handler, int i, byte b, int i2) throws IOException {
        if (i == 4) {
            long readInt = this.source.readInt() & 2147483647L;
            if (readInt != 0) {
                handler.windowUpdate(i2, readInt);
            } else {
                Http2.ioException("windowSizeIncrement was 0", Long.valueOf(readInt));
                throw null;
            }
        } else {
            Http2.ioException("TYPE_WINDOW_UPDATE length !=4: %s", Integer.valueOf(i));
            throw null;
        }
    }
}
