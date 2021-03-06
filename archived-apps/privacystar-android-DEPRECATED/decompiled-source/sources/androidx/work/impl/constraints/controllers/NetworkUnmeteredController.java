package androidx.work.impl.constraints.controllers;

import android.content.Context;
import android.support.annotation.NonNull;
import androidx.work.NetworkType;
import androidx.work.impl.constraints.NetworkState;
import androidx.work.impl.constraints.trackers.Trackers;
import androidx.work.impl.model.WorkSpec;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/constraints/controllers/NetworkUnmeteredController.class */
public class NetworkUnmeteredController extends ConstraintController<NetworkState> {
    public NetworkUnmeteredController(Context context) {
        super(Trackers.getInstance(context).getNetworkStateTracker());
    }

    @Override // androidx.work.impl.constraints.controllers.ConstraintController
    boolean hasConstraint(@NonNull WorkSpec workSpec) {
        return workSpec.constraints.getRequiredNetworkType() == NetworkType.UNMETERED;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isConstrained(@NonNull NetworkState networkState) {
        return !networkState.isConnected() || networkState.isMetered();
    }
}
