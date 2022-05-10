package com.google.android.gms.common.api.internal;

import android.app.Activity;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.ApiExceptionUtil;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.concurrent.CancellationException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zabo.class */
public class zabo extends zal {

    /* renamed from: f */
    public TaskCompletionSource<Void> f23249f;

    @Override // com.google.android.gms.common.api.internal.zal
    /* renamed from: a */
    public final void mo17457a(ConnectionResult connectionResult, int i) {
        this.f23249f.m8599a(ApiExceptionUtil.m17398a(new Status(connectionResult.m17834f(), connectionResult.m17833i(), connectionResult.m17832u())));
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    /* renamed from: b */
    public void mo17510b() {
        super.mo17510b();
        this.f23249f.m8597b(new CancellationException("Host activity was destroyed before Google Play services could be made available."));
    }

    @Override // com.google.android.gms.common.api.internal.zal
    /* renamed from: f */
    public final void mo17453f() {
        Activity c = this.f23157a.mo17439c();
        if (c == null) {
            this.f23249f.m8597b(new ApiException(new Status(8)));
            return;
        }
        int c2 = this.f23294e.mo17799c(c);
        if (c2 == 0) {
            this.f23249f.m8596b((TaskCompletionSource<Void>) null);
        } else if (!this.f23249f.m8600a().mo8602d()) {
            m17470b(new ConnectionResult(c2, null), 0);
        }
    }
}
