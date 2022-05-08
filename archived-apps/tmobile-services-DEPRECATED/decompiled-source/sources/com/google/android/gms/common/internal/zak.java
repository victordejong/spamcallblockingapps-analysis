package com.google.android.gms.common.internal;

import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.PendingResultUtil;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/zak.class */
final class zak implements PendingResult.StatusListener {

    /* renamed from: a */
    private final /* synthetic */ PendingResult f7550a;

    /* renamed from: b */
    private final /* synthetic */ TaskCompletionSource f7551b;

    /* renamed from: c */
    private final /* synthetic */ PendingResultUtil.ResultConverter f7552c;

    /* renamed from: d */
    private final /* synthetic */ PendingResultUtil.zaa f7553d;

    @Override // com.google.android.gms.common.api.PendingResult.StatusListener
    /* renamed from: a */
    public final void mo14432a(Status status) {
        if (status.m14996d0()) {
            this.f7551b.m10828c(this.f7552c.mo14431a(this.f7550a.mo14773a(0L, TimeUnit.MILLISECONDS)));
            return;
        }
        this.f7551b.m10829b(this.f7553d.mo14433a(status));
    }
}
