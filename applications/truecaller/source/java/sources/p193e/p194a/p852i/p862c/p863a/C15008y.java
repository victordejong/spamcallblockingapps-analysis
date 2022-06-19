package p193e.p194a.p852i.p862c.p863a;

import android.widget.FrameLayout;
import com.criteo.publisher.CriteoBannerView;
import e.a.i.d0.h0.i;
import kotlin.Metadata;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\u0018��2\u00020\u0001R.\u0010\n\u001a\u0004\u0018\u00010\u00022\b\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\t¨\u0006\u000b"}, d2 = {"Le/a/i/c/a/y;", "Landroid/widget/FrameLayout;", "Le/a/i/d0/h0/i;", "value", "a", "Le/a/i/d0/h0/i;", "getBannerAd", "()Le/a/i/d0/h0/i;", "setBannerAd", "(Le/a/i/d0/h0/i;)V", "bannerAd", "ads_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.i.c.a.y */
/* loaded from: classes3-dex2jar.jar:e/a/i/c/a/y.class */
public final class C15008y extends FrameLayout {

    /* renamed from: a */
    public i f42829a;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C15008y(android.content.Context r6, android.util.AttributeSet r7, int r8, int r9) {
        /*
            r5 = this;
            r0 = r9
            r1 = 4
            r0 = r0 & r1
            if (r0 == 0) goto L9
            r0 = 0
            r8 = r0
        L9:
            r0 = r6
            java.lang.String r1 = "context"
            s1.z.c.l.e(r0, r1)
            r0 = r5
            r1 = r6
            r2 = 0
            r3 = r8
            r0.<init>(r1, r2, r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p852i.p862c.p863a.C15008y.<init>(android.content.Context, android.util.AttributeSet, int, int):void");
    }

    public final i getBannerAd() {
        return this.f42829a;
    }

    public final void setBannerAd(i iVar) {
        this.f42829a = iVar;
        if (iVar != null) {
            CriteoBannerView criteoBannerView = iVar.c.j;
            if (criteoBannerView == null) {
                l.l("bannerAdView");
                throw null;
            }
            addView(criteoBannerView);
            CriteoBannerView criteoBannerView2 = iVar.c.j;
            if (criteoBannerView2 != null) {
                criteoBannerView2.setCriteoBannerAdListener(new a(iVar));
            } else {
                l.l("bannerAdView");
                throw null;
            }
        }
    }
}
