package p131c.p161d.p170b.p224d.p252g.p253a;

import android.content.Context;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.overlay.zzl;
import com.google.android.gms.ads.internal.overlay.zzv;
import com.google.android.gms.ads.internal.zzi;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.internal.ads.zzayu;
import com.google.android.gms.internal.ads.zzbbx;
import com.google.android.gms.internal.ads.zzbgj;
import com.google.android.gms.internal.ads.zzcbg;
import com.google.android.gms.internal.ads.zzccc;
import com.google.android.gms.internal.ads.zzccm;
import com.google.android.gms.internal.ads.zzdnv;
import com.google.android.gms.internal.ads.zzdny;
import com.google.android.gms.internal.ads.zzdyq;
import com.google.android.gms.internal.ads.zzdzc;
import com.google.android.gms.internal.ads.zzux;
/* renamed from: c.d.b.d.g.a.jp */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/jp.class */
public final class C3702jp implements zzccm {

    /* renamed from: a */
    public final Context f13804a;

    /* renamed from: b */
    public final zzbbx f13805b;

    /* renamed from: c */
    public final zzdzc<zzcbg> f13806c;

    /* renamed from: d */
    public final zzdnv f13807d;

    /* renamed from: e */
    public final zzbgj f13808e;

    public C3702jp(Context context, zzbbx zzbbxVar, zzdzc<zzcbg> zzdzcVar, zzdnv zzdnvVar, zzbgj zzbgjVar) {
        this.f13804a = context;
        this.f13805b = zzbbxVar;
        this.f13806c = zzdzcVar;
        this.f13807d = zzdnvVar;
        this.f13808e = zzbgjVar;
    }

    @Override // com.google.android.gms.internal.ads.zzccm
    /* renamed from: a */
    public final void mo14809a(boolean z, Context context) {
        zzcbg zzcbgVar = (zzcbg) zzdyq.m12983b(this.f13806c);
        this.f13808e.mo15559g(true);
        zzp.m17969c();
        zzi zziVar = new zzi(false, zzayu.m16080n(this.f13804a), false, 0.0f, -1, z, this.f13807d.f27563J, false);
        zzp.m17970b();
        zzccc i = zzcbgVar.mo14840i();
        zzbgj zzbgjVar = this.f13808e;
        zzdnv zzdnvVar = this.f13807d;
        int i2 = zzdnvVar.f27565L;
        zzbbx zzbbxVar = this.f13805b;
        String str = zzdnvVar.f27554A;
        zzdny zzdnyVar = zzdnvVar.f27602r;
        zzl.m18002a(context, new AdOverlayInfoParcel((zzux) null, i, (zzv) null, zzbgjVar, i2, zzbbxVar, str, zziVar, zzdnyVar.f27620b, zzdnyVar.f27619a), true);
    }
}
