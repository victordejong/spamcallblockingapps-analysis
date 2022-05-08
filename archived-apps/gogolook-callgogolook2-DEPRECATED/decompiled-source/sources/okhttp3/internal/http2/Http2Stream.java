package okhttp3.internal.http2;

import java.io.EOFException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.SocketTimeoutException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Deque;
import java.util.List;
import javax.annotation.Nullable;
import okhttp3.Headers;
import okhttp3.internal.Util;
import okhttp3.internal.http2.Header;
import p645m.AbstractC15174e;
import p645m.AbstractC15192r;
import p645m.AbstractC15193s;
import p645m.C15165a;
import p645m.C15170c;
import p645m.C15194t;
/* loaded from: classes3-dex2jar.jar:okhttp3/internal/http2/Http2Stream.class */
public final class Http2Stream {
    public long bytesLeftInWriteWindow;
    public final Http2Connection connection;
    public boolean hasResponseHeaders;
    public Header.Listener headersListener;

    /* renamed from: id */
    public final int f33436id;
    public final FramingSink sink;
    public final FramingSource source;
    public long unacknowledgedBytesRead = 0;
    public final Deque<Headers> headersQueue = new ArrayDeque();
    public final StreamTimeout readTimeout = new StreamTimeout();
    public final StreamTimeout writeTimeout = new StreamTimeout();
    public ErrorCode errorCode = null;

    /* loaded from: classes3-dex2jar.jar:okhttp3/internal/http2/Http2Stream$FramingSink.class */
    public final class FramingSink implements AbstractC15192r {
        public boolean closed;
        public boolean finished;
        public final C15170c sendBuffer = new C15170c();

        public FramingSink() {
        }

