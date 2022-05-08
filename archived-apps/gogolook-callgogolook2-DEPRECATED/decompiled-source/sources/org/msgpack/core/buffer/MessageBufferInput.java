package org.msgpack.core.buffer;

import java.io.Closeable;
import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:org/msgpack/core/buffer/MessageBufferInput.class */
public interface MessageBufferInput extends Closeable {
    MessageBuffer next() throws IOException;
}
