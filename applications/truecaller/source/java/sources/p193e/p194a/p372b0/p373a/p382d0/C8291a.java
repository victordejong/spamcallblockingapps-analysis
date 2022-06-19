package p193e.p194a.p372b0.p373a.p382d0;

import com.truecaller.common.p156ui.C3700R;
import com.truecaller.common.p156ui.textview.GoldShineChronometer;
import p193e.p194a.p1129p5.C19235i0;
import s1.z.b.a;
import s1.z.c.m;
/* renamed from: e.a.b0.a.d0.a */
/* loaded from: classes7-dex2jar.jar:e/a/b0/a/d0/a.class */
public final class C8291a extends m implements a<int[]> {

    /* renamed from: b */
    public final /* synthetic */ GoldShineChronometer f25561b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C8291a(GoldShineChronometer goldShineChronometer) {
        super(0);
        this.f25561b = goldShineChronometer;
    }

    public Object invoke() {
        C19235i0 resourceProvider;
        C19235i0 resourceProvider2;
        C19235i0 resourceProvider3;
        resourceProvider = this.f25561b.getResourceProvider();
        int i = C3700R.attr.tcx_lightGldGradientStep1;
        resourceProvider2 = this.f25561b.getResourceProvider();
        resourceProvider3 = this.f25561b.getResourceProvider();
        return new int[]{resourceProvider.mo13758l(i), resourceProvider2.mo13758l(C3700R.attr.tcx_lightGldGradientStep2), resourceProvider3.mo13758l(i)};
    }
}
