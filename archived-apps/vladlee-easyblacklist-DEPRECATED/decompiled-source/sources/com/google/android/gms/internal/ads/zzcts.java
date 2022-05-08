package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zzq;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcts.class */
public final class zzcts implements zzcub<zzctt> {

    /* renamed from: a */
    private final zzdhd f13874a;

    /* renamed from: b */
    private final Context f13875b;

    /* renamed from: c */
    private final zzazb f13876c;

    public zzcts(zzdhd zzdhdVar, Context context, zzazb zzazbVar) {
        this.f13874a = zzdhdVar;
        this.f13875b = context;
        this.f13876c = zzazbVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ zzctt m3689a() {
        boolean isCallerInstantApp = Wrappers.packageManager(this.f13875b).isCallerInstantApp();
        zzq.zzkq();
        boolean zzay = zzawb.zzay(this.f13875b);
        String str = this.f13876c.zzbma;
        zzq.zzks();
        boolean zzwq = zzawh.zzwq();
        zzq.zzkq();
        return new zzctt(isCallerInstantApp, zzay, str, zzwq, zzawb.zzav(this.f13875b), DynamiteModule.getRemoteVersion(this.f13875b, ModuleDescriptor.MODULE_ID), DynamiteModule.getLocalVersion(this.f13875b, ModuleDescriptor.MODULE_ID));
    }

    @Override // com.google.android.gms.internal.ads.zzcub
    public final zzdhe<zzctt> zzanc() {
        return this.f13874a.zzd(new Callable(this) { // from class: com.google.android.gms.internal.ads.wx

            /* renamed from: a */
            private final zzcts f10672a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10672a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f10672a.m3689a();
            }
        });
    }
}
