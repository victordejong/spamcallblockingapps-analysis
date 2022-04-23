package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import androidx.browser.customtabs.C0547b;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.overlay.zzd;
import com.google.android.gms.ads.internal.overlay.zzn;
import com.google.android.gms.ads.internal.zzq;
import com.google.android.gms.common.util.PlatformVersion;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcjn.class */
public final class zzcjn implements zzcio<zzbtu> {

    /* renamed from: a */
    private final Context f13225a;

    /* renamed from: b */
    private final zzbup f13226b;

    /* renamed from: c */
    private final Executor f13227c;

    /* renamed from: d */
    private final zzczj f13228d;

    public zzcjn(Context context, Executor executor, zzbup zzbupVar, zzczj zzczjVar) {
        this.f13225a = context;
        this.f13226b = zzbupVar;
        this.f13227c = executor;
        this.f13228d = zzczjVar;
    }

    /* renamed from: a */
    private static String m3753a(zzczl zzczlVar) {
        try {
            return zzczlVar.zzglr.getString("tab_url");
        } catch (Exception e) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ zzdhe m3754a(Uri uri, zzczt zzcztVar, zzczl zzczlVar) {
        try {
            C0547b a = new C0547b.C0548a().m8878a();
            a.f2524a.setData(uri);
            zzd zzdVar = new zzd(a.f2524a);
            final zzazl zzazlVar = new zzazl();
            zzbtw zza = this.f13226b.zza(new zzbmt(zzcztVar, zzczlVar, null), new zzbtv(new zzbuv(zzazlVar) { // from class: com.google.android.gms.internal.ads.td

                /* renamed from: a */
                private final zzazl f10488a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f10488a = zzazlVar;
                }

                @Override // com.google.android.gms.internal.ads.zzbuv
                public final void zza(boolean z, Context context) {
                    zzazl zzazlVar2 = this.f10488a;
                    try {
                        zzq.zzkp();
                        zzn.zza(context, (AdOverlayInfoParcel) zzazlVar2.get(), true);
                    } catch (Exception e) {
                    }
                }
            }));
            zzazlVar.set(new AdOverlayInfoParcel(zzdVar, null, zza.zzaen(), null, new zzazb(0, 0, false)));
            this.f13228d.zzvb();
            return zzdgs.zzaj(zza.zzaem());
        } catch (Throwable th) {
            zzavs.zzc("Error in CustomTabsAdRenderer", th);
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcio
    public final boolean zza(zzczt zzcztVar, zzczl zzczlVar) {
        return (this.f13225a instanceof Activity) && PlatformVersion.isAtLeastIceCreamSandwichMR1() && zzaao.zzk(this.f13225a) && !TextUtils.isEmpty(m3753a(zzczlVar));
    }

    @Override // com.google.android.gms.internal.ads.zzcio
    public final zzdhe<zzbtu> zzb(final zzczt zzcztVar, final zzczl zzczlVar) {
        String a = m3753a(zzczlVar);
        final Uri parse = a != null ? Uri.parse(a) : null;
        return zzdgs.zzb(zzdgs.zzaj(null), new zzdgf(this, parse, zzcztVar, zzczlVar) { // from class: com.google.android.gms.internal.ads.te

            /* renamed from: a */
            private final zzcjn f10489a;

            /* renamed from: b */
            private final Uri f10490b;

            /* renamed from: c */
            private final zzczt f10491c;

            /* renamed from: d */
            private final zzczl f10492d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10489a = this;
                this.f10490b = parse;
                this.f10491c = zzcztVar;
                this.f10492d = zzczlVar;
            }

            @Override // com.google.android.gms.internal.ads.zzdgf
            public final zzdhe zzf(Object obj) {
                return this.f10489a.m3754a(this.f10490b, this.f10491c, this.f10492d);
            }
        }, this.f13227c);
    }
}
