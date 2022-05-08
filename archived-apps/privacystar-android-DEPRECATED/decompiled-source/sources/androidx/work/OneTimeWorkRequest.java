package androidx.work;

import android.os.Build;
import android.support.annotation.NonNull;
import android.support.annotation.RequiresApi;
import androidx.work.WorkRequest;
import java.time.Duration;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:androidx/work/OneTimeWorkRequest.class */
public final class OneTimeWorkRequest extends WorkRequest {

    /* loaded from: classes-dex2jar.jar:androidx/work/OneTimeWorkRequest$Builder.class */
    public static final class Builder extends WorkRequest.Builder<Builder, OneTimeWorkRequest> {
        public Builder(@NonNull Class<? extends ListenableWorker> cls) {
            super(cls);
            this.mWorkSpec.inputMergerClassName = OverwritingInputMerger.class.getName();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.work.WorkRequest.Builder
        @NonNull
        public OneTimeWorkRequest buildInternal() {
            if (!this.mBackoffCriteriaSet || Build.VERSION.SDK_INT < 23 || !this.mWorkSpec.constraints.requiresDeviceIdle()) {
                return new OneTimeWorkRequest(this);
            }
            throw new IllegalArgumentException("Cannot set backoff criteria on an idle mode job");
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.work.WorkRequest.Builder
        @NonNull
        public Builder getThis() {
            return this;
        }

        @NonNull
        public Builder setInitialDelay(long j, @NonNull TimeUnit timeUnit) {
            this.mWorkSpec.initialDelay = timeUnit.toMillis(j);
            return this;
        }

        @NonNull
        @RequiresApi(26)
        public Builder setInitialDelay(@NonNull Duration duration) {
            this.mWorkSpec.initialDelay = duration.toMillis();
            return this;
        }

        @NonNull
        public Builder setInputMerger(@NonNull Class<? extends InputMerger> cls) {
            this.mWorkSpec.inputMergerClassName = cls.getName();
            return this;
        }
    }

    OneTimeWorkRequest(Builder builder) {
        super(builder.mId, builder.mWorkSpec, builder.mTags);
    }

    @NonNull
    public static OneTimeWorkRequest from(@NonNull Class<? extends ListenableWorker> cls) {
        return new Builder(cls).build();
    }

    @NonNull
    public static List<OneTimeWorkRequest> from(@NonNull List<Class<? extends ListenableWorker>> list) {
        ArrayList arrayList = new ArrayList(list.size());
        for (Class<? extends ListenableWorker> cls : list) {
            arrayList.add(new Builder(cls).build());
        }
        return arrayList;
    }
}
