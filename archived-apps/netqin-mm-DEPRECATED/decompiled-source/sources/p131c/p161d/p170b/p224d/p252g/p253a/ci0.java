package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.internal.ads.zzwp;
import com.google.android.gms.internal.ads.zzyy;
/* renamed from: c.d.b.d.g.a.ci0 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/ci0.class */
public final class ci0 extends zzwp {

    /* renamed from: c */
    public final /* synthetic */ zzyy f12562c;

    public ci0(zzyy zzyyVar) {
        this.f12562c = zzyyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzwp, com.google.android.gms.ads.AdListener
    /* renamed from: a */
    public final void mo3662a(int i) {
        VideoController videoController;
        videoController = this.f12562c.f29113b;
        videoController.m18088a(this.f12562c.m11046n());
        super.mo3662a(i);
    }

    @Override // com.google.android.gms.internal.ads.zzwp, com.google.android.gms.ads.AdListener
    /* renamed from: a */
    public final void mo11160a(LoadAdError loadAdError) {
        VideoController videoController;
        videoController = this.f12562c.f29113b;
        videoController.m18088a(this.f12562c.m11046n());
        super.mo11160a(loadAdError);
    }

    @Override // com.google.android.gms.internal.ads.zzwp, com.google.android.gms.ads.AdListener
    /* renamed from: d */
    public final void mo5292d() {
        VideoController videoController;
        videoController = this.f12562c.f29113b;
        videoController.m18088a(this.f12562c.m11046n());
        super.mo5292d();
    }
}
