package kotlinx.coroutines;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��4\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b`\u0018��2\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H&¢\u0006\u0004\b\u0005\u0010\u0004J\u001f\u0010\n\u001a\u00020\t2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u0002H&¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\f\u001a\u00020\tH&¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000e\u001a\u00020\tH&¢\u0006\u0004\b\u000e\u0010\rJ\u000f\u0010\u000f\u001a\u00020\tH&¢\u0006\u0004\b\u000f\u0010\rJ\u0017\u0010\u0012\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\u0010H&¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\tH&¢\u0006\u0004\b\u0014\u0010\rJ\u001f\u0010\u0018\u001a\u00060\u0015j\u0002`\u00162\n\u0010\u0017\u001a\u00060\u0015j\u0002`\u0016H&¢\u0006\u0004\b\u0018\u0010\u0019¨\u0006\u001a"}, d2 = {"Lkotlinx/coroutines/TimeSource;", "Lkotlin/Any;", "", "currentTimeMillis", "()J", "nanoTime", "", "blocker", "nanos", "", "parkNanos", "(Ljava/lang/Object;J)V", "registerTimeLoopThread", "()V", "trackTask", "unTrackTask", "Ljava/lang/Thread;", "thread", "unpark", "(Ljava/lang/Thread;)V", "unregisterTimeLoopThread", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "block", "wrapTask", "(Ljava/lang/Runnable;)Ljava/lang/Runnable;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/TimeSource.class */
public interface TimeSource {
    @NotNull
    /* renamed from: a */
    Runnable m1100a(@NotNull Runnable runnable);

    /* renamed from: b */
    void m1099b();

    /* renamed from: c */
    void m1098c();

    /* renamed from: d */
    void m1097d(@NotNull Thread thread);

    /* renamed from: e */
    void m1096e(@NotNull Object obj, long j);

    /* renamed from: f */
    void m1095f();

    /* renamed from: g */
    void m1094g();

    long nanoTime();
}
