package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.BaseGmsClient;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zaan.class */
final class zaan extends zabd {

    /* renamed from: b */
    private final /* synthetic */ BaseGmsClient.ConnectionProgressReportCallbacks f7169b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zaan(zaal zaalVar, zabb zabbVar, BaseGmsClient.ConnectionProgressReportCallbacks connectionProgressReportCallbacks) {
        super(zabbVar);
        this.f7169b = connectionProgressReportCallbacks;
    }

    @Override // com.google.android.gms.common.api.internal.zabd
    @GuardedBy
    /* renamed from: b */
    public final void mo14794b() {
        this.f7169b.mo14593a(new ConnectionResult(16, null));
    }
}
