package androidx.work.impl.utils;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.arch.core.util.Function;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MediatorLiveData;
import androidx.lifecycle.Observer;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/LiveDataUtils.class */
public class LiveDataUtils {

    /* renamed from: androidx.work.impl.utils.LiveDataUtils$1 */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/LiveDataUtils$1.class */
    public class C12811 implements Observer<In> {
        public Out mCurrentOutput = null;
        public final /* synthetic */ Object val$lock;
        public final /* synthetic */ Function val$mappingMethod;
        public final /* synthetic */ MediatorLiveData val$outputLiveData;
        public final /* synthetic */ TaskExecutor val$workTaskExecutor;

        public C12811(TaskExecutor taskExecutor, Object obj, Function function, MediatorLiveData mediatorLiveData) {
            this.val$workTaskExecutor = taskExecutor;
            this.val$lock = obj;
            this.val$mappingMethod = function;
            this.val$outputLiveData = mediatorLiveData;
        }

        @Override // androidx.lifecycle.Observer
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
                        androidx.work.impl.utils.LiveDataUtils$1 r0 = androidx.work.impl.utils.LiveDataUtils.C12811.this
                        java.lang.Object r0 = r0.val$lock
                        r4 = r0
                        r0 = r4
                        monitor-enter(r0)
                        r0 = r3
                        androidx.work.impl.utils.LiveDataUtils$1 r0 = androidx.work.impl.utils.LiveDataUtils.C12811.this     // Catch: all -> 0x006d
                        androidx.arch.core.util.Function r0 = r0.val$mappingMethod     // Catch: all -> 0x006d
                        r1 = r3
                        java.lang.Object r1 = r5     // Catch: all -> 0x006d
                        java.lang.Object r0 = r0.apply(r1)     // Catch: all -> 0x006d
                        r5 = r0
                        r0 = r3
                        androidx.work.impl.utils.LiveDataUtils$1 r0 = androidx.work.impl.utils.LiveDataUtils.C12811.this     // Catch: all -> 0x006d
                        Out r0 = r0.mCurrentOutput     // Catch: all -> 0x006d
                        if (r0 != 0) goto L_0x003f
                        r0 = r5
                        if (r0 == 0) goto L_0x003f
                        r0 = r3
                        androidx.work.impl.utils.LiveDataUtils$1 r0 = androidx.work.impl.utils.LiveDataUtils.C12811.this     // Catch: all -> 0x006d
                        r1 = r5
                        r0.mCurrentOutput = r1     // Catch: all -> 0x006d
                        r0 = r3
                        androidx.work.impl.utils.LiveDataUtils$1 r0 = androidx.work.impl.utils.LiveDataUtils.C12811.this     // Catch: all -> 0x006d
                        androidx.lifecycle.MediatorLiveData r0 = r0.val$outputLiveData     // Catch: all -> 0x006d
                        r1 = r5
                        r0.postValue(r1)     // Catch: all -> 0x006d
                        goto L_0x006a
                    L_0x003f:
                        r0 = r3
                        androidx.work.impl.utils.LiveDataUtils$1 r0 = androidx.work.impl.utils.LiveDataUtils.C12811.this     // Catch: all -> 0x006d
                        Out r0 = r0.mCurrentOutput     // Catch: all -> 0x006d
                        if (r0 == 0) goto L_0x006a
                        r0 = r3
                        androidx.work.impl.utils.LiveDataUtils$1 r0 = androidx.work.impl.utils.LiveDataUtils.C12811.this     // Catch: all -> 0x006d
                        Out r0 = r0.mCurrentOutput     // Catch: all -> 0x006d
                        r1 = r5
                        boolean r0 = r0.equals(r1)     // Catch: all -> 0x006d
                        if (r0 != 0) goto L_0x006a
                        r0 = r3
                        androidx.work.impl.utils.LiveDataUtils$1 r0 = androidx.work.impl.utils.LiveDataUtils.C12811.this     // Catch: all -> 0x006d
                        r1 = r5
                        r0.mCurrentOutput = r1     // Catch: all -> 0x006d
                        r0 = r3
                        androidx.work.impl.utils.LiveDataUtils$1 r0 = androidx.work.impl.utils.LiveDataUtils.C12811.this     // Catch: all -> 0x006d
                        androidx.lifecycle.MediatorLiveData r0 = r0.val$outputLiveData     // Catch: all -> 0x006d
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
                    throw new UnsupportedOperationException("Method not decompiled: androidx.work.impl.utils.LiveDataUtils.C12811.RunnableC12821.run():void");
                }
            });
        }
    }

    public static <In, Out> LiveData<Out> dedupedMappedLiveDataFor(@NonNull LiveData<In> liveData, @NonNull Function<In, Out> function, @NonNull TaskExecutor taskExecutor) {
        Object obj = new Object();
        MediatorLiveData mediatorLiveData = new MediatorLiveData();
        mediatorLiveData.addSource(liveData, new C12811(taskExecutor, obj, function, mediatorLiveData));
        return mediatorLiveData;
    }
}
