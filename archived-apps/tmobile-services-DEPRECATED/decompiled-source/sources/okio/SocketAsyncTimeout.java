package okio;

import java.io.IOException;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.util.logging.Level;
import java.util.logging.Logger;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0002\u0018��2\u00020\u0001B\u000f\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\f\u0010\rJ\u0019\u0010\u0004\u001a\u00020\u00022\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\u0007\u0010\bR\u0016\u0010\n\u001a\u00020\t8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000b¨\u0006\u000e"}, d2 = {"Lokio/SocketAsyncTimeout;", "Lokio/AsyncTimeout;", "Ljava/io/IOException;", "cause", "newTimeoutException", "(Ljava/io/IOException;)Ljava/io/IOException;", "", "timedOut", "()V", "Ljava/net/Socket;", "socket", "Ljava/net/Socket;", "<init>", "(Ljava/net/Socket;)V", "okio"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:okio/SocketAsyncTimeout.class */
public final class SocketAsyncTimeout extends AsyncTimeout {

    /* renamed from: a */
    private final Socket f24210a;

    public SocketAsyncTimeout(@NotNull Socket socket) {
        Intrinsics.m1830e(socket, "socket");
        this.f24210a = socket;
    }

    @Override // okio.AsyncTimeout
    @NotNull
    protected IOException newTimeoutException(@Nullable IOException iOException) {
        SocketTimeoutException socketTimeoutException = new SocketTimeoutException("timeout");
        if (iOException != null) {
            socketTimeoutException.initCause(iOException);
        }
        return socketTimeoutException;
    }

    @Override // okio.AsyncTimeout
    protected void timedOut() {
        Logger logger;
        Logger logger2;
        try {
            this.f24210a.close();
        } catch (AssertionError e) {
            if (Okio.m142e(e)) {
                logger2 = Okio__JvmOkioKt.f24165a;
                Level level = Level.WARNING;
                logger2.log(level, "Failed to close timed out socket " + this.f24210a, (Throwable) e);
                return;
            }
            throw e;
        } catch (Exception e2) {
            logger = Okio__JvmOkioKt.f24165a;
            Level level2 = Level.WARNING;
            logger.log(level2, "Failed to close timed out socket " + this.f24210a, (Throwable) e2);
        }
    }
}
