package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.BaseGmsClient;
/* renamed from: com.google.android.gms.common.api.internal.j */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/j.class */
final class C1617j extends AbstractC1630w {

    /* renamed from: a */
    private final /* synthetic */ BaseGmsClient.ConnectionProgressReportCallbacks f6402a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1617j(zabb zabbVar, BaseGmsClient.ConnectionProgressReportCallbacks connectionProgressReportCallbacks) {
        super(zabbVar);
        this.f6402a = connectionProgressReportCallbacks;
    }

    @Override // com.google.android.gms.common.api.internal.AbstractC1630w
    /* renamed from: a */
    public final void mo5884a() {
        this.f6402a.onReportServiceBinding(new ConnectionResult(16, null));
    }
}
