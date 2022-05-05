package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.api.GoogleApiActivity;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.common.api.internal.au */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/au.class */
public final class RunnableC1598au implements Runnable {

    /* renamed from: a */
    final /* synthetic */ zak f6358a;

    /* renamed from: b */
    private final C1599av f6359b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC1598au(zak zakVar, C1599av avVar) {
        this.f6358a = zakVar;
        this.f6359b = avVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f6358a.f6542b) {
            ConnectionResult b = this.f6359b.m5907b();
            if (b.hasResolution()) {
                this.f6358a.f6308a.startActivityForResult(GoogleApiActivity.zaa(this.f6358a.getActivity(), b.getResolution(), this.f6359b.m5908a(), false), 1);
            } else if (this.f6358a.f6544d.isUserResolvableError(b.getErrorCode())) {
                this.f6358a.f6544d.zaa(this.f6358a.getActivity(), this.f6358a.f6308a, b.getErrorCode(), 2, this.f6358a);
            } else if (b.getErrorCode() == 18) {
                this.f6358a.f6544d.zaa(this.f6358a.getActivity().getApplicationContext(), new C1600aw(this, GoogleApiAvailability.zaa(this.f6358a.getActivity(), this.f6358a)));
            } else {
                this.f6358a.mo5808a(b, this.f6359b.m5908a());
            }
        }
    }
}
