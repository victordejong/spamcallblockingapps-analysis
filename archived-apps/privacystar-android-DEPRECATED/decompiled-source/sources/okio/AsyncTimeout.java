package okio;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;
/* loaded from: classes2-dex2jar.jar:okio/AsyncTimeout.class */
public class AsyncTimeout extends Timeout {
    private static final long IDLE_TIMEOUT_MILLIS = TimeUnit.SECONDS.toMillis(60);
    private static final long IDLE_TIMEOUT_NANOS = TimeUnit.MILLISECONDS.toNanos(IDLE_TIMEOUT_MILLIS);
    private static final int TIMEOUT_WRITE_SIZE = 65536;
    @Nullable
    static AsyncTimeout head;
    private boolean inQueue;
    @Nullable
    private AsyncTimeout next;
    private long timeoutAt;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2-dex2jar.jar:okio/AsyncTimeout$Watchdog.class */
    public static final class Watchdog extends Thread {
        Watchdog() {
            super("Okio Watchdog");
            setDaemon(true);
        }

        /* JADX WARN: Code restructure failed: missing block: B:18:0x0024, code lost:
            r0.timedOut();
         */
        @Override // java.lang.Thread, java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void run() {
            /*
                r3 = this;
            L_0x0000:
                java.lang.Class<okio.AsyncTimeout> r0 = okio.AsyncTimeout.class
                monitor-enter(r0)     // Catch: InterruptedException -> 0x0030
                okio.AsyncTimeout r0 = okio.AsyncTimeout.awaitTimeout()     // Catch: all -> 0x002a, InterruptedException -> 0x0030
                r4 = r0
                r0 = r4
                if (r0 != 0) goto L_0x0011
                java.lang.Class<okio.AsyncTimeout> r0 = okio.AsyncTimeout.class
                monitor-exit(r0)     // Catch: all -> 0x002a
                goto L_0x0000
            L_0x0011:
                r0 = r4
                okio.AsyncTimeout r1 = okio.AsyncTimeout.head     // Catch: all -> 0x002a
                if (r0 != r1) goto L_0x0020
                r0 = 0
                okio.AsyncTimeout.head = r0     // Catch: all -> 0x002a
                java.lang.Class<okio.AsyncTimeout> r0 = okio.AsyncTimeout.class
                monitor-exit(r0)     // Catch: all -> 0x002a
                return
            L_0x0020:
                java.lang.Class<okio.AsyncTimeout> r0 = okio.AsyncTimeout.class
                monitor-exit(r0)     // Catch: all -> 0x002a
                r0 = r4
                r0.timedOut()     // Catch: InterruptedException -> 0x0030
                goto L_0x0000
            L_0x002a:
                r4 = move-exception
                java.lang.Class<okio.AsyncTimeout> r0 = okio.AsyncTimeout.class
                monitor-exit(r0)     // Catch: all -> 0x002a
                r0 = r4
                throw r0     // Catch: InterruptedException -> 0x0030
            L_0x0030:
                r4 = move-exception
                goto L_0x0000
            */
            throw new UnsupportedOperationException("Method not decompiled: okio.AsyncTimeout.Watchdog.run():void");
        }
    }

    @Nullable
    static AsyncTimeout awaitTimeout() throws InterruptedException {
        AsyncTimeout asyncTimeout = head.next;
        if (asyncTimeout == null) {
            long nanoTime = System.nanoTime();
            AsyncTimeout.class.wait(IDLE_TIMEOUT_MILLIS);
            AsyncTimeout asyncTimeout2 = null;
            if (head.next == null) {
                asyncTimeout2 = null;
                if (System.nanoTime() - nanoTime >= IDLE_TIMEOUT_NANOS) {
                    asyncTimeout2 = head;
                }
            }
            return asyncTimeout2;
        }
        long remainingNanos = asyncTimeout.remainingNanos(System.nanoTime());
        if (remainingNanos > 0) {
            long j = remainingNanos / 1000000;
            AsyncTimeout.class.wait(j, (int) (remainingNanos - (1000000 * j)));
            return null;
        }
        head.next = asyncTimeout.next;
        asyncTimeout.next = null;
        return asyncTimeout;
    }

    private static boolean cancelScheduledTimeout(AsyncTimeout asyncTimeout) {
        synchronized (AsyncTimeout.class) {
            try {
                for (AsyncTimeout asyncTimeout2 = head; asyncTimeout2 != null; asyncTimeout2 = asyncTimeout2.next) {
                    if (asyncTimeout2.next == asyncTimeout) {
                        asyncTimeout2.next = asyncTimeout.next;
                        asyncTimeout.next = null;
                        return false;
                    }
                }
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private long remainingNanos(long j) {
        return this.timeoutAt - j;
    }

    private static void scheduleTimeout(AsyncTimeout asyncTimeout, long j, boolean z) {
        synchronized (AsyncTimeout.class) {
            try {
                if (head == null) {
                    head = new AsyncTimeout();
                    new Watchdog().start();
                }
                long nanoTime = System.nanoTime();
                int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
                if (i != 0 && z) {
                    asyncTimeout.timeoutAt = Math.min(j, asyncTimeout.deadlineNanoTime() - nanoTime) + nanoTime;
                } else if (i != 0) {
                    asyncTimeout.timeoutAt = j + nanoTime;
                } else if (z) {
                    asyncTimeout.timeoutAt = asyncTimeout.deadlineNanoTime();
                } else {
                    throw new AssertionError();
                }
                long remainingNanos = asyncTimeout.remainingNanos(nanoTime);
                AsyncTimeout asyncTimeout2 = head;
                while (asyncTimeout2.next != null && remainingNanos >= asyncTimeout2.next.remainingNanos(nanoTime)) {
                    asyncTimeout2 = asyncTimeout2.next;
                }
                asyncTimeout.next = asyncTimeout2.next;
                asyncTimeout2.next = asyncTimeout;
                if (asyncTimeout2 == head) {
                    AsyncTimeout.class.notify();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void enter() {
        if (this.inQueue) {
            throw new IllegalStateException("Unbalanced enter/exit");
        }
        long timeoutNanos = timeoutNanos();
        boolean hasDeadline = hasDeadline();
        if (timeoutNanos != 0 || hasDeadline) {
            this.inQueue = true;
            scheduleTimeout(this, timeoutNanos, hasDeadline);
        }
    }

    final IOException exit(IOException iOException) throws IOException {
        return !exit() ? iOException : newTimeoutException(iOException);
    }

    final void exit(boolean z) throws IOException {
        if (exit() && z) {
            throw newTimeoutException(null);
        }
    }

    public final boolean exit() {
        if (!this.inQueue) {
            return false;
        }
        this.inQueue = false;
        return cancelScheduledTimeout(this);
    }

    protected IOException newTimeoutException(@Nullable IOException iOException) {
        InterruptedIOException interruptedIOException = new InterruptedIOException("timeout");
        if (iOException != null) {
            interruptedIOException.initCause(iOException);
        }
        return interruptedIOException;
    }

    public final Sink sink(final Sink sink) {
        return new Sink() { // from class: okio.AsyncTimeout.1
            @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
            public void close() throws IOException {
                AsyncTimeout.this.enter();
                try {
                    try {
                        sink.close();
                        AsyncTimeout.this.exit(true);
                    } catch (IOException e) {
                        throw AsyncTimeout.this.exit(e);
                    }
                } catch (Throwable th) {
                    AsyncTimeout.this.exit(false);
                    throw th;
                }
            }

            @Override // okio.Sink, java.io.Flushable
            public void flush() throws IOException {
                AsyncTimeout.this.enter();
                try {
                    try {
                        sink.flush();
                        AsyncTimeout.this.exit(true);
                    } catch (IOException e) {
                        throw AsyncTimeout.this.exit(e);
                    }
                } catch (Throwable th) {
                    AsyncTimeout.this.exit(false);
                    throw th;
                }
            }

            @Override // okio.Sink
            public Timeout timeout() {
                return AsyncTimeout.this;
            }

            public String toString() {
                return "AsyncTimeout.sink(" + sink + ")";
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r11v0 */
            /* JADX WARN: Type inference failed for: r11v1, types: [long] */
            /* JADX WARN: Type inference failed for: r11v3 */
            /* JADX WARN: Type inference failed for: r9v1, types: [long] */
            /* JADX WARN: Type inference failed for: r9v3 */
            /* JADX WARN: Type inference failed for: r9v4 */
            /* JADX WARN: Unknown variable types count: 2 */
            @Override // okio.Sink
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void write(okio.Buffer r8, long r9) throws java.io.IOException {
                /*
                    r7 = this;
                    r0 = r8
                    long r0 = r0.size
                    r1 = 0
                    r2 = r9
                    okio.Util.checkOffsetAndCount(r0, r1, r2)
                L_0x0009:
                    r0 = 0
                    r11 = r0
                    r0 = r9
                    r1 = 0
                    int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                    if (r0 <= 0) goto L_0x0088
                    r0 = r8
                    okio.Segment r0 = r0.head
                    r13 = r0
                L_0x0018:
                    r0 = r11
                    r14 = r0
                    r0 = r11
                    r1 = 65536(0x10000, double:3.2379E-319)
                    int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                    if (r0 >= 0) goto L_0x004d
                    r0 = r11
                    r1 = r13
                    int r1 = r1.limit
                    r2 = r13
                    int r2 = r2.pos
                    int r1 = r1 - r2
                    long r1 = (long) r1
                    long r0 = r0 + r1
                    r11 = r0
                    r0 = r11
                    r1 = r9
                    int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                    if (r0 < 0) goto L_0x0043
                    r0 = r9
                    r14 = r0
                    goto L_0x004d
                L_0x0043:
                    r0 = r13
                    okio.Segment r0 = r0.next
                    r13 = r0
                    goto L_0x0018
                L_0x004d:
                    r0 = r7
                    okio.AsyncTimeout r0 = okio.AsyncTimeout.this
                    r0.enter()
                    r0 = r7
                    okio.Sink r0 = r5     // Catch: all -> 0x0070, IOException -> 0x0074
                    r1 = r8
                    r2 = r14
                    r0.write(r1, r2)     // Catch: all -> 0x0070, IOException -> 0x0074
                    r0 = r9
                    r1 = r14
                    long r0 = r0 - r1
                    r9 = r0
                    r0 = r7
                    okio.AsyncTimeout r0 = okio.AsyncTimeout.this
                    r1 = 1
                    r0.exit(r1)
                    goto L_0x0009
                L_0x0070:
                    r8 = move-exception
                    goto L_0x007e
                L_0x0074:
                    r8 = move-exception
                    r0 = r7
                    okio.AsyncTimeout r0 = okio.AsyncTimeout.this     // Catch: all -> 0x0070
                    r1 = r8
                    java.io.IOException r0 = r0.exit(r1)     // Catch: all -> 0x0070
                    throw r0     // Catch: all -> 0x0070
                L_0x007e:
                    r0 = r7
                    okio.AsyncTimeout r0 = okio.AsyncTimeout.this
                    r1 = 0
                    r0.exit(r1)
                    r0 = r8
                    throw r0
                L_0x0088:
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: okio.AsyncTimeout.C20601.write(okio.Buffer, long):void");
            }
        };
    }

    public final Source source(final Source source) {
        return new Source() { // from class: okio.AsyncTimeout.2
            @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
            public void close() throws IOException {
                try {
                    try {
                        source.close();
                        AsyncTimeout.this.exit(true);
                    } catch (IOException e) {
                        throw AsyncTimeout.this.exit(e);
                    }
                } catch (Throwable th) {
                    AsyncTimeout.this.exit(false);
                    throw th;
                }
            }

            @Override // okio.Source
            public long read(Buffer buffer, long j) throws IOException {
                AsyncTimeout.this.enter();
                try {
                    try {
                        long read = source.read(buffer, j);
                        AsyncTimeout.this.exit(true);
                        return read;
                    } catch (IOException e) {
                        throw AsyncTimeout.this.exit(e);
                    }
                } catch (Throwable th) {
                    AsyncTimeout.this.exit(false);
                    throw th;
                }
            }

            @Override // okio.Source
            public Timeout timeout() {
                return AsyncTimeout.this;
            }

            public String toString() {
                return "AsyncTimeout.source(" + source + ")";
            }
        };
    }

    protected void timedOut() {
    }
}
