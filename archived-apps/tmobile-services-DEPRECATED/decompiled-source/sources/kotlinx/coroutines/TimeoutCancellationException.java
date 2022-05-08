package kotlinx.coroutines;

import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018��2\u00020\u00012\u00020\u0002B\u0011\b\u0010\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bB\u001b\b��\u0012\u0006\u0010\t\u001a\u00020\b\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\n\u0010\fJ\u0011\u0010\u0003\u001a\u0004\u0018\u00010��H\u0016¢\u0006\u0004\b\u0003\u0010\u0004R\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00058��@\u0001X\u0081\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007¨\u0006\r"}, d2 = {"Lkotlinx/coroutines/TimeoutCancellationException;", "Lkotlinx/coroutines/CopyableThrowable;", "Ljava/util/concurrent/CancellationException;", "createCopy", "()Lkotlinx/coroutines/TimeoutCancellationException;", "Lkotlinx/coroutines/Job;", "coroutine", "Lkotlinx/coroutines/Job;", "", "message", "<init>", "(Ljava/lang/String;)V", "(Ljava/lang/String;Lkotlinx/coroutines/Job;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/TimeoutCancellationException.class */
public final class TimeoutCancellationException extends CancellationException implements CopyableThrowable<TimeoutCancellationException> {
    @JvmField
    @Nullable

    /* renamed from: f */
    public final Job f21255f;

    public TimeoutCancellationException(@NotNull String str, @Nullable Job job) {
        super(str);
        this.f21255f = job;
    }

    @Nullable
    /* renamed from: b */
    public TimeoutCancellationException mo1092a() {
        String message = getMessage();
        if (message == null) {
            message = "";
        }
        TimeoutCancellationException timeoutCancellationException = new TimeoutCancellationException(message, this.f21255f);
        timeoutCancellationException.initCause(this);
        return timeoutCancellationException;
    }
}
