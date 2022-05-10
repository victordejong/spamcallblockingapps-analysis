package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.ads.formats.NativeCustomTemplateAd;
import com.google.android.gms.internal.ads.zzafa;
import com.google.android.gms.internal.ads.zzafj;
import com.google.android.gms.internal.ads.zzagk;
/* renamed from: c.d.b.d.g.a.x */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/x.class */
public final class BinderC4197x extends zzafj {

    /* renamed from: a */
    public final /* synthetic */ zzagk f15982a;

    public BinderC4197x(zzagk zzagkVar) {
        this.f15982a = zzagkVar;
    }

    @Override // com.google.android.gms.internal.ads.zzafk
    /* renamed from: a */
    public final void mo16803a(zzafa zzafaVar, String str) {
        NativeCustomTemplateAd.OnCustomClickListener onCustomClickListener;
        NativeCustomTemplateAd.OnCustomClickListener onCustomClickListener2;
        NativeCustomTemplateAd a;
        onCustomClickListener = this.f15982a.f24082b;
        if (onCustomClickListener != null) {
            onCustomClickListener2 = this.f15982a.f24082b;
            a = this.f15982a.m16778a(zzafaVar);
            onCustomClickListener2.mo18041a(a, str);
        }
    }
}
