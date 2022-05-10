package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.overlay.zzb;
import com.google.android.gms.ads.internal.overlay.zzl;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.internal.ads.zzbcg;
import com.google.android.gms.internal.ads.zzcuj;
import com.google.android.gms.internal.ads.zzdnv;
import com.google.android.gms.internal.ads.zzdog;
import com.google.android.gms.internal.ads.zzdzc;
import java.util.concurrent.Executor;
import p012b.p031d.p032b.C0760b;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcuj.class */
public final class zzcuj implements zzcta<zzcbe> {

    /* renamed from: a */
    public final Context f26546a;

    /* renamed from: b */
    public final zzcce f26547b;

    /* renamed from: c */
    public final Executor f26548c;

    /* renamed from: d */
    public final zzdnt f26549d;

    public zzcuj(Context context, Executor executor, zzcce zzcceVar, zzdnt zzdntVar) {
        this.f26546a = context;
        this.f26547b = zzcceVar;
        this.f26548c = executor;
        this.f26549d = zzdntVar;
    }

    /* renamed from: a */
    public static String m13855a(zzdnv zzdnvVar) {
        try {
            return zzdnvVar.f27605u.getString("tab_url");
        } catch (Exception e) {
            return null;
        }
    }

    /* renamed from: a */
    public final /* synthetic */ zzdzc m13856a(Uri uri, zzdog zzdogVar, zzdnv zzdnvVar, Object obj) throws Exception {
        try {
            C0760b a = new C0760b.C0761a().m36132a();
            a.f3620a.setData(uri);
            zzb zzbVar = new zzb(a.f3620a);
            final zzbcg zzbcgVar = new zzbcg();
            zzcbg a2 = this.f26547b.mo14814a(new zzbre(zzdogVar, zzdnvVar, null), new zzcbf(new zzccm(zzbcgVar) { // from class: c.d.b.d.g.a.zo

                /* renamed from: a */
                public final zzbcg f16463a;

                {
                    this.f16463a = zzbcgVar;
                }

                @Override // com.google.android.gms.internal.ads.zzccm
                /* renamed from: a */
                public final void mo14809a(boolean z, Context context) {
                    zzbcg zzbcgVar2 = this.f16463a;
                    try {
                        zzp.m17970b();
                        zzl.m18002a(context, (AdOverlayInfoParcel) zzbcgVar2.get(), true);
                    } catch (Exception e) {
                    }
                }
            }));
            zzbcgVar.m15835a((zzbcg) new AdOverlayInfoParcel(zzbVar, null, a2.mo14838k(), null, new zzbbx(0, 0, false)));
            this.f26549d.m13452d();
            return zzdyq.m12988a(a2.mo14839j());
        } catch (Throwable th) {
            zzbbq.m15855b("Error in CustomTabsAdRenderer", th);
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcta
    /* renamed from: a */
    public final boolean mo13770a(zzdog zzdogVar, zzdnv zzdnvVar) {
        return (this.f26546a instanceof Activity) && PlatformVersion.m17066b() && zzacc.m16870a(this.f26546a) && !TextUtils.isEmpty(m13855a(zzdnvVar));
    }

    @Override // com.google.android.gms.internal.ads.zzcta
    /* renamed from: b */
    public final zzdzc<zzcbe> mo13769b(final zzdog zzdogVar, final zzdnv zzdnvVar) {
        String a = m13855a(zzdnvVar);
        final Uri parse = a != null ? Uri.parse(a) : null;
        return zzdyq.m12992a(zzdyq.m12988a((Object) null), new zzdya(this, parse, zzdogVar, zzdnvVar) { // from class: c.d.b.d.g.a.ap

            /* renamed from: a */
            public final zzcuj f12302a;

            /* renamed from: b */
            public final Uri f12303b;

            /* renamed from: c */
            public final zzdog f12304c;

            /* renamed from: d */
            public final zzdnv f12305d;

            {
                this.f12302a = this;
                this.f12303b = parse;
                this.f12304c = zzdogVar;
                this.f12305d = zzdnvVar;
            }

            @Override // com.google.android.gms.internal.ads.zzdya
            /* renamed from: d */
            public final zzdzc mo13006d(Object obj) {
                return this.f12302a.m13856a(this.f12303b, this.f12304c, this.f12305d, obj);
            }
        }, this.f26548c);
    }
}
