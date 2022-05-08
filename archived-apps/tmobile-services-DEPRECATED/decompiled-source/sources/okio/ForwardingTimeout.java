package okio;

import java.io.IOException;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0016\u0018��2\u00020\u0001B\u000f\u0012\u0006\u0010\f\u001a\u00020\u0001¢\u0006\u0004\b\u0019\u0010\u0018J\u000f\u0010\u0002\u001a\u00020\u0001H\u0016¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0004\u001a\u00020\u0001H\u0016¢\u0006\u0004\b\u0004\u0010\u0003J\u000f\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J\u0017\u0010\u0006\u001a\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0006\u0010\bJ\u000f\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u0015\u0010\r\u001a\u00020��2\u0006\u0010\f\u001a\u00020\u0001¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u001f\u0010\u0012\u001a\u00020\u00012\u0006\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u0012\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0016\u0010\u0007R\"\u0010\f\u001a\u00020\u00018\u0007@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\f\u0010\u0017\u001a\u0004\b\f\u0010\u0003\"\u0004\b\r\u0010\u0018¨\u0006\u001a"}, d2 = {"Lokio/ForwardingTimeout;", "Lokio/Timeout;", "clearDeadline", "()Lokio/Timeout;", "clearTimeout", "", "deadlineNanoTime", "()J", "(J)Lokio/Timeout;", "", "hasDeadline", "()Z", "delegate", "setDelegate", "(Lokio/Timeout;)Lokio/ForwardingTimeout;", "", "throwIfReached", "()V", "timeout", "Ljava/util/concurrent/TimeUnit;", "unit", "(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;", "timeoutNanos", "Lokio/Timeout;", "(Lokio/Timeout;)V", "<init>", "okio"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:okio/ForwardingTimeout.class */
public class ForwardingTimeout extends Timeout {
    @NotNull

    /* renamed from: a */
    private Timeout f24144a;

    public ForwardingTimeout(@NotNull Timeout delegate) {
        Intrinsics.m1830e(delegate, "delegate");
        this.f24144a = delegate;
    }

    @JvmName
    @NotNull
    /* renamed from: a */
    public final Timeout m157a() {
        return this.f24144a;
    }

    @NotNull
    /* renamed from: b */
    public final ForwardingTimeout m156b(@NotNull Timeout delegate) {
        Intrinsics.m1830e(delegate, "delegate");
        this.f24144a = delegate;
        return this;
    }

    @Override // okio.Timeout
    @NotNull
    public Timeout clearDeadline() {
        return this.f24144a.clearDeadline();
    }

    @Override // okio.Timeout
    @NotNull
    public Timeout clearTimeout() {
        return this.f24144a.clearTimeout();
    }

    @Override // okio.Timeout
    public long deadlineNanoTime() {
        return this.f24144a.deadlineNanoTime();
    }

    @Override // okio.Timeout
    @NotNull
    public Timeout deadlineNanoTime(long j) {
        return this.f24144a.deadlineNanoTime(j);
    }

    @Override // okio.Timeout
    public boolean hasDeadline() {
        return this.f24144a.hasDeadline();
    }

    @Override // okio.Timeout
    public void throwIfReached() throws IOException {
        this.f24144a.throwIfReached();
    }

    @Override // okio.Timeout
    @NotNull
    public Timeout timeout(long j, @NotNull TimeUnit unit) {
        Intrinsics.m1830e(unit, "unit");
        return this.f24144a.timeout(j, unit);
    }

    @Override // okio.Timeout
    public long timeoutNanos() {
        return this.f24144a.timeoutNanos();
    }
}
