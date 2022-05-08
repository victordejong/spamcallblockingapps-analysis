package androidx.work.impl;

import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import androidx.work.Operation;
import androidx.work.impl.utils.futures.SettableFuture;
import p081h.p203i.p316b.p323g.p324a.AbstractFutureC9382a;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/work/impl/OperationImpl.class */
public class OperationImpl implements Operation {
    public final MutableLiveData<Operation.State> mOperationState = new MutableLiveData<>();
    public final SettableFuture<Operation.State.SUCCESS> mOperationFuture = SettableFuture.create();

    public OperationImpl() {
        setState(Operation.IN_PROGRESS);
    }

    @Override // androidx.work.Operation
    @NonNull
    public AbstractFutureC9382a<Operation.State.SUCCESS> getResult() {
        return this.mOperationFuture;
    }

    @Override // androidx.work.Operation
    @NonNull
    public LiveData<Operation.State> getState() {
        return this.mOperationState;
    }

    public void setState(@NonNull Operation.State state) {
        this.mOperationState.postValue(state);
        if (state instanceof Operation.State.SUCCESS) {
            this.mOperationFuture.set((Operation.State.SUCCESS) state);
        } else if (state instanceof Operation.State.FAILURE) {
            this.mOperationFuture.setException(((Operation.State.FAILURE) state).getThrowable());
        }
    }
}
