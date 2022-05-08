package androidx.work.impl.utils;

import android.arch.core.util.Function;
import android.arch.lifecycle.LiveData;
import android.arch.lifecycle.MediatorLiveData;
import android.arch.lifecycle.Observer;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/LiveDataUtils.class */
public class LiveDataUtils {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.work.impl.utils.LiveDataUtils$1 */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/LiveDataUtils$1.class */
    public static final class C06581 implements Observer<In> {
        Out mCurrentOutput = null;
        final /* synthetic */ Object val$lock;
        final /* synthetic */ Function val$mappingMethod;
        final /* synthetic */ MediatorLiveData val$outputLiveData;
        final /* synthetic */ TaskExecutor val$workTaskExecutor;

        C06581(TaskExecutor taskExecutor, Object obj, Function function, MediatorLiveData mediatorLiveData) {
            this.val$workTaskExecutor = taskExecutor;
            this.val$lock = obj;
            this.val$mappingMethod = function;
            this.val$outputLiveData = mediatorLiveData;
        }

        @Override // android.arch.lifecycle.Observer
        public void onChanged(@Nullable final In in) {
            this.val$workTaskExecutor.executeOnBackgroundThread(new Runnable() { // from class: androidx.work.impl.utils.LiveDataUtils.1.1
                /* JADX WARN: Multi-variable type inference failed */
                /* JADX WARN: Type inference failed for: r0v9, types: [java.lang.Object, Out] */
                /* JADX WARN: Unknown variable types count: 1 */
                @Override // java.lang.Runnable
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public void run() {
                    /*
                        r3 = this;
                        r0 = r3
                        androidx.work.impl.utils.LiveDataUtils$1 r0 = androidx.work.impl.utils.LiveDataUtils.C06581.this
                        java.lang.Object r0 = r0.val$lock
                        r4 = r0
                        r0 = r4
                        monitor-enter(r0)
                        r0 = r3
                        androidx.work.impl.utils.LiveDataUtils$1 r0 = androidx.work.impl.utils.LiveDataUtils.C06581.this     // Catch: all -> 0x006d
                        android.arch.core.util.Function r0 = r0.val$mappingMethod     // Catch: all -> 0x006d
                        r1 = r3
                        java.lang.Object r1 = r5     // Catch: all -> 0x006d
                        java.lang.Object r0 = r0.apply(r1)     // Catch: all -> 0x006d
                        r5 = r0
                        r0 = r3
                        androidx.work.impl.utils.LiveDataUtils$1 r0 = androidx.work.impl.utils.LiveDataUtils.C06581.this     // Catch: all -> 0x006d
                        Out r0 = r0.mCurrentOutput     // Catch: all -> 0x006d
                        if (r0 != 0) goto L_0x003f
                        r0 = r5
                        if (r0 == 0) goto L_0x003f
                        r0 = r3
                        androidx.work.impl.utils.LiveDataUtils$1 r0 = androidx.work.impl.utils.LiveDataUtils.C06581.this     // Catch: all -> 0x006d
                        r1 = r5
                        r0.mCurrentOutput = r1     // Catch: all -> 0x006d
                        r0 = r3
                        androidx.work.impl.utils.LiveDataUtils$1 r0 = androidx.work.impl.utils.LiveDataUtils.C06581.this     // Catch: all -> 0x006d
                        android.arch.lifecycle.MediatorLiveData r0 = r0.val$outputLiveData     // Catch: all -> 0x006d
                        r1 = r5
                        r0.postValue(r1)     // Catch: all -> 0x006d
                        goto L_0x006a
                    L_0x003f:
                        r0 = r3
                        androidx.work.impl.utils.LiveDataUtils$1 r0 = androidx.work.impl.utils.LiveDataUtils.C06581.this     // Catch: all -> 0x006d
                        Out r0 = r0.mCurrentOutput     // Catch: all -> 0x006d
                        if (r0 == 0) goto L_0x006a
                        r0 = r3
                        androidx.work.impl.utils.LiveDataUtils$1 r0 = androidx.work.impl.utils.LiveDataUtils.C06581.this     // Catch: all -> 0x006d
                        Out r0 = r0.mCurrentOutput     // Catch: all -> 0x006d
                        r1 = r5
                        boolean r0 = r0.equals(r1)     // Catch: all -> 0x006d
                        if (r0 != 0) goto L_0x006a
                        r0 = r3
                        androidx.work.impl.utils.LiveDataUtils$1 r0 = androidx.work.impl.utils.LiveDataUtils.C06581.this     // Catch: all -> 0x006d
                        r1 = r5
                        r0.mCurrentOutput = r1     // Catch: all -> 0x006d
                        r0 = r3
                        androidx.work.impl.utils.LiveDataUtils$1 r0 = androidx.work.impl.utils.LiveDataUtils.C06581.this     // Catch: all -> 0x006d
                        android.arch.lifecycle.MediatorLiveData r0 = r0.val$outputLiveData     // Catch: all -> 0x006d
                        r1 = r5
                        r0.postValue(r1)     // Catch: all -> 0x006d
                    L_0x006a:
                        r0 = r4
                        monitor-exit(r0)     // Catch: all -> 0x006d
                        return
                    L_0x006d:
                        r5 = move-exception
                        r0 = r4
                        monitor-exit(r0)     // Catch: all -> 0x006d
                        r0 = r5
                        throw r0
                    */
                    throw new UnsupportedOperationException("Method not decompiled: androidx.work.impl.utils.LiveDataUtils.C06581.RunnableC06591.run():void");
                }
            });
        }
    }

    private LiveDataUtils() {
    }

    public static <In, Out> LiveData<Out> dedupedMappedLiveDataFor(@NonNull LiveData<In> liveData, @NonNull Function<In, Out> function, @NonNull TaskExecutor taskExecutor) {
        Object obj = new Object();
        MediatorLiveData mediatorLiveData = new MediatorLiveData();
        mediatorLiveData.addSource(liveData, new C06581(taskExecutor, obj, function, mediatorLiveData));
        return mediatorLiveData;
    }
}
