package p193e.p194a.p852i.p862c.p863a;

import android.widget.FrameLayout;
import com.appnext.suggestedappswider.AppnextSuggestedAppsWiderDataContainer;
import com.appnext.suggestedappswider.AppnextSuggestedAppsWiderView;
import com.truecaller.ads.C2808R;
import e.a.i.d0.h0.f;
import kotlin.Metadata;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import s1.g;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\u0018��2\u00020\u0001R.\u0010\n\u001a\u0004\u0018\u00010\u00022\b\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\t¨\u0006\u000b"}, d2 = {"Le/a/i/c/a/w;", "Landroid/widget/FrameLayout;", "Le/a/i/d0/h0/f;", "value", "a", "Le/a/i/d0/h0/f;", "getSuggestedAppsAd", "()Le/a/i/d0/h0/f;", "setSuggestedAppsAd", "(Le/a/i/d0/h0/f;)V", "suggestedAppsAd", "ads_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.i.c.a.w */
/* loaded from: classes3-dex2jar.jar:e/a/i/c/a/w.class */
public final class C15007w extends FrameLayout {

    /* renamed from: a */
    public f f42828a;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C15007w(android.content.Context r6, android.util.AttributeSet r7, int r8, int r9) {
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
            r0 = r6
            android.view.LayoutInflater r0 = android.view.LayoutInflater.from(r0)
            r6 = r0
            r0 = r6
            java.lang.String r1 = "LayoutInflater.from(context)"
            s1.z.c.l.d(r0, r1)
            r0 = r6
            r1 = 1
            android.view.LayoutInflater r0 = p193e.p194a.p1049l4.C17422k.m16050u0(r0, r1)
            int r1 = com.truecaller.ads.C2808R.layout.ad_appnext_native_banner
            r2 = r5
            r3 = 1
            android.view.View r0 = r0.inflate(r1, r2, r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p852i.p862c.p863a.C15007w.<init>(android.content.Context, android.util.AttributeSet, int, int):void");
    }

    public final f getSuggestedAppsAd() {
        return this.f42828a;
    }

    public final void setSuggestedAppsAd(f fVar) {
        AppnextSuggestedAppsWiderDataContainer appnextSuggestedAppsWiderDataContainer;
        this.f42828a = fVar;
        if (fVar == null || (appnextSuggestedAppsWiderDataContainer = fVar.c.j) == null) {
            return;
        }
        g m13660s = C19286f.m13660s(this, C2808R.C2810id.appnextCollectionAdView);
        AppnextSuggestedAppsWiderView appnextSuggestedAppsWiderView = (AppnextSuggestedAppsWiderView) m13660s.getValue();
        String string = getContext().getString(C2808R.string.appnext_suggested_apps_ad_title);
        l.d(string, "context.getString(R.stri…_suggested_apps_ad_title)");
        appnextSuggestedAppsWiderView.setTitle(string);
        ((AppnextSuggestedAppsWiderView) m13660s.getValue()).load(appnextSuggestedAppsWiderDataContainer, new a(m13660s, (s1.a.l) null, this));
    }
}
