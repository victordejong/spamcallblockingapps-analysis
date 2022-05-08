package androidx.work.impl.constraints.trackers;

import android.content.Context;
import android.support.annotation.RestrictTo;
import androidx.work.Logger;
import androidx.work.impl.constraints.ConstraintListener;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.Set;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/work/impl/constraints/trackers/ConstraintTracker.class */
public abstract class ConstraintTracker<T> {
    private static final String TAG = Logger.tagWithPrefix("ConstraintTracker");
    protected final Context mAppContext;
    private T mCurrentState;
    private final Object mLock = new Object();
    private final Set<ConstraintListener<T>> mListeners = new LinkedHashSet();

    /* JADX INFO: Access modifiers changed from: package-private */
    public ConstraintTracker(Context context) {
        this.mAppContext = context.getApplicationContext();
    }

    public void addListener(ConstraintListener<T> constraintListener) {
        synchronized (this.mLock) {
            if (this.mListeners.add(constraintListener)) {
                if (this.mListeners.size() == 1) {
                    this.mCurrentState = getInitialState();
                    Logger.get().debug(TAG, String.format("%s: initial state = %s", getClass().getSimpleName(), this.mCurrentState), new Throwable[0]);
                    startTracking();
                }
                constraintListener.onConstraintChanged(this.mCurrentState);
            }
        }
    }

    public abstract T getInitialState();

    public void removeListener(ConstraintListener<T> constraintListener) {
        synchronized (this.mLock) {
            if (this.mListeners.remove(constraintListener) && this.mListeners.isEmpty()) {
                stopTracking();
            }
        }
    }

    public void setState(T t) {
        synchronized (this.mLock) {
            if (this.mCurrentState != t && (this.mCurrentState == null || !this.mCurrentState.equals(t))) {
                this.mCurrentState = t;
                for (ConstraintListener constraintListener : new ArrayList(this.mListeners)) {
                    constraintListener.onConstraintChanged(this.mCurrentState);
                }
            }
        }
    }

    public abstract void startTracking();

    public abstract void stopTracking();
}
