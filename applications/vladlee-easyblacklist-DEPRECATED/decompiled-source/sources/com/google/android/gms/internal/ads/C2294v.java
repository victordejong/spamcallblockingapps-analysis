package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.DeadObjectException;
import com.google.android.gms.common.internal.BaseGmsClient;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.ads.v */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/v.class */
public final class C2294v implements BaseGmsClient.BaseConnectionCallbacks {

    /* renamed from: a */
    private final /* synthetic */ zzazl f10607a;

    /* renamed from: b */
    private final /* synthetic */ zzagh f10608b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2294v(zzagh zzaghVar, zzazl zzazlVar) {
        this.f10608b = zzaghVar;
        this.f10607a = zzazlVar;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        zzaga zzagaVar;
        try {
            zzazl zzazlVar = this.f10607a;
            zzagaVar = this.f10608b.f10910a;
            zzazlVar.set(zzagaVar.zzru());
        } catch (DeadObjectException e) {
            this.f10607a.setException(e);
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnectionSuspended(int i) {
        zzazl zzazlVar = this.f10607a;
        StringBuilder sb = new StringBuilder(34);
        sb.append("onConnectionSuspended: ");
        sb.append(i);
        zzazlVar.setException(new RuntimeException(sb.toString()));
    }
}
