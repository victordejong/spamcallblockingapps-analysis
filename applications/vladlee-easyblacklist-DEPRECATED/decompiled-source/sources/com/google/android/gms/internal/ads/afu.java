package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.view.View;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/afu.class */
final class afu implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ Context f7313a;

    /* renamed from: b */
    private final /* synthetic */ View f7314b;

    /* renamed from: c */
    private final /* synthetic */ Activity f7315c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public afu(Context context, View view, Activity activity) {
        this.f7313a = context;
        this.f7314b = view;
        this.f7315c = activity;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzdc zzdcVar;
        zzdcVar = zzdi.f14295s;
        zzdcVar.zza(this.f7313a, this.f7314b, this.f7315c);
    }
}
