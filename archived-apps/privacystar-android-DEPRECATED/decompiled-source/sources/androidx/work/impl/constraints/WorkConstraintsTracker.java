package androidx.work.impl.constraints;

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.VisibleForTesting;
import androidx.work.Logger;
import androidx.work.impl.constraints.controllers.BatteryChargingController;
import androidx.work.impl.constraints.controllers.BatteryNotLowController;
import androidx.work.impl.constraints.controllers.ConstraintController;
import androidx.work.impl.constraints.controllers.NetworkConnectedController;
import androidx.work.impl.constraints.controllers.NetworkMeteredController;
import androidx.work.impl.constraints.controllers.NetworkNotRoamingController;
import androidx.work.impl.constraints.controllers.NetworkUnmeteredController;
import androidx.work.impl.constraints.controllers.StorageNotLowController;
import androidx.work.impl.model.WorkSpec;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/constraints/WorkConstraintsTracker.class */
public class WorkConstraintsTracker implements ConstraintController.OnConstraintUpdatedCallback {
    private static final String TAG = Logger.tagWithPrefix("WorkConstraintsTracker");
    @Nullable
    private final WorkConstraintsCallback mCallback;
    private final ConstraintController[] mConstraintControllers;
    private final Object mLock = new Object();

    public WorkConstraintsTracker(Context context, @Nullable WorkConstraintsCallback workConstraintsCallback) {
        Context applicationContext = context.getApplicationContext();
        this.mCallback = workConstraintsCallback;
        this.mConstraintControllers = new ConstraintController[]{new BatteryChargingController(applicationContext), new BatteryNotLowController(applicationContext), new StorageNotLowController(applicationContext), new NetworkConnectedController(applicationContext), new NetworkUnmeteredController(applicationContext), new NetworkNotRoamingController(applicationContext), new NetworkMeteredController(applicationContext)};
    }

    @VisibleForTesting
    WorkConstraintsTracker(@Nullable WorkConstraintsCallback workConstraintsCallback, ConstraintController[] constraintControllerArr) {
        this.mCallback = workConstraintsCallback;
        this.mConstraintControllers = constraintControllerArr;
    }

    public boolean areAllConstraintsMet(@NonNull String str) {
        ConstraintController[] constraintControllerArr;
        synchronized (this.mLock) {
            for (ConstraintController constraintController : this.mConstraintControllers) {
                if (constraintController.isWorkSpecConstrained(str)) {
                    Logger.get().debug(TAG, String.format("Work %s constrained by %s", str, constraintController.getClass().getSimpleName()), new Throwable[0]);
                    return false;
                }
            }
            return true;
        }
    }

    @Override // androidx.work.impl.constraints.controllers.ConstraintController.OnConstraintUpdatedCallback
    public void onConstraintMet(@NonNull List<String> list) {
        synchronized (this.mLock) {
            ArrayList arrayList = new ArrayList();
            for (String str : list) {
                if (areAllConstraintsMet(str)) {
                    Logger.get().debug(TAG, String.format("Constraints met for %s", str), new Throwable[0]);
                    arrayList.add(str);
                }
            }
            if (this.mCallback != null) {
                this.mCallback.onAllConstraintsMet(arrayList);
            }
        }
    }

    @Override // androidx.work.impl.constraints.controllers.ConstraintController.OnConstraintUpdatedCallback
    public void onConstraintNotMet(@NonNull List<String> list) {
        synchronized (this.mLock) {
            if (this.mCallback != null) {
                this.mCallback.onAllConstraintsNotMet(list);
            }
        }
    }

    public void replace(@NonNull List<WorkSpec> list) {
        synchronized (this.mLock) {
            for (ConstraintController constraintController : this.mConstraintControllers) {
                constraintController.setCallback(null);
            }
            for (ConstraintController constraintController2 : this.mConstraintControllers) {
                constraintController2.replace(list);
            }
            for (ConstraintController constraintController3 : this.mConstraintControllers) {
                constraintController3.setCallback(this);
            }
        }
    }

    public void reset() {
        synchronized (this.mLock) {
            for (ConstraintController constraintController : this.mConstraintControllers) {
                constraintController.reset();
            }
        }
    }
}
