package android.support.p001v4.p003os;
/* renamed from: android.support.v4.os.OperationCanceledException */
/* loaded from: classes-dex2jar.jar:android/support/v4/os/OperationCanceledException.class */
public class OperationCanceledException extends RuntimeException {
    public OperationCanceledException() {
        this(null);
    }

    public OperationCanceledException(String str) {
        super(str == null ? "The operation has been canceled." : str);
    }
}
