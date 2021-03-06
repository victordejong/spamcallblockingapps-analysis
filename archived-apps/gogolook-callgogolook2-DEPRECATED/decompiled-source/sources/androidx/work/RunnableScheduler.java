package androidx.work;

import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
/* loaded from: classes-dex2jar.jar:androidx/work/RunnableScheduler.class */
public interface RunnableScheduler {
    void cancel(@NonNull Runnable runnable);

    void scheduleWithDelay(@IntRange(from = 0) long j, @NonNull Runnable runnable);
}