        @Override // p645m.AbstractC15192r, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            synchronized (Http2Stream.this) {
                if (!this.closed) {
                    if (!Http2Stream.this.sink.finished) {
                        if (this.sendBuffer.m348i() > 0) {
                            while (this.sendBuffer.m348i() > 0) {
                                emitFrame(true);
                            }
                        } else {
                            Http2Stream http2Stream = Http2Stream.this;
                            http2Stream.connection.writeData(http2Stream.f33436id, true, null, 0L);
                        }
                    }
                    synchronized (Http2Stream.this) {
                        this.closed = true;
                    }
                    Http2Stream.this.connection.flush();
                    Http2Stream.this.cancelStreamIfNecessary();
                }
            }
        }

        public final void emitFrame(boolean z) throws IOException {
            long min;
            synchronized (Http2Stream.this) {
                Http2Stream.this.writeTimeout.enter();
                while (Http2Stream.this.bytesLeftInWriteWindow <= 0 && !this.finished && !this.closed && Http2Stream.this.errorCode == null) {
                    Http2Stream.this.waitForIo();
                }
                Http2Stream.this.writeTimeout.exitAndThrowIfTimedOut();
                Http2Stream.this.checkOutNotClosed();
                min = Math.min(Http2Stream.this.bytesLeftInWriteWindow, this.sendBuffer.m348i());
                Http2Stream.this.bytesLeftInWriteWindow -= min;
            }
            Http2Stream.this.writeTimeout.enter();
            try {
                Http2Stream.this.connection.writeData(Http2Stream.this.f33436id, z && min == this.sendBuffer.m348i(), this.sendBuffer, min);
            } finally {
                Http2Stream.this.writeTimeout.exitAndThrowIfTimedOut();
            }
        }

        @Override // p645m.AbstractC15192r, java.io.Flushable
        public void flush() throws IOException {
            synchronized (Http2Stream.this) {
                Http2Stream.this.checkOutNotClosed();
            }
            while (this.sendBuffer.m348i() > 0) {
                emitFrame(false);
                Http2Stream.this.connection.flush();
            }
        }

        @Override // p645m.AbstractC15192r
        public C15194t timeout() {
            return Http2Stream.this.writeTimeout;
        }

        @Override // p645m.AbstractC15192r
        public void write(C15170c cVar, long j) throws IOException {
            this.sendBuffer.write(cVar, j);
            while (this.sendBuffer.m348i() >= 16384) {
                emitFrame(false);
            }
        }
    }

    /* loaded from: classes3-dex2jar.jar:okhttp3/internal/http2/Http2Stream$FramingSource.class */
    public final class FramingSource implements AbstractC15193s {
        public boolean closed;
        public boolean finished;
        public final long maxByteCount;
        public final C15170c receiveBuffer = new C15170c();
        public final C15170c readBuffer = new C15170c();

        public FramingSource(long j) {
            this.maxByteCount = j;
        }

        @Override // p645m.AbstractC15193s, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            long i;
            ArrayList<Headers> arrayList;
            Header.Listener listener;
            synchronized (Http2Stream.this) {
                this.closed = true;
                i = this.readBuffer.m348i();
                this.readBuffer.m355d();
                arrayList = null;
                if (Http2Stream.this.headersQueue.isEmpty() || Http2Stream.this.headersListener == null) {
                    listener = null;
                } else {
                    arrayList = new ArrayList(Http2Stream.this.headersQueue);
                    Http2Stream.this.headersQueue.clear();
                    listener = Http2Stream.this.headersListener;
                }
                Http2Stream.this.notifyAll();
            }
            if (i > 0) {
                updateConnectionFlowControl(i);
            }
            Http2Stream.this.cancelStreamIfNecessary();
            if (listener != null) {
                for (Headers headers : arrayList) {
                    listener.onHeaders(headers);
                }
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:58:0x0178, code lost:
            throw new java.io.IOException("stream closed");
         */
        /* JADX WARN: Type inference failed for: r0v48, types: [long] */
        /* JADX WARN: Type inference failed for: r15v1 */
        /* JADX WARN: Type inference failed for: r15v2 */
        /* JADX WARN: Type inference failed for: r15v3 */
        /* JADX WARN: Type inference failed for: r15v4 */
        /* JADX WARN: Type inference failed for: r15v5 */
        /* JADX WARN: Unknown variable types count: 2 */
        @Override // p645m.AbstractC15193s
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public long read(p645m.C15170c r8, long r9) throws java.io.IOException {
            /*
                Method dump skipped, instructions count: 429
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.http2.Http2Stream.FramingSource.read(m.c, long):long");
        }

        public void receive(AbstractC15174e eVar, long j) throws IOException {
            boolean z;
            boolean z2;
            boolean z3;
            while (j > 0) {
                synchronized (Http2Stream.this) {
                    z = this.finished;
                    z3 = true;
                    z2 = this.readBuffer.m348i() + j > this.maxByteCount;
                }
                if (z2) {
                    eVar.skip(j);
                    Http2Stream.this.closeLater(ErrorCode.FLOW_CONTROL_ERROR);
                    return;
                } else if (z) {
                    eVar.skip(j);
                    return;
                } else {
                    long read = eVar.read(this.receiveBuffer, j);
                    if (read != -1) {
                        j -= read;
                        synchronized (Http2Stream.this) {
                            if (this.readBuffer.m348i() != 0) {
                                z3 = false;
                            }
                            this.readBuffer.mo311a((AbstractC15193s) this.receiveBuffer);
                            if (z3) {
                                Http2Stream.this.notifyAll();
                            }
                        }
                    } else {
                        throw new EOFException();
                    }
                }
            }
        }

        @Override // p645m.AbstractC15193s
        public C15194t timeout() {
            return Http2Stream.this.readTimeout;
        }

        public final void updateConnectionFlowControl(long j) {
            Http2Stream.this.connection.updateConnectionFlowControl(j);
        }
    }

    /* loaded from: classes3-dex2jar.jar:okhttp3/internal/http2/Http2Stream$StreamTimeout.class */
    public class StreamTimeout extends C15165a {
        public StreamTimeout() {
        }

        public void exitAndThrowIfTimedOut() throws IOException {
            if (exit()) {
                throw newTimeoutException(null);
            }
        }

        @Override // p645m.C15165a
        public IOException newTimeoutException(IOException iOException) {
            SocketTimeoutException socketTimeoutException = new SocketTimeoutException("timeout");
            if (iOException != null) {
                socketTimeoutException.initCause(iOException);
            }
            return socketTimeoutException;
        }

        @Override // p645m.C15165a
        public void timedOut() {
            Http2Stream.this.closeLater(ErrorCode.CANCEL);
        }
    }

    public Http2Stream(int i, Http2Connection http2Connection, boolean z, boolean z2, @Nullable Headers headers) {
        if (http2Connection != null) {
            this.f33436id = i;
            this.connection = http2Connection;
            this.bytesLeftInWriteWindow = http2Connection.peerSettings.getInitialWindowSize();
            this.source = new FramingSource(http2Connection.okHttpSettings.getInitialWindowSize());
            this.sink = new FramingSink();
            this.source.finished = z2;
            this.sink.finished = z;
            if (headers != null) {
                this.headersQueue.add(headers);
            }
            if (isLocallyInitiated() && headers != null) {
                throw new IllegalStateException("locally-initiated streams shouldn't have headers yet");
            } else if (!isLocallyInitiated() && headers == null) {
                throw new IllegalStateException("remotely-initiated streams should have headers");
            }
        } else {
            throw new NullPointerException("connection == null");
        }
    }

    public void addBytesToWriteWindow(long j) {
        this.bytesLeftInWriteWindow += j;
        if (j > 0) {
            notifyAll();
        }
    }

    public void cancelStreamIfNecessary() throws IOException {
        boolean z;
        boolean isOpen;
        synchronized (this) {
            z = !this.source.finished && this.source.closed && (this.sink.finished || this.sink.closed);
            isOpen = isOpen();
        }
        if (z) {
            close(ErrorCode.CANCEL);
        } else if (!isOpen) {
            this.connection.removeStream(this.f33436id);
        }
    }

    public void checkOutNotClosed() throws IOException {
        FramingSink framingSink = this.sink;
        if (framingSink.closed) {
            throw new IOException("stream closed");
        } else if (!framingSink.finished) {
            ErrorCode errorCode = this.errorCode;
            if (errorCode != null) {
                throw new StreamResetException(errorCode);
            }
        } else {
            throw new IOException("stream finished");
        }
    }

    public void close(ErrorCode errorCode) throws IOException {
        if (closeInternal(errorCode)) {
            this.connection.writeSynReset(this.f33436id, errorCode);
        }
    }

    public final boolean closeInternal(ErrorCode errorCode) {
        synchronized (this) {
            if (this.errorCode != null) {
                return false;
            }
            if (this.source.finished && this.sink.finished) {
                return false;
            }
            this.errorCode = errorCode;
            notifyAll();
            this.connection.removeStream(this.f33436id);
            return true;
        }
    }

    public void closeLater(ErrorCode errorCode) {
        if (closeInternal(errorCode)) {
            this.connection.writeSynResetLater(this.f33436id, errorCode);
        }
    }

    public int getId() {
        return this.f33436id;
    }

    public AbstractC15192r getSink() {
        synchronized (this) {
            if (!this.hasResponseHeaders && !isLocallyInitiated()) {
                throw new IllegalStateException("reply before requesting the sink");
            }
        }
        return this.sink;
    }

    public AbstractC15193s getSource() {
        return this.source;
    }

    public boolean isLocallyInitiated() {
        boolean z = true;
        if (this.connection.client != ((this.f33436id & 1) == 1)) {
            z = false;
        }
        return z;
    }

    public boolean isOpen() {
        synchronized (this) {
            if (this.errorCode != null) {
                return false;
            }
            if ((this.source.finished || this.source.closed) && (this.sink.finished || this.sink.closed)) {
                if (this.hasResponseHeaders) {
                    return false;
                }
            }
            return true;
        }
    }

    public C15194t readTimeout() {
        return this.readTimeout;
    }

    public void receiveData(AbstractC15174e eVar, int i) throws IOException {
        this.source.receive(eVar, i);
    }

    public void receiveFin() {
        boolean isOpen;
        synchronized (this) {
            this.source.finished = true;
            isOpen = isOpen();
            notifyAll();
        }
        if (!isOpen) {
            this.connection.removeStream(this.f33436id);
        }
    }

    public void receiveHeaders(List<Header> list) {
        boolean isOpen;
        synchronized (this) {
            this.hasResponseHeaders = true;
            this.headersQueue.add(Util.toHeaders(list));
            isOpen = isOpen();
            notifyAll();
        }
        if (!isOpen) {
            this.connection.removeStream(this.f33436id);
        }
    }

    public void receiveRstStream(ErrorCode errorCode) {
        synchronized (this) {
            if (this.errorCode == null) {
                this.errorCode = errorCode;
                notifyAll();
            }
        }
    }

    public Headers takeHeaders() throws IOException {
        Headers removeFirst;
        synchronized (this) {
            this.readTimeout.enter();
            while (this.headersQueue.isEmpty() && this.errorCode == null) {
                waitForIo();
            }
            this.readTimeout.exitAndThrowIfTimedOut();
            if (!this.headersQueue.isEmpty()) {
                removeFirst = this.headersQueue.removeFirst();
            } else {
                throw new StreamResetException(this.errorCode);
            }
        }
        return removeFirst;
    }

    public void waitForIo() throws InterruptedIOException {
        try {
            wait();
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            throw new InterruptedIOException();
        }
    }

    public C15194t writeTimeout() {
        return this.writeTimeout;
    }
}
