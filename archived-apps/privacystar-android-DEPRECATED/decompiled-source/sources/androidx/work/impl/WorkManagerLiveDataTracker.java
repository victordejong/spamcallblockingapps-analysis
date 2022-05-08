package androidx.work.impl;

import android.arch.lifecycle.LiveData;
import android.arch.lifecycle.MediatorLiveData;
import android.arch.lifecycle.Observer;
import android.support.annotation.Nullable;
import android.support.annotation.VisibleForTesting;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/WorkManagerLiveDataTracker.class */
public class WorkManagerLiveDataTracker {
    @VisibleForTesting
    final Set<LiveData> mLiveDataSet = Collections.newSetFromMap(new IdentityHashMap());

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/WorkManagerLiveDataTracker$TrackedLiveData.class */
    public static class TrackedLiveData<T> extends MediatorLiveData<T> {
        private final WorkManagerLiveDataTracker mContainer;

        /* JADX WARN: Multi-variable type inference failed */
        TrackedLiveData(WorkManagerLiveDataTracker workManagerLiveDataTracker, LiveData<T> liveData) {
            this.mContainer = workManagerLiveDataTracker;
            addSource(liveData, (Observer<T>) new Observer<T>() { // from class: androidx.work.impl.WorkManagerLiveDataTracker.TrackedLiveData.1
                @Override // android.arch.lifecycle.Observer
                public void onChanged(@Nullable T t) {
                    TrackedLiveData.this.setValue(t);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.arch.lifecycle.MediatorLiveData, android.arch.lifecycle.LiveData
        public void onActive() {
            super.onActive();
            this.mContainer.onActive(this);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.arch.lifecycle.MediatorLiveData, android.arch.lifecycle.LiveData
        public void onInactive() {
            super.onInactive();
            this.mContainer.onInactive(this);
        }
    }

    void onActive(LiveData liveData) {
        this.mLiveDataSet.add(liveData);
    }

    void onInactive(LiveData liveData) {
        this.mLiveDataSet.remove(liveData);
    }

    public <T> LiveData<T> track(LiveData<T> liveData) {
        return new TrackedLiveData(this, liveData);
    }
}
