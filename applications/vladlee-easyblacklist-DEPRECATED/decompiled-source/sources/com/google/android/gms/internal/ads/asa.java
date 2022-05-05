package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.initialization.InitializationStatus;
import com.google.android.gms.ads.initialization.OnInitializationCompleteListener;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/asa.class */
public final class asa extends zzagt {

    /* renamed from: a */
    private final OnInitializationCompleteListener f8250a;

    /* renamed from: b */
    private final /* synthetic */ zzxq f8251b;

    private asa(zzxq zzxqVar, OnInitializationCompleteListener onInitializationCompleteListener) {
        this.f8251b = zzxqVar;
        this.f8250a = onInitializationCompleteListener;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ asa(zzxq zzxqVar, OnInitializationCompleteListener onInitializationCompleteListener, byte b) {
        this(zzxqVar, onInitializationCompleteListener);
    }

    @Override // com.google.android.gms.internal.ads.zzagu
    public final void zzc(List<zzagn> list) {
        InitializationStatus b;
        OnInitializationCompleteListener onInitializationCompleteListener = this.f8250a;
        b = zzxq.m2964b(list);
        onInitializationCompleteListener.onInitializationComplete(b);
    }
}
