package com.google.android.gms.common.api;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.internal.BasePendingResult;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/PendingResults.class */
public final class PendingResults {

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/PendingResults$zaa.class */
    private static final class zaa<R extends Result> extends BasePendingResult<R> {

        /* renamed from: q */
        private final R f7016q;

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.common.api.internal.BasePendingResult
        /* renamed from: e */
        public final R mo14042e(Status status) {
            if (status.m15000B() == this.f7016q.mo10851k().m15000B()) {
                return this.f7016q;
            }
            throw new UnsupportedOperationException("Creating failed results is not supported");
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/PendingResults$zab.class */
    private static final class zab<R extends Result> extends BasePendingResult<R> {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.common.api.internal.BasePendingResult
        /* renamed from: e */
        public final R mo14042e(Status status) {
            throw new UnsupportedOperationException("Creating failed results is not supported");
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/PendingResults$zac.class */
    private static final class zac<R extends Result> extends BasePendingResult<R> {

        /* renamed from: q */
        private final R f7017q;

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.common.api.internal.BasePendingResult
        /* renamed from: e */
        public final R mo14042e(Status status) {
            return this.f7017q;
        }
    }

    @KeepForSdk
    private PendingResults() {
    }
}
