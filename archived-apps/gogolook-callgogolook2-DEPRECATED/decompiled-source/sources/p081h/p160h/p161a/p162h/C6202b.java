package p081h.p160h.p161a.p162h;

import android.content.Context;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import com.aotter.net.trek.model.CatWalkWebPayload;
import com.mopub.nativeads.AotterTrekCustomEvent;
import com.mopub.nativeads.BaseNativeAd;
import com.mopub.nativeads.BaseNativeAdRenderer;
import com.mopub.nativeads.MoPubAdRenderer;
import com.mopub.nativeads.NativeAd;
import com.mopub.nativeads.Utils;
import gogolook.callgogolook2.realm.obj.iap.IapProductRealmObject;
import kotlin.Metadata;
import p081h.p160h.p161a.p162h.AbstractC6207d;
import p626l.C14986p;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018�� \u00192\u00020\u00012\u00020\u0002:\u0001\u0019B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u0012\u0010\b\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016J\b\u0010\f\u001a\u00020\tH\u0016J\n\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016J\u001e\u0010\u000f\u001a\u0004\u0018\u00010\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u00122\b\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016J\u0010\u0010\u0013\u001a\u00020\t2\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J\u0012\u0010\u0016\u001a\u00020\t2\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0016¨\u0006\u001a"}, m815d2 = {"Lcom/gogolook/adsdk/adobject/AotterTrekAdObject;", "Lcom/gogolook/adsdk/adobject/BaseAdObject;", "Lcom/gogolook/adsdk/adobject/INativeAdObject;", CatWalkWebPayload.CATWALK_AD_KEY, "", IapProductRealmObject.EXPIRED_TIME, "", "(Ljava/lang/Object;I)V", "clearAd", "", "adContainer", "Landroid/view/ViewGroup;", "destroy", "getAdContent", "Lcom/gogolook/adsdk/adobject/AdContent;", "renderAd", "Landroid/view/View;", "context", "Landroid/content/Context;", "setAdCustomActionListener", "customActionListener", "Lcom/mopub/nativeads/BaseNativeAdRenderer$AdCustomActionListener;", "setAdEventListener", "listener", "Lcom/gogolook/adsdk/adobject/BaseAdObject$AdEventListener;", "Companion", "adsdk_whoscallRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: h.h.a.h.b */
/* loaded from: classes2-dex2jar.jar:h/h/a/h/b.class */
public final class C6202b extends AbstractC6207d implements AbstractC6210e {

    /* renamed from: h.h.a.h.b$a */
    /* loaded from: classes2-dex2jar.jar:h/h/a/h/b$a.class */
    public static final class C6203a {
        public C6203a() {
        }

        public /* synthetic */ C6203a(C15145g gVar) {
            this();
        }
    }

    /* renamed from: h.h.a.h.b$b */
    /* loaded from: classes2-dex2jar.jar:h/h/a/h/b$b.class */
    public static final class C6204b implements NativeAd.MoPubNativeEventListener {
        public C6204b() {
        }

        @Override // com.mopub.nativeads.NativeAd.MoPubNativeEventListener
        public void onClick(View view) {
            AbstractC6207d.AbstractC6208a d = C6202b.this.m23576d();
            if (d != null) {
                d.mo5002a();
            }
        }

        @Override // com.mopub.nativeads.NativeAd.MoPubNativeEventListener
        public void onImpression(View view) {
            AbstractC6207d.AbstractC6208a d = C6202b.this.m23576d();
            if (d != null) {
                d.onAdImpression();
            }
        }
    }

