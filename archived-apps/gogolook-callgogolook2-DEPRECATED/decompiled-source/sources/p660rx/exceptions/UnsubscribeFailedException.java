package p660rx.exceptions;
/* renamed from: rx.exceptions.UnsubscribeFailedException */
/* loaded from: classes3-dex2jar.jar:rx/exceptions/UnsubscribeFailedException.class */
public final class UnsubscribeFailedException extends RuntimeException {
    public UnsubscribeFailedException(String str, Throwable th) {
        super(str, th == null ? new NullPointerException() : th);
    }
}
