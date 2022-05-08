package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.BaseGmsClient;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zaap.class */
final class zaap extends zabf {
    private final /* synthetic */ BaseGmsClient.ConnectionProgressReportCallbacks zagn;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zaap(zaan zaanVar, zabd zabdVar, BaseGmsClient.ConnectionProgressReportCallbacks connectionProgressReportCallbacks) {
        super(zabdVar);
        this.zagn = connectionProgressReportCallbacks;
    }

    @Override // com.google.android.gms.common.api.internal.zabf
    @GuardedBy("mLock")
    public final void zaan() {
        this.zagn.onReportServiceBinding(new ConnectionResult(16, null));
    }
}