    static {
        new C6203a(null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6202b(Object obj, int i) {
        super(obj, i);
        C15149k.m377b(obj, CatWalkWebPayload.CATWALK_AD_KEY);
    }

    @Override // p081h.p160h.p161a.p162h.AbstractC6207d
    /* renamed from: a */
    public View mo23572a(Context context, ViewGroup viewGroup) {
        NativeAd e;
        if (context == null || viewGroup == null || (e = m23575e()) == null) {
            return null;
        }
        try {
            e.clear(viewGroup);
            mo23571a(viewGroup);
            View createAdView = e.createAdView(context, viewGroup);
            viewGroup.addView(createAdView);
            e.prepare(createAdView);
            e.renderAdView(createAdView);
            viewGroup.setVisibility(0);
            return createAdView;
        } catch (Exception e2) {
            Log.e("AotterTrekAdObject", "Render failed", e2);
            return null;
        }
    }

    @Override // p081h.p160h.p161a.p162h.AbstractC6210e
    /* renamed from: a */
    public C6201a mo23573a() {
        String adNSourceName;
        NativeAd e = m23575e();
        BaseNativeAd baseNativeAd = e != null ? e.getBaseNativeAd() : null;
        BaseNativeAd baseNativeAd2 = baseNativeAd;
        if (!(baseNativeAd instanceof AotterTrekCustomEvent.AotterTrekStaticAd)) {
            baseNativeAd2 = null;
        }
        AotterTrekCustomEvent.AotterTrekStaticAd aotterTrekStaticAd = (AotterTrekCustomEvent.AotterTrekStaticAd) baseNativeAd2;
        if (aotterTrekStaticAd == null || (adNSourceName = Utils.getAdNSourceName(aotterTrekStaticAd)) == null) {
            return null;
        }
        String label = aotterTrekStaticAd.getLabel();
        int hashCode = label.hashCode();
        if (hashCode == -721985618 ? !label.equals(AotterTrekCustomEvent.AotterTrekStaticAd.LABEL_SMS_NATIVE_BANNER) : hashCode != 1722935546 || !label.equals(AotterTrekCustomEvent.AotterTrekStaticAd.LABEL_CED_NATIVE_FULL)) {
            return new C6201a(adNSourceName, "", "");
        }
        String title = aotterTrekStaticAd.getTitle();
        if (title == null) {
            title = "";
        }
        String text = aotterTrekStaticAd.getText();
        if (text == null) {
            text = "";
        }
        return new C6201a(adNSourceName, title, text);
    }

    @Override // p081h.p160h.p161a.p162h.AbstractC6207d
    /* renamed from: a */
    public void mo23571a(ViewGroup viewGroup) {
        if (viewGroup != null) {
            if (!(viewGroup.getChildCount() > 0)) {
                viewGroup = null;
            }
            if (viewGroup != null) {
                viewGroup.removeAllViews();
            }
        }
    }

    @Override // p081h.p160h.p161a.p162h.AbstractC6207d
    /* renamed from: a */
    public void mo23570a(BaseNativeAdRenderer.AdCustomActionListener adCustomActionListener) {
        C15149k.m377b(adCustomActionListener, "customActionListener");
        NativeAd e = m23575e();
        if (e != null && (e.getMoPubAdRenderer() instanceof BaseNativeAdRenderer)) {
            MoPubAdRenderer moPubAdRenderer = e.getMoPubAdRenderer();
            if (moPubAdRenderer != null) {
                ((BaseNativeAdRenderer) moPubAdRenderer).adCustomActionListener = adCustomActionListener;
                return;
            }
            throw new C14986p("null cannot be cast to non-null type com.mopub.nativeads.BaseNativeAdRenderer");
        }
    }

    @Override // p081h.p160h.p161a.p162h.AbstractC6207d
    /* renamed from: a */
    public void mo23569a(AbstractC6207d.AbstractC6208a aVar) {
        m23578b(aVar);
        NativeAd e = m23575e();
        if (e != null) {
            e.setMoPubNativeEventListener(new C6204b());
        }
    }

    @Override // p081h.p160h.p161a.p162h.AbstractC6207d
    /* renamed from: b */
    public void mo23568b() {
        NativeAd e = m23575e();
        if (e != null) {
            e.setMoPubNativeEventListener(null);
            e.destroy();
        }
        m23579a((Object) null);
    }
}
