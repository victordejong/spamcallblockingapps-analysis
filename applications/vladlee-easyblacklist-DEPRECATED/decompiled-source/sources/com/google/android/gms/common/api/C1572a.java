package com.google.android.gms.common.api;

import com.google.android.gms.common.api.PendingResult;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.common.api.a */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/a.class */
public final class C1572a implements PendingResult.StatusListener {

    /* renamed from: a */
    private final /* synthetic */ Batch f6232a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1572a(Batch batch) {
        this.f6232a = batch;
    }

    @Override // com.google.android.gms.common.api.PendingResult.StatusListener
    public final void onComplete(Status status) {
        Object obj;
        int i;
        boolean z;
        boolean z2;
        PendingResult[] pendingResultArr;
        obj = this.f6232a.f6178f;
        synchronized (obj) {
            if (!this.f6232a.isCanceled()) {
                if (status.isCanceled()) {
                    this.f6232a.f6176d = true;
                } else if (!status.isSuccess()) {
                    this.f6232a.f6175c = true;
                }
                Batch.m5983d(this.f6232a);
                i = this.f6232a.f6174b;
                if (i == 0) {
                    z = this.f6232a.f6176d;
                    if (z) {
                        C1572a.super.cancel();
                    } else {
                        z2 = this.f6232a.f6175c;
                        Status status2 = z2 ? new Status(13) : Status.RESULT_SUCCESS;
                        Batch batch = this.f6232a;
                        pendingResultArr = this.f6232a.f6177e;
                        batch.setResult(new BatchResult(status2, pendingResultArr));
                    }
                }
            }
        }
    }
}
