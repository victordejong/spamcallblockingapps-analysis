package com.google.android.gms.common.internal.service;

import com.google.android.gms.common.api.GoogleApiClient;
/* renamed from: com.google.android.gms.common.internal.service.b */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/service/b.class */
final class C1672b extends AbstractC1675e {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C1672b(GoogleApiClient googleApiClient) {
        super(googleApiClient);
    }

    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl
    /* renamed from: a */
    protected final /* synthetic */ void mo5655a(zah zahVar) {
        ((zam) zahVar.getService()).zaa(new BinderC1674d(this));
    }
}
