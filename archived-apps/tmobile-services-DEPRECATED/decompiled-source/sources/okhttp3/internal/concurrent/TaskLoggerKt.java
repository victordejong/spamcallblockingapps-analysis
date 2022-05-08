package okhttp3.internal.concurrent;

import java.util.Arrays;
import java.util.logging.Level;
import java.util.logging.Logger;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import okhttp3.internal.http2.Http2Connection;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��,\n\u0002\u0010\t\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\u001a\u0015\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020��¢\u0006\u0004\b\u0003\u0010\u0004\u001a'\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u000b\u0010\f\u001a7\u0010\u0010\u001a\u00028��\"\u0004\b��\u0010\r2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u00072\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028��0\u000eH\u0080\bø\u0001��¢\u0006\u0004\b\u0010\u0010\u0011\u001a1\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u00072\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00020\u000eH\u0080\bø\u0001��¢\u0006\u0004\b\u0013\u0010\u0014\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u0015"}, d2 = {"", "ns", "", "formatDuration", "(J)Ljava/lang/String;", "Lokhttp3/internal/concurrent/Task;", "task", "Lokhttp3/internal/concurrent/TaskQueue;", "queue", "message", "", "log", "(Lokhttp3/internal/concurrent/Task;Lokhttp3/internal/concurrent/TaskQueue;Ljava/lang/String;)V", "T", "Lkotlin/Function0;", "block", "logElapsed", "(Lokhttp3/internal/concurrent/Task;Lokhttp3/internal/concurrent/TaskQueue;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "messageBlock", "taskLog", "(Lokhttp3/internal/concurrent/Task;Lokhttp3/internal/concurrent/TaskQueue;Lkotlin/Function0;)V", "okhttp"}, k = 2, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:okhttp3/internal/concurrent/TaskLoggerKt.class */
public final class TaskLoggerKt {
    public static final /* synthetic */ void access$log(Task task, TaskQueue taskQueue, String str) {
        log(task, taskQueue, str);
    }

    @NotNull
    public static final String formatDuration(long j) {
        String str;
        if (j <= -999500000) {
            str = ((j - 500000000) / ((long) Http2Connection.DEGRADED_PONG_TIMEOUT_NS)) + " s ";
        } else if (j <= -999500) {
            str = ((j - 500000) / 1000000) + " ms";
        } else if (j <= 0) {
            str = ((j - 500) / 1000) + " µs";
        } else if (j < 999500) {
            str = ((j + 500) / 1000) + " µs";
        } else if (j < 999500000) {
            str = ((j + 500000) / 1000000) + " ms";
        } else {
            str = ((j + 500000000) / ((long) Http2Connection.DEGRADED_PONG_TIMEOUT_NS)) + " s ";
        }
        StringCompanionObject stringCompanionObject = StringCompanionObject.f20754a;
        String format = String.format("%6s", Arrays.copyOf(new Object[]{str}, 1));
        Intrinsics.m1831d(format, "java.lang.String.format(format, *args)");
        return format;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void log(Task task, TaskQueue taskQueue, String str) {
        Logger logger = TaskRunner.Companion.getLogger();
        StringBuilder sb = new StringBuilder();
        sb.append(taskQueue.getName$okhttp());
        sb.append(' ');
        StringCompanionObject stringCompanionObject = StringCompanionObject.f20754a;
        String format = String.format("%-22s", Arrays.copyOf(new Object[]{str}, 1));
        Intrinsics.m1831d(format, "java.lang.String.format(format, *args)");
        sb.append(format);
        sb.append(": ");
        sb.append(task.getName());
        logger.fine(sb.toString());
    }

    public static final <T> T logElapsed(@NotNull Task task, @NotNull TaskQueue queue, @NotNull Function0<? extends T> block) {
        long j;
        Intrinsics.m1830e(task, "task");
        Intrinsics.m1830e(queue, "queue");
        Intrinsics.m1830e(block, "block");
        boolean isLoggable = TaskRunner.Companion.getLogger().isLoggable(Level.FINE);
        if (isLoggable) {
            j = queue.getTaskRunner$okhttp().getBackend().nanoTime();
            log(task, queue, "starting");
        } else {
            j = -1;
        }
        try {
            T t = (T) block.invoke();
            InlineMarker.m1836b(1);
            if (isLoggable) {
                long nanoTime = queue.getTaskRunner$okhttp().getBackend().nanoTime();
                log(task, queue, "finished run in " + formatDuration(nanoTime - j));
            }
            InlineMarker.m1837a(1);
            return t;
        } catch (Throwable th) {
            InlineMarker.m1836b(1);
            if (isLoggable) {
                long nanoTime2 = queue.getTaskRunner$okhttp().getBackend().nanoTime();
                log(task, queue, "failed a run in " + formatDuration(nanoTime2 - j));
            }
            InlineMarker.m1837a(1);
            throw th;
        }
    }

    public static final void taskLog(@NotNull Task task, @NotNull TaskQueue queue, @NotNull Function0<String> messageBlock) {
        Intrinsics.m1830e(task, "task");
        Intrinsics.m1830e(queue, "queue");
        Intrinsics.m1830e(messageBlock, "messageBlock");
        if (TaskRunner.Companion.getLogger().isLoggable(Level.FINE)) {
            log(task, queue, messageBlock.invoke());
        }
    }
}
