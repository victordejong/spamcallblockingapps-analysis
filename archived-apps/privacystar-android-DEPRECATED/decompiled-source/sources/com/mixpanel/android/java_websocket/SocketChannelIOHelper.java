package com.mixpanel.android.java_websocket;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;
/* loaded from: classes-dex2jar.jar:com/mixpanel/android/java_websocket/SocketChannelIOHelper.class */
public class SocketChannelIOHelper {
    /* JADX WARN: Removed duplicated region for block: B:33:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0087 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean batch(com.mixpanel.android.java_websocket.WebSocketImpl r3, java.nio.channels.ByteChannel r4) throws java.io.IOException {
        /*
            r0 = r3
            java.util.concurrent.BlockingQueue<java.nio.ByteBuffer> r0 = r0.outQueue
            java.lang.Object r0 = r0.peek()
            java.nio.ByteBuffer r0 = (java.nio.ByteBuffer) r0
            r5 = r0
            r0 = r5
            r6 = r0
            r0 = r5
            if (r0 != 0) goto L_0x0035
            r0 = r4
            boolean r0 = r0 instanceof com.mixpanel.android.java_websocket.WrappedByteChannel
            if (r0 == 0) goto L_0x0063
            r0 = r4
            com.mixpanel.android.java_websocket.WrappedByteChannel r0 = (com.mixpanel.android.java_websocket.WrappedByteChannel) r0
            r5 = r0
            r0 = r5
            r6 = r0
            r0 = r5
            boolean r0 = r0.isNeedWrite()
            if (r0 == 0) goto L_0x0065
            r0 = r5
            r0.writeMore()
            r0 = r5
            r6 = r0
            goto L_0x0065
        L_0x0035:
            r0 = r4
            r1 = r6
            int r0 = r0.write(r1)
            r0 = r6
            int r0 = r0.remaining()
            if (r0 <= 0) goto L_0x0046
            r0 = 0
            return r0
        L_0x0046:
            r0 = r3
            java.util.concurrent.BlockingQueue<java.nio.ByteBuffer> r0 = r0.outQueue
            java.lang.Object r0 = r0.poll()
            r0 = r3
            java.util.concurrent.BlockingQueue<java.nio.ByteBuffer> r0 = r0.outQueue
            java.lang.Object r0 = r0.peek()
            java.nio.ByteBuffer r0 = (java.nio.ByteBuffer) r0
            r5 = r0
            r0 = r5
            r6 = r0
            r0 = r5
            if (r0 != 0) goto L_0x0035
        L_0x0063:
            r0 = 0
            r6 = r0
        L_0x0065:
            r0 = r3
            java.util.concurrent.BlockingQueue<java.nio.ByteBuffer> r0 = r0.outQueue
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L_0x0095
            r0 = r3
            boolean r0 = r0.isFlushAndClose()
            if (r0 == 0) goto L_0x0095
            r0 = r3
            com.mixpanel.android.java_websocket.drafts.Draft r0 = r0.getDraft()
            com.mixpanel.android.java_websocket.WebSocket$Role r0 = r0.getRole()
            com.mixpanel.android.java_websocket.WebSocket$Role r1 = com.mixpanel.android.java_websocket.WebSocket.Role.SERVER
            if (r0 != r1) goto L_0x0095
            r0 = r3
            monitor-enter(r0)
            r0 = r3
            r0.closeConnection()     // Catch: all -> 0x0090
            r0 = r3
            monitor-exit(r0)     // Catch: all -> 0x0090
            goto L_0x0095
        L_0x0090:
            r4 = move-exception
            r0 = r3
            monitor-exit(r0)     // Catch: all -> 0x0090
            r0 = r4
            throw r0
        L_0x0095:
            r0 = 1
            r7 = r0
            r0 = r7
            r8 = r0
            r0 = r6
            if (r0 == 0) goto L_0x00b6
            r0 = r4
            com.mixpanel.android.java_websocket.WrappedByteChannel r0 = (com.mixpanel.android.java_websocket.WrappedByteChannel) r0
            boolean r0 = r0.isNeedWrite()
            if (r0 != 0) goto L_0x00b3
            r0 = r7
            r8 = r0
            goto L_0x00b6
        L_0x00b3:
            r0 = 0
            r8 = r0
        L_0x00b6:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mixpanel.android.java_websocket.SocketChannelIOHelper.batch(com.mixpanel.android.java_websocket.WebSocketImpl, java.nio.channels.ByteChannel):boolean");
    }

    public static boolean read(ByteBuffer byteBuffer, WebSocketImpl webSocketImpl, ByteChannel byteChannel) throws IOException {
        byteBuffer.clear();
        int read = byteChannel.read(byteBuffer);
        byteBuffer.flip();
        boolean z = false;
        if (read == -1) {
            webSocketImpl.eot();
            return false;
        }
        if (read != 0) {
            z = true;
        }
        return z;
    }

    public static boolean readMore(ByteBuffer byteBuffer, WebSocketImpl webSocketImpl, WrappedByteChannel wrappedByteChannel) throws IOException {
        byteBuffer.clear();
        int readMore = wrappedByteChannel.readMore(byteBuffer);
        byteBuffer.flip();
        if (readMore != -1) {
            return wrappedByteChannel.isNeedRead();
        }
        webSocketImpl.eot();
        return false;
    }
}
