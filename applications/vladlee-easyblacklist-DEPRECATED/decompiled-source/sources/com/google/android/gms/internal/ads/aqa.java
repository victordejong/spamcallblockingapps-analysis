package com.google.android.gms.internal.ads;

import android.webkit.ValueCallback;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aqa.class */
public final class aqa implements ValueCallback<String> {

    /* renamed from: a */
    private final /* synthetic */ apx f8160a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aqa(apx apxVar) {
        this.f8160a = apxVar;
    }

    @Override // android.webkit.ValueCallback
    public final /* synthetic */ void onReceiveValue(String str) {
        this.f8160a.f8151d.m3102a(this.f8160a.f8148a, this.f8160a.f8149b, str, this.f8160a.f8150c);
    }
}
