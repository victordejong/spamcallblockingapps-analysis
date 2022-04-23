package com.google.android.gms.common.api.internal;

import android.app.Activity;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.ApiExceptionUtil;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.concurrent.CancellationException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zabt.class */
public class zabt extends zak {

    /* renamed from: e */
    private TaskCompletionSource<Void> f6500e = new TaskCompletionSource<>();

    private zabt(LifecycleFragment lifecycleFragment) {
        super(lifecycleFragment);
        this.f6308a.addCallback("GmsAvailabilityHelper", this);
    }

    public static zabt zac(Activity activity) {
        LifecycleFragment fragment = getFragment(activity);
        zabt zabtVar = (zabt) fragment.getCallbackOrNull("GmsAvailabilityHelper", zabt.class);
        if (zabtVar == null) {
            return new zabt(fragment);
        }
        if (zabtVar.f6500e.getTask().isComplete()) {
            zabtVar.f6500e = new TaskCompletionSource<>();
        }
        return zabtVar;
    }

    @Override // com.google.android.gms.common.api.internal.zak
    /* renamed from: a */
    protected final void mo5809a() {
        Activity lifecycleActivity = this.f6308a.getLifecycleActivity();
        if (lifecycleActivity == null) {
            this.f6500e.trySetException(new ApiException(new Status(8)));
            return;
        }
        int isGooglePlayServicesAvailable = this.f6544d.isGooglePlayServicesAvailable(lifecycleActivity);
        if (isGooglePlayServicesAvailable == 0) {
            this.f6500e.trySetResult(null);
        } else if (!this.f6500e.getTask().isComplete()) {
            zab(new ConnectionResult(isGooglePlayServicesAvailable, null), 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.api.internal.zak
    /* renamed from: a */
    public final void mo5808a(ConnectionResult connectionResult, int i) {
        this.f6500e.setException(ApiExceptionUtil.fromStatus(new Status(connectionResult.getErrorCode(), connectionResult.getErrorMessage(), connectionResult.getResolution())));
    }

    public final Task<Void> getTask() {
        return this.f6500e.getTask();
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public void onDestroy() {
        super.onDestroy();
        this.f6500e.trySetException(new CancellationException("Host activity was destroyed before Google Play services could be made available."));
    }
}
