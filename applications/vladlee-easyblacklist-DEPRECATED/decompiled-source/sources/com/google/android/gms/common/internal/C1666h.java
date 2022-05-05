package com.google.android.gms.common.internal;

import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.PendingResultUtil;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.concurrent.TimeUnit;
/* renamed from: com.google.android.gms.common.internal.h */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/h.class */
final class C1666h implements PendingResult.StatusListener {

    /* renamed from: a */
    private final /* synthetic */ PendingResult f6828a;

    /* renamed from: b */
    private final /* synthetic */ TaskCompletionSource f6829b;

    /* renamed from: c */
    private final /* synthetic */ PendingResultUtil.ResultConverter f6830c;

    /* renamed from: d */
    private final /* synthetic */ PendingResultUtil.zaa f6831d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1666h(PendingResult pendingResult, TaskCompletionSource taskCompletionSource, PendingResultUtil.ResultConverter resultConverter, PendingResultUtil.zaa zaaVar) {
        this.f6828a = pendingResult;
        this.f6829b = taskCompletionSource;
        this.f6830c = resultConverter;
        this.f6831d = zaaVar;
    }

    @Override // com.google.android.gms.common.api.PendingResult.StatusListener
    public final void onComplete(Status status) {
        if (status.isSuccess()) {
            this.f6829b.setResult(this.f6830c.convert(this.f6828a.await(0L, TimeUnit.MILLISECONDS)));
            return;
        }
        this.f6829b.setException(this.f6831d.zaf(status));
    }
}
