package com.google.android.gms.common.internal;

import com.google.android.gms.common.api.Response;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.internal.PendingResultUtil;
/* renamed from: com.google.android.gms.common.internal.g */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/g.class */
final class C1665g implements PendingResultUtil.ResultConverter<R, T> {

    /* renamed from: a */
    private final /* synthetic */ Response f6827a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1665g(Response response) {
        this.f6827a = response;
    }

    @Override // com.google.android.gms.common.internal.PendingResultUtil.ResultConverter
    public final /* synthetic */ Object convert(Result result) {
        this.f6827a.setResult(result);
        return this.f6827a;
    }
}
