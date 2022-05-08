package androidx.work.impl.constraints.controllers;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import androidx.work.impl.constraints.ConstraintListener;
import androidx.work.impl.constraints.trackers.ConstraintTracker;
import androidx.work.impl.model.WorkSpec;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/constraints/controllers/ConstraintController.class */
public abstract class ConstraintController<T> implements ConstraintListener<T> {
    private OnConstraintUpdatedCallback mCallback;
    private T mCurrentValue;
    private final List<String> mMatchingWorkSpecIds = new ArrayList();
    private ConstraintTracker<T> mTracker;

    /* loaded from: classes-dex2jar.jar:androidx/work/impl/constraints/controllers/ConstraintController$OnConstraintUpdatedCallback.class */
    public interface OnConstraintUpdatedCallback {
        void onConstraintMet(@NonNull List<String> list);

        void onConstraintNotMet(@NonNull List<String> list);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ConstraintController(ConstraintTracker<T> constraintTracker) {
        this.mTracker = constraintTracker;
    }

    private void updateCallback() {
        if (!this.mMatchingWorkSpecIds.isEmpty() && this.mCallback != null) {
            if (this.mCurrentValue == null || isConstrained(this.mCurrentValue)) {
                this.mCallback.onConstraintNotMet(this.mMatchingWorkSpecIds);
            } else {
                this.mCallback.onConstraintMet(this.mMatchingWorkSpecIds);
            }
        }
    }

    abstract boolean hasConstraint(@NonNull WorkSpec workSpec);

    abstract boolean isConstrained(@NonNull T t);

    public boolean isWorkSpecConstrained(@NonNull String str) {
        return this.mCurrentValue != null && isConstrained(this.mCurrentValue) && this.mMatchingWorkSpecIds.contains(str);
    }

    @Override // androidx.work.impl.constraints.ConstraintListener
    public void onConstraintChanged(@Nullable T t) {
        this.mCurrentValue = t;
        updateCallback();
    }

    public void replace(@NonNull List<WorkSpec> list) {
        this.mMatchingWorkSpecIds.clear();
        for (WorkSpec workSpec : list) {
            if (hasConstraint(workSpec)) {
                this.mMatchingWorkSpecIds.add(workSpec.f48id);
            }
        }
        if (this.mMatchingWorkSpecIds.isEmpty()) {
            this.mTracker.removeListener(this);
        } else {
            this.mTracker.addListener(this);
        }
        updateCallback();
    }

    public void reset() {
        if (!this.mMatchingWorkSpecIds.isEmpty()) {
            this.mMatchingWorkSpecIds.clear();
            this.mTracker.removeListener(this);
        }
    }

    public void setCallback(OnConstraintUpdatedCallback onConstraintUpdatedCallback) {
        if (this.mCallback != onConstraintUpdatedCallback) {
            this.mCallback = onConstraintUpdatedCallback;
            updateCallback();
        }
    }
}
