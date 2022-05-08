package p081h.p160h.p161a.p170p;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.net.Uri;
import android.util.ArrayMap;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.flurry.sdk.C2988dp;
import com.gogolook.adsdk.R$drawable;
import kotlin.Metadata;
import p081h.p119d.p120a.C5769g;
import p081h.p119d.p120a.C5775k;
import p081h.p119d.p120a.C5776l;
import p081h.p119d.p120a.C5780o;
import p081h.p119d.p120a.p124s.p126i.EnumC5827b;
import p081h.p119d.p120a.p124s.p134k.p137g.AbstractC5979b;
import p081h.p119d.p120a.p124s.p134k.p139i.C5988b;
import p081h.p119d.p120a.p145w.AbstractC6057f;
import p081h.p119d.p120a.p145w.p147j.AbstractC6082k;
import p081h.p160h.p161a.p165k.C6232c;
import p622k.p623a.p624a.p625a.C14698a;
import p626l.AbstractC14974f;
import p626l.C14975g;
import p626l.C14986p;
import p626l.p629c0.AbstractC14906i;
import p626l.p631e0.C14966w;
import p626l.p631e0.C14967x;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15131a0;
import p626l.p641z.p643d.C15149k;
import p626l.p641z.p643d.C15157s;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��|\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u0015\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000f\bÆ\u0002\u0018��2\u00020\u0001:\u0003opqB\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010J\u001a\u00020\n2\u0006\u0010K\u001a\u00020\u000eH\u0007J\u0012\u0010L\u001a\u0004\u0018\u00010M2\u0006\u0010N\u001a\u00020OH\u0007J\u0010\u0010P\u001a\u00020\n2\u0006\u0010Q\u001a\u00020(H\u0007J\u0010\u0010R\u001a\u00020\n2\u0006\u0010Q\u001a\u00020(H\u0007J\n\u0010S\u001a\u0004\u0018\u00010(H\u0007J\n\u0010T\u001a\u0004\u0018\u00010(H\u0007JH\u0010U\u001a\u00020V2\b\u0010W\u001a\u0004\u0018\u00010\u00012\b\u0010X\u001a\u0004\u0018\u00010Y2\u0006\u0010Z\u001a\u00020-2\b\b\u0002\u0010[\u001a\u00020-2\u0006\u0010\\\u001a\u00020\n2\u0006\u0010]\u001a\u00020^2\b\u0010_\u001a\u0004\u0018\u00010`H\u0007J\u001a\u0010a\u001a\u00020V2\u0006\u0010b\u001a\u00020c2\b\u0010W\u001a\u0004\u0018\u00010\u0001H\u0007J\u0010\u0010d\u001a\u00020\u000e2\u0006\u0010e\u001a\u00020\u000eH\u0007J\u001a\u0010f\u001a\u00020V2\b\u0010g\u001a\u0004\u0018\u00010O2\u0006\u0010K\u001a\u00020\u000eH\u0007J\"\u0010h\u001a\u00020V2\u0006\u0010Q\u001a\u00020(2\b\u0010i\u001a\u0004\u0018\u00010(2\u0006\u0010j\u001a\u00020-H\u0007J\u001a\u0010k\u001a\u00020V2\u0006\u0010Q\u001a\u00020(2\b\u0010l\u001a\u0004\u0018\u00010(H\u0007J\u0012\u0010H\u001a\u00020V2\b\u0010i\u001a\u0004\u0018\u00010(H\u0007J\u0010\u0010m\u001a\u00020\u000e2\u0006\u0010n\u001a\u00020\u000eH\u0007R\u001b\u0010\u0003\u001a\u00020\u00048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\u0005\u0010\u0006R\u0010\u0010\t\u001a\u00020\n8\u0006X\u0087D¢\u0006\u0002\n��R\u0010\u0010\u000b\u001a\u00020\n8\u0006X\u0087D¢\u0006\u0002\n��R\u0010\u0010\f\u001a\u00020\n8\u0006X\u0087D¢\u0006\u0002\n��R\u000e\u0010\r\u001a\u00020\u000eX\u0082T¢\u0006\u0002\n��R\u000e\u0010\u000f\u001a\u00020\nX\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0010\u001a\u00020\nX\u0082T¢\u0006\u0002\n��R!\u0010\u0011\u001a\u00020\n8FX\u0087\u0084\u0002¢\u0006\u0012\n\u0004\b\u0015\u0010\b\u0012\u0004\b\u0012\u0010\u0002\u001a\u0004\b\u0013\u0010\u0014R!\u0010\u0016\u001a\u00020\n8FX\u0087\u0084\u0002¢\u0006\u0012\n\u0004\b\u0019\u0010\b\u0012\u0004\b\u0017\u0010\u0002\u001a\u0004\b\u0018\u0010\u0014R!\u0010\u001a\u001a\u00020\n8FX\u0087\u0084\u0002¢\u0006\u0012\n\u0004\b\u001d\u0010\b\u0012\u0004\b\u001b\u0010\u0002\u001a\u0004\b\u001c\u0010\u0014R!\u0010\u001e\u001a\u00020\n8FX\u0087\u0084\u0002¢\u0006\u0012\n\u0004\b!\u0010\b\u0012\u0004\b\u001f\u0010\u0002\u001a\u0004\b \u0010\u0014R!\u0010\"\u001a\u00020\n8FX\u0087\u0084\u0002¢\u0006\u0012\n\u0004\b%\u0010\b\u0012\u0004\b#\u0010\u0002\u001a\u0004\b$\u0010\u0014R'\u0010&\u001a\u000e\u0012\u0004\u0012\u00020(\u0012\u0004\u0012\u00020\n0'8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b+\u0010\b\u001a\u0004\b)\u0010*R'\u0010,\u001a\u000e\u0012\u0004\u0012\u00020(\u0012\u0004\u0012\u00020-0'8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b/\u0010\b\u001a\u0004\b.\u0010*R'\u00100\u001a\u000e\u0012\u0004\u0012\u00020(\u0012\u0004\u0012\u00020\n0'8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b2\u0010\b\u001a\u0004\b1\u0010*R&\u00103\u001a\u0004\u0018\u0001048\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n��\u0012\u0004\b5\u0010\u0002\u001a\u0004\b6\u00107\"\u0004\b8\u00109R\u001a\u0010:\u001a\u00020\n8GX\u0087\u0004¢\u0006\f\u0012\u0004\b;\u0010\u0002\u001a\u0004\b<\u0010\u0014R&\u0010=\u001a\u0004\u0018\u00010>8\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n��\u0012\u0004\b?\u0010\u0002\u001a\u0004\b@\u0010A\"\u0004\bB\u0010CR,\u0010E\u001a\u00020\n2\u0006\u0010D\u001a\u00020\n8\u0006@BX\u0087\u000e¢\u0006\u0014\n��\u0012\u0004\bF\u0010\u0002\u001a\u0004\bG\u0010\u0014\"\u0004\bH\u0010I¨\u0006r"}, m815d2 = {"Lcom/gogolook/adsdk/utils/UtilsAdRenderer;", "", "()V", "ADMOB_ICON_RESOURCES", "", "getADMOB_ICON_RESOURCES", "()[I", "ADMOB_ICON_RESOURCES$delegate", "Lkotlin/Lazy;", "CLOSE_BTN_TYPE_IN_AD", "", "CLOSE_BTN_TYPE_NOT_SHOW", "CLOSE_BTN_TYPE_OUT_OF_AD", "DEFAULT_CLOSE_BTN_PADDING_IN_DP_15", "", "DEFAULT_CLOSE_BTN_PADDING_IN_PX_5", "DEFAULT_SMS_AD_PADDING", "DP2PX_15", "DP2PX_15$annotations", "getDP2PX_15", "()I", "DP2PX_15$delegate", "DP2PX_16", "DP2PX_16$annotations", "getDP2PX_16", "DP2PX_16$delegate", "DP2PX_230", "DP2PX_230$annotations", "getDP2PX_230", "DP2PX_230$delegate", "DP2PX_49", "DP2PX_49$annotations", "getDP2PX_49", "DP2PX_49$delegate", "DP2PX_7", "DP2PX_7$annotations", "getDP2PX_7", "DP2PX_7$delegate", "adCloseBtnPadding", "Landroid/util/ArrayMap;", "", "getAdCloseBtnPadding", "()Landroid/util/ArrayMap;", "adCloseBtnPadding$delegate", "adCloseBtnPaddingIsInDpMap", "", "getAdCloseBtnPaddingIsInDpMap", "adCloseBtnPaddingIsInDpMap$delegate", "adCloseBtnType", "getAdCloseBtnType", "adCloseBtnType$delegate", "contentHelper", "Lcom/gogolook/adsdk/utils/UtilsAdRenderer$ContentHelper;", "contentHelper$annotations", "getContentHelper", "()Lcom/gogolook/adsdk/utils/UtilsAdRenderer$ContentHelper;", "setContentHelper", "(Lcom/gogolook/adsdk/utils/UtilsAdRenderer$ContentHelper;)V", "defaultAdIconRandomly", "defaultAdIconRandomly$annotations", "getDefaultAdIconRandomly", "scaleHelper", "Lcom/gogolook/adsdk/utils/UtilsAdRenderer$ScaleHelper;", "scaleHelper$annotations", "getScaleHelper", "()Lcom/gogolook/adsdk/utils/UtilsAdRenderer$ScaleHelper;", "setScaleHelper", "(Lcom/gogolook/adsdk/utils/UtilsAdRenderer$ScaleHelper;)V", "<set-?>", "smsAdPadding", "smsAdPadding$annotations", "getSmsAdPadding", "setSmsAdPadding", "(I)V", "dp2px", C2988dp.f4663j, "getActivityFromView", "Landroid/app/Activity;", "view", "Landroid/view/View;", "getAdCloseBtnPaddingByAdUnit", "adUnitName", "getAdCloseBtnTypeByAdUnit", "getDefaultCtaText", "getSponsoredText", "loadAdPhoto", "", "imageSource", "imgView", "Landroid/widget/ImageView;", "isSupportGif", "isNeedCheckActivityAlive", "cornerRadiusInDp", "cornerType", "Ljp/wasabeef/glide/transformations/RoundedCornersTransformation$CornerType;", "imageLoadListener", "Lcom/gogolook/adsdk/utils/UtilsAdRenderer$ImageLoadListener;", "preloadImageSource", "context", "Landroid/content/Context;", "px2dp", "px", "setAdChoiceViewSize", "adChoiceView", "setAdCloseBtnPaddingByAdUnit", "padding", "inPx", "setAdCloseBtnTypeByAdUnit", "type", "sp2px", "sp", "ContentHelper", "ImageLoadListener", "ScaleHelper", "adsdk_whoscallRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: h.h.a.p.d */
/* loaded from: classes2-dex2jar.jar:h/h/a/p/d.class */
public final class C6272d {

    /* renamed from: a */
    public static final /* synthetic */ AbstractC14906i[] f15540a;

    /* renamed from: b */
    public static AbstractC6281i f15541b;

    /* renamed from: c */
    public static AbstractC6274b f15542c;

    /* renamed from: h */
    public static final int f15547h = 0;

    /* renamed from: n */
    public static final C6272d f15553n = new C6272d();

    /* renamed from: d */
    public static final AbstractC14974f f15543d = C14975g.m662a(C6282j.f15560a);

    /* renamed from: e */
    public static final AbstractC14974f f15544e = C14975g.m662a(C6283k.f15561a);

    /* renamed from: f */
    public static final AbstractC14974f f15545f = C14975g.m662a(C6284l.f15562a);

    /* renamed from: g */
    public static int f15546g = 6;

    /* renamed from: i */
    public static final int f15548i = 1;

    /* renamed from: j */
    public static final int f15549j = 2;

    /* renamed from: k */
    public static final AbstractC14974f f15550k = C14975g.m662a(C6279g.f15559a);

    /* renamed from: l */
    public static final AbstractC14974f f15551l = C14975g.m662a(C6275c.f15555a);

    /* renamed from: m */
    public static final AbstractC14974f f15552m = C14975g.m662a(C6277e.f15557a);

    /* renamed from: h.h.a.p.d$a */
    /* loaded from: classes2-dex2jar.jar:h/h/a/p/d$a.class */
    public static final class C6273a extends AbstractC15150l implements AbstractC15107a<int[]> {

        /* renamed from: a */
        public static final C6273a f15554a = new C6273a();

        public C6273a() {
            super(0);
        }

        @Override // p626l.p641z.p642c.AbstractC15107a
        public final int[] invoke() {
            return new int[]{R$drawable.icon_ad_circle_board, R$drawable.icon_ad_circle_card, R$drawable.icon_ad_circle_speaker, R$drawable.icon_ad_full_board, R$drawable.icon_ad_full_card, R$drawable.icon_ad_full_speaker};
        }
    }

    /* renamed from: h.h.a.p.d$b */
    /* loaded from: classes2-dex2jar.jar:h/h/a/p/d$b.class */
    public interface AbstractC6274b {
        /* renamed from: a */
        String mo23412a();

        /* renamed from: b */
        String mo23411b();
    }

    /* renamed from: h.h.a.p.d$c */
    /* loaded from: classes2-dex2jar.jar:h/h/a/p/d$c.class */
    public static final class C6275c extends AbstractC15150l implements AbstractC15107a<Integer> {

        /* renamed from: a */
        public static final C6275c f15555a = new C6275c();

        public C6275c() {
            super(0);
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [int, java.lang.Integer] */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final Integer invoke() {
            return C6272d.m23432a(15.0f);
        }
    }

    /* renamed from: h.h.a.p.d$d */
    /* loaded from: classes2-dex2jar.jar:h/h/a/p/d$d.class */
    public static final class C6276d extends AbstractC15150l implements AbstractC15107a<Integer> {

        /* renamed from: a */
        public static final C6276d f15556a = new C6276d();

        public C6276d() {
            super(0);
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [int, java.lang.Integer] */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final Integer invoke() {
            return C6272d.m23432a(16.0f);
        }
    }

    /* renamed from: h.h.a.p.d$e */
    /* loaded from: classes2-dex2jar.jar:h/h/a/p/d$e.class */
    public static final class C6277e extends AbstractC15150l implements AbstractC15107a<Integer> {

        /* renamed from: a */
        public static final C6277e f15557a = new C6277e();

        public C6277e() {
            super(0);
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [int, java.lang.Integer] */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final Integer invoke() {
            return C6272d.m23432a(230.0f);
        }
    }

    /* renamed from: h.h.a.p.d$f */
    /* loaded from: classes2-dex2jar.jar:h/h/a/p/d$f.class */
    public static final class C6278f extends AbstractC15150l implements AbstractC15107a<Integer> {

        /* renamed from: a */
        public static final C6278f f15558a = new C6278f();

        public C6278f() {
            super(0);
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [int, java.lang.Integer] */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final Integer invoke() {
            return C6272d.m23432a(49.0f);
        }
    }

    /* renamed from: h.h.a.p.d$g */
    /* loaded from: classes2-dex2jar.jar:h/h/a/p/d$g.class */
    public static final class C6279g extends AbstractC15150l implements AbstractC15107a<Integer> {

        /* renamed from: a */
        public static final C6279g f15559a = new C6279g();

        public C6279g() {
            super(0);
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [int, java.lang.Integer] */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final Integer invoke() {
            return C6272d.m23432a(7.0f);
        }
    }

    /* renamed from: h.h.a.p.d$h */
    /* loaded from: classes2-dex2jar.jar:h/h/a/p/d$h.class */
    public interface AbstractC6280h {
        void onImageLoadFail();

        void onImageLoadSuccess();
    }

    /* renamed from: h.h.a.p.d$i */
    /* loaded from: classes2-dex2jar.jar:h/h/a/p/d$i.class */
    public interface AbstractC6281i {
        /* renamed from: a */
        int mo23410a(float f);
    }

    /* renamed from: h.h.a.p.d$j */
    /* loaded from: classes2-dex2jar.jar:h/h/a/p/d$j.class */
    public static final class C6282j extends AbstractC15150l implements AbstractC15107a<ArrayMap<String, Integer>> {

        /* renamed from: a */
        public static final C6282j f15560a = new C6282j();

        public C6282j() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final ArrayMap<String, Integer> invoke() {
            return new ArrayMap<>();
        }
    }

    /* renamed from: h.h.a.p.d$k */
    /* loaded from: classes2-dex2jar.jar:h/h/a/p/d$k.class */
    public static final class C6283k extends AbstractC15150l implements AbstractC15107a<ArrayMap<String, Boolean>> {

        /* renamed from: a */
        public static final C6283k f15561a = new C6283k();

        public C6283k() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final ArrayMap<String, Boolean> invoke() {
            return new ArrayMap<>();
        }
    }

    /* renamed from: h.h.a.p.d$l */
    /* loaded from: classes2-dex2jar.jar:h/h/a/p/d$l.class */
    public static final class C6284l extends AbstractC15150l implements AbstractC15107a<ArrayMap<String, Integer>> {

        /* renamed from: a */
        public static final C6284l f15562a = new C6284l();

        public C6284l() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final ArrayMap<String, Integer> invoke() {
            return new ArrayMap<>();
        }
    }

    /* renamed from: h.h.a.p.d$m */
    /* loaded from: classes2-dex2jar.jar:h/h/a/p/d$m.class */
    public static final class C6285m implements AbstractC6057f<String, C5988b> {

        /* renamed from: a */
        public final /* synthetic */ AbstractC6280h f15563a;

        public C6285m(AbstractC6280h hVar) {
            this.f15563a = hVar;
        }

        /* renamed from: a  reason: avoid collision after fix types in other method */
        public boolean mo3711a(C5988b bVar, String str, AbstractC6082k<C5988b> kVar, boolean z, boolean z2) {
            AbstractC6280h hVar = this.f15563a;
            if (hVar == null) {
                return false;
            }
            hVar.onImageLoadSuccess();
            return false;
        }

        /* renamed from: a  reason: avoid collision after fix types in other method */
        public boolean mo3713a(Exception exc, String str, AbstractC6082k<C5988b> kVar, boolean z) {
            AbstractC6280h hVar = this.f15563a;
            if (hVar == null) {
                return false;
            }
            hVar.onImageLoadFail();
            return false;
        }
    }

    /* renamed from: h.h.a.p.d$n */
    /* loaded from: classes2-dex2jar.jar:h/h/a/p/d$n.class */
    public static final class C6286n implements AbstractC6057f<Comparable<?>, AbstractC5979b> {

        /* renamed from: a */
        public final /* synthetic */ AbstractC6280h f15564a;

        public C6286n(AbstractC6280h hVar) {
            this.f15564a = hVar;
        }

        /* renamed from: a  reason: avoid collision after fix types in other method */
        public boolean mo3711a(AbstractC5979b bVar, Comparable<?> comparable, AbstractC6082k<AbstractC5979b> kVar, boolean z, boolean z2) {
            AbstractC6280h hVar = this.f15564a;
            if (hVar == null) {
                return false;
            }
            hVar.onImageLoadSuccess();
            return false;
        }

        /* renamed from: a  reason: avoid collision after fix types in other method */
        public boolean mo3713a(Exception exc, Comparable<?> comparable, AbstractC6082k<AbstractC5979b> kVar, boolean z) {
            AbstractC6280h hVar = this.f15564a;
            if (hVar == null) {
                return false;
            }
            hVar.onImageLoadFail();
            return false;
        }
    }

    static {
        C15157s sVar = new C15157s(C15131a0.m419a(C6272d.class), "ADMOB_ICON_RESOURCES", "getADMOB_ICON_RESOURCES()[I");
        C15131a0.m412a(sVar);
        C15157s sVar2 = new C15157s(C15131a0.m419a(C6272d.class), "adCloseBtnPadding", "getAdCloseBtnPadding()Landroid/util/ArrayMap;");
        C15131a0.m412a(sVar2);
        C15157s sVar3 = new C15157s(C15131a0.m419a(C6272d.class), "adCloseBtnPaddingIsInDpMap", "getAdCloseBtnPaddingIsInDpMap()Landroid/util/ArrayMap;");
        C15131a0.m412a(sVar3);
        C15157s sVar4 = new C15157s(C15131a0.m419a(C6272d.class), "adCloseBtnType", "getAdCloseBtnType()Landroid/util/ArrayMap;");
        C15131a0.m412a(sVar4);
        C15157s sVar5 = new C15157s(C15131a0.m419a(C6272d.class), "DP2PX_7", "getDP2PX_7()I");
        C15131a0.m412a(sVar5);
        C15157s sVar6 = new C15157s(C15131a0.m419a(C6272d.class), "DP2PX_15", "getDP2PX_15()I");
        C15131a0.m412a(sVar6);
        C15157s sVar7 = new C15157s(C15131a0.m419a(C6272d.class), "DP2PX_16", "getDP2PX_16()I");
        C15131a0.m412a(sVar7);
        C15157s sVar8 = new C15157s(C15131a0.m419a(C6272d.class), "DP2PX_49", "getDP2PX_49()I");
        C15131a0.m412a(sVar8);
        C15157s sVar9 = new C15157s(C15131a0.m419a(C6272d.class), "DP2PX_230", "getDP2PX_230()I");
        C15131a0.m412a(sVar9);
        f15540a = new AbstractC14906i[]{sVar, sVar2, sVar3, sVar4, sVar5, sVar6, sVar7, sVar8, sVar9};
        C14975g.m662a(C6273a.f15554a);
        C14975g.m662a(C6276d.f15556a);
        C14975g.m662a(C6278f.f15558a);
    }

    /* renamed from: a */
    public static final int m23432a(float f) {
        AbstractC6281i iVar = f15541b;
        return iVar != null ? iVar.mo23410a(f) : 0;
    }

    /* renamed from: a */
    public static final int m23425a(String str) {
        C15149k.m377b(str, "adUnitName");
        Integer num = f15553n.m23433a().get(str);
        return num != null ? num.intValue() : C15149k.m384a((Object) f15553n.m23422b().get(str), (Object) true) ? m23432a(15.0f) : 5;
    }

    /* renamed from: a */
    public static final Activity m23430a(View view) {
        C15149k.m377b(view, "view");
        for (Context context = view.getContext(); context instanceof ContextWrapper; context = ((ContextWrapper) context).getBaseContext()) {
            if (context instanceof Activity) {
                return (Activity) context;
            }
        }
        return null;
    }

    /* renamed from: a */
    public static final void m23431a(Context context, Object obj) {
        C15149k.m377b(context, "context");
        Context applicationContext = context.getApplicationContext();
        if (applicationContext != null) {
            Comparable comparable = null;
            if (obj instanceof String) {
                if (!(((String) obj).length() > 0)) {
                    obj = null;
                }
                comparable = (Comparable) obj;
            } else if (obj instanceof Uri) {
                comparable = (Comparable) obj;
            }
            if (comparable != null) {
                C5769g a = C5776l.m24470c(applicationContext).m24451a((C5780o) comparable);
                a.mo24502a(EnumC5827b.SOURCE);
                a.m24509h();
            }
        }
    }

    /* renamed from: a */
    public static final void m23429a(View view, float f) {
        if (view != null) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            int a = m23432a(f);
            layoutParams.width = a;
            layoutParams.height = a;
            view.setLayoutParams(layoutParams);
        }
    }

    /* renamed from: a */
    public static final void m23428a(AbstractC6274b bVar) {
        f15542c = bVar;
    }

    /* renamed from: a */
    public static final void m23427a(AbstractC6281i iVar) {
        f15541b = iVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v6, types: [android.net.Uri] */
    /* renamed from: a */
    public static final void m23426a(Object obj, ImageView imageView, boolean z, boolean z2, int i, C14698a.EnumC14700b bVar, AbstractC6280h hVar) {
        String str;
        String str2;
        Activity a;
        C15149k.m377b(bVar, "cornerType");
        if (obj instanceof Uri) {
            str = null;
            str2 = (Uri) obj;
        } else if (obj instanceof String) {
            str = (String) obj;
            str2 = null;
        } else {
            str = null;
            str2 = null;
        }
        if (((str == null || str.length() == 0) && str2 == null) || imageView == null) {
            return;
        }
        if (!z2 || (a = m23430a(imageView)) == null || C6268a.m23444a(a)) {
            Context context = imageView.getContext();
            C15149k.m383a((Object) context, "imgView.context");
            Context applicationContext = context.getApplicationContext();
            if (applicationContext != null) {
                C14698a aVar = new C14698a(applicationContext, m23432a(i), 0, bVar);
                if (!(str == null || str.length() == 0)) {
                    if (str == null) {
                        C15149k.m378b();
                        throw null;
                    } else if (C14966w.m717a(str, ".gif", true) && z) {
                        C5775k<String> m = C5776l.m24470c(applicationContext).m24450a(str).m24523m();
                        m.mo24502a(EnumC5827b.SOURCE);
                        m.mo24501a((AbstractC6057f<? super String, C5988b>) new C6285m(hVar));
                        m.mo24518a(imageView);
                        return;
                    }
                }
                C5780o c = C5776l.m24470c(applicationContext);
                if (str == null || str.length() == 0) {
                    str = str2;
                }
                C5769g a2 = c.m24451a((C5780o) str);
                a2.m24530b(aVar);
                a2.mo24502a(EnumC5827b.ALL);
                a2.mo24501a((AbstractC6057f) new C6286n(hVar));
                a2.mo24518a(imageView);
            }
        }
    }

    /* renamed from: a */
    public static final void m23424a(String str, String str2) {
        C15149k.m377b(str, "adUnitName");
        if (str2 != null) {
            try {
                String str3 = str2.length() > 0 ? str2 : null;
                if (str3 != null) {
                    C6232c.m23514a("Dynamic-close_btn_type", "AdUnit : " + str + ".msg type : " + str2);
                    f15553n.m23420c().put(str, Integer.valueOf(Integer.parseInt(C14967x.m670f((CharSequence) str2).toString())));
                    if (str3 != null) {
                        return;
                    }
                }
            } catch (Exception e) {
                C6232c.m23513a(e);
                return;
            }
        }
        f15553n.m23420c().put(str, Integer.valueOf(f15547h));
    }

    /* renamed from: a */
    public static final void m23423a(String str, String str2, boolean z) {
        C15149k.m377b(str, "adUnitName");
        C6232c.m23514a("Dynamic-close_btn_Padding", "AdUnit: " + str + ", padding: " + str2 + ", inPx: " + z);
        f15553n.m23422b().put(str, Boolean.valueOf(z ^ true));
        if (str2 != null) {
            try {
                if (!(str2.length() > 0)) {
                    str2 = null;
                }
                if (str2 == null) {
                    return;
                }
                if (str2 != null) {
                    String obj = C14967x.m670f((CharSequence) str2).toString();
                    if (obj != null) {
                        f15553n.m23433a().put(str, Integer.valueOf(z ? Integer.parseInt(obj) : m23432a(Float.parseFloat(obj))));
                        return;
                    }
                    return;
                }
                throw new C14986p("null cannot be cast to non-null type kotlin.CharSequence");
            } catch (NumberFormatException e) {
                C6232c.m23513a(e);
            }
        }
    }

    /* renamed from: b */
    public static final int m23421b(String str) {
        C15149k.m377b(str, "adUnitName");
        Integer num = f15553n.m23420c().get(str);
        return num != null ? num.intValue() : f15547h;
    }

    /* renamed from: c */
    public static final void m23419c(String str) {
        int i;
        try {
            if (str != null) {
                if (str != null) {
                    String obj = C14967x.m670f((CharSequence) str).toString();
                    if (obj != null) {
                        i = Integer.parseInt(obj);
                        f15546g = i;
                    }
                } else {
                    throw new C14986p("null cannot be cast to non-null type kotlin.CharSequence");
                }
            }
            i = 6;
            f15546g = i;
        } catch (Exception e) {
            C6232c.m23513a(e);
        }
    }

    /* renamed from: d */
    public static final int m23418d() {
        AbstractC14974f fVar = f15551l;
        AbstractC14906i iVar = f15540a[5];
        return ((Number) fVar.getValue()).intValue();
    }

    /* renamed from: e */
    public static final int m23417e() {
        AbstractC14974f fVar = f15552m;
        AbstractC14906i iVar = f15540a[8];
        return ((Number) fVar.getValue()).intValue();
    }

    /* renamed from: f */
    public static final int m23416f() {
        AbstractC14974f fVar = f15550k;
        AbstractC14906i iVar = f15540a[4];
        return ((Number) fVar.getValue()).intValue();
    }

    /* renamed from: g */
    public static final String m23415g() {
        AbstractC6274b bVar = f15542c;
        return bVar != null ? bVar.mo23412a() : null;
    }

    /* renamed from: h */
    public static final int m23414h() {
        return f15546g;
    }

    /* renamed from: i */
    public static final String m23413i() {
        AbstractC6274b bVar = f15542c;
        return bVar != null ? bVar.mo23411b() : null;
    }

    /* renamed from: a */
    public final ArrayMap<String, Integer> m23433a() {
        AbstractC14974f fVar = f15543d;
        AbstractC14906i iVar = f15540a[1];
        return (ArrayMap) fVar.getValue();
    }

    /* renamed from: b */
    public final ArrayMap<String, Boolean> m23422b() {
        AbstractC14974f fVar = f15544e;
        AbstractC14906i iVar = f15540a[2];
        return (ArrayMap) fVar.getValue();
    }

    /* renamed from: c */
    public final ArrayMap<String, Integer> m23420c() {
        AbstractC14974f fVar = f15545f;
        AbstractC14906i iVar = f15540a[3];
        return (ArrayMap) fVar.getValue();
    }
}
