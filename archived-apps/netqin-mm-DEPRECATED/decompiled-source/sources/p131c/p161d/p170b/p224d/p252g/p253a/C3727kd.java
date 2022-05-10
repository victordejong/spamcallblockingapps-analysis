package p131c.p161d.p170b.p224d.p252g.p253a;

import android.content.Context;
import com.google.android.gms.internal.ads.zzarh;
import com.google.android.gms.internal.ads.zzarj;
import com.google.android.gms.internal.ads.zzbuy;
import com.google.android.gms.internal.ads.zzbvs;
import com.google.android.gms.internal.ads.zzdnv;
import java.util.ArrayList;
/* renamed from: c.d.b.d.g.a.kd */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/kd.class */
public final class C3727kd implements zzbuy, zzbvs {

    /* renamed from: a */
    public final Context f13870a;

    /* renamed from: b */
    public final zzdnv f13871b;

    /* renamed from: c */
    public final zzarj f13872c;

    public C3727kd(Context context, zzdnv zzdnvVar, zzarj zzarjVar) {
        this.f13870a = context;
        this.f13871b = zzdnvVar;
        this.f13872c = zzarjVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbuy
    /* renamed from: a */
    public final void mo14003a(Context context) {
        this.f13872c.mo16398a();
    }

    @Override // com.google.android.gms.internal.ads.zzbuy
    /* renamed from: c */
    public final void mo13999c(Context context) {
    }

    @Override // com.google.android.gms.internal.ads.zzbuy
    /* renamed from: d */
    public final void mo13998d(Context context) {
    }

    @Override // com.google.android.gms.internal.ads.zzbvs
    /* renamed from: x */
    public final void mo13495x() {
        zzarh zzarhVar = this.f13871b.f27578Y;
        if (zzarhVar != null && zzarhVar.f24314a) {
            ArrayList arrayList = new ArrayList();
            if (!this.f13871b.f27578Y.f24315b.isEmpty()) {
                arrayList.add(this.f13871b.f27578Y.f24315b);
            }
            this.f13872c.mo16397a(this.f13870a, arrayList);
        }
    }
}
