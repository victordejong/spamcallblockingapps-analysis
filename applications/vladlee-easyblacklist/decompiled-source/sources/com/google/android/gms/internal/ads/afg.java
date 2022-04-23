package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.view.View;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/afg.class */
final class afg implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ Context f7299a;

    /* renamed from: b */
    private final /* synthetic */ String f7300b;

    /* renamed from: c */
    private final /* synthetic */ View f7301c;

    /* renamed from: d */
    private final /* synthetic */ Activity f7302d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public afg(Context context, String str, View view, Activity activity) {
        this.f7299a = context;
        this.f7300b = str;
        this.f7301c = view;
        this.f7302d = activity;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzdc zzdcVar;
        zzdcVar = zzdi.f14295s;
        zzdcVar.zza(this.f7299a, this.f7300b, this.f7301c, this.f7302d);
    }
}
