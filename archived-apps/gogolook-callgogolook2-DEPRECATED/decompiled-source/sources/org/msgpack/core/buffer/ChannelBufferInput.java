package org.msgpack.core.buffer;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.ReadableByteChannel;
import org.msgpack.core.Preconditions;
/* loaded from: classes3-dex2jar.jar:org/msgpack/core/buffer/ChannelBufferInput.class */
public class ChannelBufferInput implements MessageBufferInput {
    public final MessageBuffer buffer;
    public ReadableByteChannel channel;

    public ChannelBufferInput(ReadableByteChannel readableByteChannel) {
        this(readableByteChannel, 8192);
    }

    public ChannelBufferInput(ReadableByteChannel readableByteChannel, int i) {
        this.channel = (ReadableByteChannel) Preconditions.checkNotNull(readableByteChannel, "input channel is null");
        boolean z = i > 0;
        Preconditions.checkArgument(z, "buffer size must be > 0: " + i);
        this.buffer = MessageBuffer.allocate(i);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.channel.close();
    }

    @Override // org.msgpack.core.buffer.MessageBufferInput
    public MessageBuffer next() throws IOException {
        ByteBuffer sliceAsByteBuffer = this.buffer.sliceAsByteBuffer();
        while (sliceAsByteBuffer.remaining() > 0 && this.channel.read(sliceAsByteBuffer) != -1) {
        }
        sliceAsByteBuffer.flip();
        return sliceAsByteBuffer.remaining() == 0 ? null : this.buffer.slice(0, sliceAsByteBuffer.limit());
    }

    public ReadableByteChannel reset(ReadableByteChannel readableByteChannel) throws IOException {
        ReadableByteChannel readableByteChannel2 = this.channel;
        this.channel = readableByteChannel;
        return readableByteChannel2;
    }
}
