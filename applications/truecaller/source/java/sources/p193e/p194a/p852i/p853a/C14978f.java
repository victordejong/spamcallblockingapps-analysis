package p193e.p194a.p852i.p853a;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import com.truecaller.ads.C2808R;
import com.truecaller.ads.campaigns.AdCampaign;
import com.truecaller.ads.ui.CtaButtonX;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1451f.p1452a.ComponentCallbacks2C22222c;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1406z3.C21853e;
import p193e.p194a.p852i.AbstractC15191g;
import p193e.p194a.p852i.p896f0.p902n.C15187d;
import s1.g;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018��2\u00020\u0001B\u0017\u0012\u0006\u0010 \u001a\u00020\u001f\u0012\u0006\u0010\"\u001a\u00020!¢\u0006\u0004\b#\u0010$J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0007\u0010\bR%\u0010\u000e\u001a\n \n*\u0004\u0018\u00010\t0\t8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0007\u0010\u000b\u001a\u0004\b\f\u0010\rR%\u0010\u0013\u001a\n \n*\u0004\u0018\u00010\u000f0\u000f8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0010\u0010\u000b\u001a\u0004\b\u0011\u0010\u0012R%\u0010\u0018\u001a\n \n*\u0004\u0018\u00010\u00140\u00148B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0015\u0010\u000b\u001a\u0004\b\u0016\u0010\u0017R%\u0010\u001b\u001a\n \n*\u0004\u0018\u00010\u00140\u00148B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0019\u0010\u000b\u001a\u0004\b\u001a\u0010\u0017R%\u0010\u001e\u001a\n \n*\u0004\u0018\u00010\u000f0\u000f8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001c\u0010\u000b\u001a\u0004\b\u001d\u0010\u0012¨\u0006%"}, d2 = {"Le/a/i/a/f;", "Landroid/widget/FrameLayout;", "Le/a/i/f0/n/d;", "ad", "Lcom/truecaller/ads/campaigns/AdCampaign$CtaStyle;", "ctaStyle", "Ls1/s;", "a", "(Le/a/i/f0/n/d;Lcom/truecaller/ads/campaigns/AdCampaign$CtaStyle;)V", "Lcom/truecaller/ads/ui/CtaButtonX;", "kotlin.jvm.PlatformType", "Ls1/g;", "getAdCtaText", "()Lcom/truecaller/ads/ui/CtaButtonX;", "adCtaText", "Landroidx/appcompat/widget/AppCompatTextView;", "e", "getAdTitle", "()Landroidx/appcompat/widget/AppCompatTextView;", "adTitle", "Landroidx/appcompat/widget/AppCompatImageView;", C22021b.f61237c, "getAdIcon", "()Landroidx/appcompat/widget/AppCompatImageView;", "adIcon", AbstractC2405c.f7629a, "getAdLargeGraphic", "adLargeGraphic", "d", "getAdText", "adText", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "Le/a/i/g;", "layout", "<init>", "(Landroid/content/Context;Le/a/i/g;)V", "ads_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.i.a.f */
/* loaded from: classes3-dex2jar.jar:e/a/i/a/f.class */
public final class C14978f extends FrameLayout {

    /* renamed from: a */
    public final g f42749a = C19286f.m13660s(this, C2808R.C2810id.adCtaText);

    /* renamed from: b */
    public final g f42750b = C19286f.m13660s(this, C2808R.C2810id.adIcon);

    /* renamed from: c */
    public final g f42751c = C19286f.m13660s(this, C2808R.C2810id.adLargeGraphic);

    /* renamed from: d */
    public final g f42752d = C19286f.m13660s(this, C2808R.C2810id.adText);

    /* renamed from: e */
    public final g f42753e = C19286f.m13660s(this, C2808R.C2810id.adTitle);

    /* renamed from: e.a.i.a.f$b */
    /* loaded from: classes3-dex2jar.jar:e/a/i/a/f$b.class */
    public static final class View$OnClickListenerC14979b implements View.OnClickListener {

        /* renamed from: b */
        public final /* synthetic */ C15187d f42755b;

        public View$OnClickListenerC14979b(C15187d c15187d) {
            C14978f.this = r4;
            this.f42755b = c15187d;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C14978f.this.getContext().startActivity(new Intent("android.intent.action.VIEW", Uri.parse(this.f42755b.f43238d)));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C14978f(Context context, AbstractC15191g abstractC15191g) {
        super(context);
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(abstractC15191g, "layout");
        LayoutInflater.from(context).inflate(abstractC15191g.getHouseLayout(), this);
    }

    private final CtaButtonX getAdCtaText() {
        return (CtaButtonX) this.f42749a.getValue();
    }

    private final AppCompatImageView getAdIcon() {
        return (AppCompatImageView) this.f42750b.getValue();
    }

    private final AppCompatImageView getAdLargeGraphic() {
        return (AppCompatImageView) this.f42751c.getValue();
    }

    private final AppCompatTextView getAdText() {
        return (AppCompatTextView) this.f42752d.getValue();
    }

    private final AppCompatTextView getAdTitle() {
        return (AppCompatTextView) this.f42753e.getValue();
    }

    /* renamed from: a */
    public final void m19320a(C15187d c15187d, AdCampaign.CtaStyle ctaStyle) {
        AppCompatImageView adLargeGraphic;
        AppCompatImageView adIcon;
        l.e(c15187d, "ad");
        setOnClickListener(new View$OnClickListenerC14979b(c15187d));
        AppCompatTextView adTitle = getAdTitle();
        if (adTitle != null) {
            adTitle.setText(c15187d.f43235a);
        }
        AppCompatTextView adText = getAdText();
        if (adText != null) {
            adText.setText(c15187d.f43236b);
        }
        CtaButtonX adCtaText = getAdCtaText();
        if (adCtaText != null) {
            adCtaText.setText(c15187d.f43237c);
            if (ctaStyle != null) {
                adCtaText.a(ctaStyle.f9827a, ctaStyle.f9828b);
            }
            adCtaText.setOnClickListener(new a(adCtaText, c15187d, ctaStyle));
        }
        C21853e c21853e = (C21853e) ComponentCallbacks2C22222c.m8445f(this);
        l.d(c21853e, "GlideApp.with(this)");
        if (c15187d.f43239e != null && (adIcon = getAdIcon()) != null) {
            c21853e.m8964B(c15187d.f43239e).mo8102f().m8427O(adIcon);
        }
        if (c15187d.f43240f == null || (adLargeGraphic = getAdLargeGraphic()) == null) {
            return;
        }
        c21853e.m8964B(c15187d.f43240f).m8427O(adLargeGraphic);
    }
}
