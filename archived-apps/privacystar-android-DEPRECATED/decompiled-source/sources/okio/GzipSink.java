package okio;

import java.io.IOException;
import java.util.zip.CRC32;
import java.util.zip.Deflater;
/* loaded from: classes2-dex2jar.jar:okio/GzipSink.class */
public final class GzipSink implements Sink {
    private boolean closed;
    private final CRC32 crc = new CRC32();
    private final Deflater deflater;
    private final DeflaterSink deflaterSink;
    private final BufferedSink sink;

    public GzipSink(Sink sink) {
        if (sink == null) {
            throw new IllegalArgumentException("sink == null");
        }
        this.deflater = new Deflater(-1, true);
        this.sink = Okio.buffer(sink);
        this.deflaterSink = new DeflaterSink(this.sink, this.deflater);
        writeHeader();
    }

    private void updateCrc(Buffer buffer, long j) {
        Segment segment = buffer.head;
        while (j > 0) {
            int min = (int) Math.min(j, segment.limit - segment.pos);
            this.crc.update(segment.data, segment.pos, min);
            j -= min;
            segment = segment.next;
        }
    }

    private void writeFooter() throws IOException {
        this.sink.writeIntLe((int) this.crc.getValue());
        this.sink.writeIntLe((int) this.deflater.getBytesRead());
    }

    private void writeHeader() {
        Buffer buffer = this.sink.buffer();
        buffer.writeShort(8075);
        buffer.writeByte(8);
        buffer.writeByte(0);
        buffer.writeInt(0);
        buffer.writeByte(0);
        buffer.writeByte(0);
    }

    @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        Throwable th;
        Throwable th2;
        if (!this.closed) {
            Throwable th3 = null;
            try {
                this.deflaterSink.finishDeflate();
                writeFooter();
            } catch (Throwable th4) {
                th3 = th4;
            }
            try {
                this.deflater.end();
                th = th3;
            } catch (Throwable th5) {
                th = th5;
                th = th3;
                if (th3 == null) {
                }
            }
            try {
                this.sink.close();
                th2 = th;
            } catch (Throwable th6) {
                th2 = th6;
                th2 = th;
                if (th == null) {
                }
            }
            this.closed = true;
            if (th2 != null) {
                Util.sneakyRethrow(th2);
            }
        }
    }

    public Deflater deflater() {
        return this.deflater;
    }

    @Override // okio.Sink, java.io.Flushable
    public void flush() throws IOException {
        this.deflaterSink.flush();
    }

    @Override // okio.Sink
    public Timeout timeout() {
        return this.sink.timeout();
    }

    @Override // okio.Sink
    public void write(Buffer buffer, long j) throws IOException {
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j);
        } else if (i != 0) {
            updateCrc(buffer, j);
            this.deflaterSink.write(buffer, j);
        }
    }
}
