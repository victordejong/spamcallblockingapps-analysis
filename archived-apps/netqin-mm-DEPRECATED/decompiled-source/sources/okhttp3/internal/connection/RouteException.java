package okhttp3.internal.connection;

import java.io.IOException;
import p599h.p600d0.C10109c;
/* loaded from: classes2-dex2jar.jar:okhttp3/internal/connection/RouteException.class */
public final class RouteException extends RuntimeException {
    public IOException firstException;
    public IOException lastException;

    public RouteException(IOException iOException) {
        super(iOException);
        this.firstException = iOException;
        this.lastException = iOException;
    }

    public void addConnectException(IOException iOException) {
        C10109c.m1451a((Throwable) this.firstException, (Throwable) iOException);
        this.lastException = iOException;
    }

    public IOException getFirstConnectException() {
        return this.firstException;
    }

    public IOException getLastConnectException() {
        return this.lastException;
    }
}
