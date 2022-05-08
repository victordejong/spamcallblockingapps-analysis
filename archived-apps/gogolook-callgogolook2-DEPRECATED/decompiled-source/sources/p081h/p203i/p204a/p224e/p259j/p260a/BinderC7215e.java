package p081h.p203i.p204a.p224e.p259j.p260a;

import android.os.Bundle;
import android.view.View;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.mediation.UnifiedNativeAdMapper;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import p081h.p203i.p204a.p224e.p252e.AbstractC7106b;
import p081h.p203i.p204a.p224e.p252e.BinderC7110d;
@AbstractC7354p0
/* renamed from: h.i.a.e.j.a.e */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/e.class */
public final class BinderC7215e extends AbstractBinderC7389ra {

    /* renamed from: a */
    public final UnifiedNativeAdMapper f17321a;

    public BinderC7215e(UnifiedNativeAdMapper unifiedNativeAdMapper) {
        this.f17321a = unifiedNativeAdMapper;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7377qa
    /* renamed from: A */
    public final boolean mo20730A() {
        return this.f17321a.getOverrideClickHandling();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7377qa
    /* renamed from: a */
    public final void mo20729a(AbstractC7106b bVar) {
        this.f17321a.handleClick((View) BinderC7110d.m21059A(bVar));
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7377qa
    /* renamed from: a */
    public final void mo20728a(AbstractC7106b bVar, AbstractC7106b bVar2, AbstractC7106b bVar3) {
        this.f17321a.trackViews((View) BinderC7110d.m21059A(bVar), (HashMap) BinderC7110d.m21059A(bVar2), (HashMap) BinderC7110d.m21059A(bVar3));
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7377qa
    /* renamed from: b */
    public final void mo20727b(AbstractC7106b bVar) {
        this.f17321a.untrackView((View) BinderC7110d.m21059A(bVar));
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7377qa
    /* renamed from: g */
    public final AbstractC7361p7 mo20726g() {
        return null;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7377qa
    public final Bundle getExtras() {
        return this.f17321a.getExtras();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7377qa
    public final AbstractC7359p5 getVideoController() {
        if (this.f17321a.getVideoController() != null) {
            return this.f17321a.getVideoController().zzbb();
        }
        return null;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7377qa
    /* renamed from: h */
    public final String mo20725h() {
        return this.f17321a.getCallToAction();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7377qa
    /* renamed from: i */
    public final String mo20724i() {
        return this.f17321a.getHeadline();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7377qa
    /* renamed from: j */
    public final String mo20723j() {
        return this.f17321a.getBody();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7377qa
    /* renamed from: k */
    public final List mo20722k() {
        List<NativeAd.Image> images = this.f17321a.getImages();
        ArrayList arrayList = new ArrayList();
        if (images != null) {
            for (NativeAd.Image image : images) {
                arrayList.add(new BinderC7337n7(image.getDrawable(), image.getUri(), image.getScale()));
            }
        }
        return arrayList;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7377qa
    /* renamed from: m */
    public final AbstractC7106b mo20721m() {
        Object zzbh = this.f17321a.zzbh();
        if (zzbh == null) {
            return null;
        }
        return BinderC7110d.m21058a(zzbh);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7377qa
    /* renamed from: n */
    public final String mo20720n() {
        return this.f17321a.getPrice();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7377qa
    /* renamed from: o */
    public final AbstractC7398s7 mo20719o() {
        NativeAd.Image icon = this.f17321a.getIcon();
        if (icon != null) {
            return new BinderC7337n7(icon.getDrawable(), icon.getUri(), icon.getScale());
        }
        return null;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7377qa
    /* renamed from: p */
    public final double mo20718p() {
        if (this.f17321a.getStarRating() != null) {
            return this.f17321a.getStarRating().doubleValue();
        }
        return -1.0d;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7377qa
    /* renamed from: q */
    public final String mo20717q() {
        return this.f17321a.getAdvertiser();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7377qa
    /* renamed from: r */
    public final String mo20716r() {
        return this.f17321a.getStore();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7377qa
    public final void recordImpression() {
        this.f17321a.recordImpression();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7377qa
    /* renamed from: w */
    public final AbstractC7106b mo20715w() {
        View zzxr = this.f17321a.zzxr();
        if (zzxr == null) {
            return null;
        }
        return BinderC7110d.m21058a(zzxr);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7377qa
    /* renamed from: x */
    public final boolean mo20714x() {
        return this.f17321a.getOverrideImpressionRecording();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7377qa
    /* renamed from: y */
    public final AbstractC7106b mo20713y() {
        View adChoicesContent = this.f17321a.getAdChoicesContent();
        if (adChoicesContent == null) {
            return null;
        }
        return BinderC7110d.m21058a(adChoicesContent);
    }
}
