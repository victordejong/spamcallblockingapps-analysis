package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import java.util.List;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcfl.class */
public final class zzcfl implements zzdxg<zzdhe<zzaqk>> {

    /* renamed from: a */
    private final zzdxp<zzdcr> f13075a;

    /* renamed from: b */
    private final zzdxp<zzdhe<Bundle>> f13076b;

    /* renamed from: c */
    private final zzdxp<zzazb> f13077c;

    /* renamed from: d */
    private final zzdxp<ApplicationInfo> f13078d;

    /* renamed from: e */
    private final zzdxp<String> f13079e;

    /* renamed from: f */
    private final zzdxp<List<String>> f13080f;

    /* renamed from: g */
    private final zzdxp<PackageInfo> f13081g;

    /* renamed from: h */
    private final zzdxp<zzdhe<String>> f13082h;

    /* renamed from: i */
    private final zzdxp<zzavu> f13083i;

    /* renamed from: j */
    private final zzdxp<String> f13084j;

    private zzcfl(zzdxp<zzdcr> zzdxpVar, zzdxp<zzdhe<Bundle>> zzdxpVar2, zzdxp<zzazb> zzdxpVar3, zzdxp<ApplicationInfo> zzdxpVar4, zzdxp<String> zzdxpVar5, zzdxp<List<String>> zzdxpVar6, zzdxp<PackageInfo> zzdxpVar7, zzdxp<zzdhe<String>> zzdxpVar8, zzdxp<zzavu> zzdxpVar9, zzdxp<String> zzdxpVar10) {
        this.f13075a = zzdxpVar;
        this.f13076b = zzdxpVar2;
        this.f13077c = zzdxpVar3;
        this.f13078d = zzdxpVar4;
        this.f13079e = zzdxpVar5;
        this.f13080f = zzdxpVar6;
        this.f13081g = zzdxpVar7;
        this.f13082h = zzdxpVar8;
        this.f13083i = zzdxpVar9;
        this.f13084j = zzdxpVar10;
    }

    public static zzcfl zza(zzdxp<zzdcr> zzdxpVar, zzdxp<zzdhe<Bundle>> zzdxpVar2, zzdxp<zzazb> zzdxpVar3, zzdxp<ApplicationInfo> zzdxpVar4, zzdxp<String> zzdxpVar5, zzdxp<List<String>> zzdxpVar6, zzdxp<PackageInfo> zzdxpVar7, zzdxp<zzdhe<String>> zzdxpVar8, zzdxp<zzavu> zzdxpVar9, zzdxp<String> zzdxpVar10) {
        return new zzcfl(zzdxpVar, zzdxpVar2, zzdxpVar3, zzdxpVar4, zzdxpVar5, zzdxpVar6, zzdxpVar7, zzdxpVar8, zzdxpVar9, zzdxpVar10);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        zzdcr zzdcrVar = this.f13075a.get();
        final zzdhe<Bundle> zzdheVar = this.f13076b.get();
        final zzazb zzazbVar = this.f13077c.get();
        final ApplicationInfo applicationInfo = this.f13078d.get();
        final String str = this.f13079e.get();
        final List<String> list = this.f13080f.get();
        final PackageInfo packageInfo = this.f13081g.get();
        final zzdhe<String> zzdheVar2 = this.f13082h.get();
        final zzavu zzavuVar = this.f13083i.get();
        final String str2 = this.f13084j.get();
        return (zzdhe) zzdxm.zza(zzdcrVar.zza((zzdcr) zzdco.REQUEST_PARCEL, zzdheVar, zzdheVar2).zzb(new Callable(zzdheVar, zzazbVar, applicationInfo, str, list, packageInfo, zzdheVar2, zzavuVar, str2) { // from class: com.google.android.gms.internal.ads.rj

            /* renamed from: a */
            private final zzdhe f10413a;

            /* renamed from: b */
            private final zzazb f10414b;

            /* renamed from: c */
            private final ApplicationInfo f10415c;

            /* renamed from: d */
            private final String f10416d;

            /* renamed from: e */
            private final List f10417e;

            /* renamed from: f */
            private final PackageInfo f10418f;

            /* renamed from: g */
            private final zzdhe f10419g;

            /* renamed from: h */
            private final zzavu f10420h;

            /* renamed from: i */
            private final String f10421i;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10413a = zzdheVar;
                this.f10414b = zzazbVar;
                this.f10415c = applicationInfo;
                this.f10416d = str;
                this.f10417e = list;
                this.f10418f = packageInfo;
                this.f10419g = zzdheVar2;
                this.f10420h = zzavuVar;
                this.f10421i = str2;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                zzdhe zzdheVar3 = this.f10413a;
                zzazb zzazbVar2 = this.f10414b;
                ApplicationInfo applicationInfo2 = this.f10415c;
                String str3 = this.f10416d;
                List list2 = this.f10417e;
                PackageInfo packageInfo2 = this.f10418f;
                zzdhe zzdheVar4 = this.f10419g;
                zzavu zzavuVar2 = this.f10420h;
                return new zzaqk((Bundle) zzdheVar3.get(), zzazbVar2, applicationInfo2, str3, list2, packageInfo2, (String) zzdheVar4.get(), zzavuVar2.zzvy(), this.f10421i, null, null);
            }
        }).zzaqg(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
