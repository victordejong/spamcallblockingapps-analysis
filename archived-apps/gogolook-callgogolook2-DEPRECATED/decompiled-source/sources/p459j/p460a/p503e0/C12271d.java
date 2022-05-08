package p459j.p460a.p503e0;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.view.ViewGroup;
import androidx.activity.ComponentActivity;
import androidx.collection.SparseArrayCompat;
import androidx.exifinterface.media.ExifInterface;
import androidx.lifecycle.Lifecycle;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.maps.model.LatLng;
import com.mopub.nativeads.BaseNativeAdRenderer;
import gogolook.callgogolook2.MyApplication;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.gson.NumberInfo;
import gogolook.callgogolook2.gson.RowInfo;
import gogolook.callgogolook2.gson.UserProfile;
import gogolook.callgogolook2.ndp.NdpWebActivity;
import gogolook.callgogolook2.p074ad.AdStatusController;
import gogolook.callgogolook2.p074ad.AdUnit;
import gogolook.callgogolook2.p074ad.AdUtils;
import gogolook.callgogolook2.p074ad.ExperimentalCallEndNdpApi;
import gogolook.callgogolook2.photo.NdpPhotoViewActivity;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import p081h.p160h.p161a.C6192e;
import p081h.p160h.p161a.EnumC6184a;
import p081h.p160h.p161a.p162h.AbstractC6207d;
import p081h.p160h.p161a.p163i.C6214a;
import p081h.p160h.p161a.p167m.AbstractC6258b;
import p081h.p160h.p161a.p168n.C6260a;
import p081h.p160h.p161a.p169o.C6262a;
import p081h.p160h.p161a.p170p.C6268a;
import p459j.p460a.p503e0.C12300f;
import p459j.p460a.p503e0.p504o.C12335a;
import p459j.p460a.p503e0.p504o.C12338b;
import p459j.p460a.p503e0.p504o.C12342c;
import p459j.p460a.p503e0.p504o.C12347d;
import p459j.p460a.p503e0.p504o.C12351e;
import p459j.p460a.p503e0.p504o.C12367f;
import p459j.p460a.p511h.AbstractC12391a;
import p459j.p460a.p511h.AbstractC12392b;
import p459j.p460a.p541n0.C13032a;
import p459j.p460a.p582w0.C14017g4;
import p459j.p460a.p582w0.C14080m2;
import p459j.p460a.p582w0.C14099o3;
import p459j.p460a.p582w0.C14123p4;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p582w0.p590x4.C14247d;
import p459j.p460a.p582w0.p590x4.C14261f;
import p459j.p460a.p613z0.p617p.C14666a;
import p626l.C14978j;
import p626l.C14989s;
import p626l.p631e0.C14966w;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p642c.AbstractC15118l;
import p626l.p641z.p642c.AbstractC15122p;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018�� I2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001IB\u000f\u0012\b\b\u0001\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J\u0006\u0010\u0013\u001a\u00020\u0010J\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\b\u0010\u0018\u001a\u00020\u0012H\u0016J\u0010\u0010\u0019\u001a\u00020\u00122\u0006\u0010\u001a\u001a\u00020\u0012H\u0016J \u0010\u001b\u001a\u0004\u0018\u0001H\u001c\"\u0006\b��\u0010\u001c\u0018\u00012\u0006\u0010\u0011\u001a\u00020\u0012H\u0082\b¢\u0006\u0002\u0010\u001dJ\u0006\u0010\u001e\u001a\u00020\fJ\u000e\u0010\u001f\u001a\u00020\u00102\u0006\u0010\u0006\u001a\u00020\u0007J\u0010\u0010 \u001a\u00020\u00102\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J3\u0010!\u001a\u00020\u00102\u0006\u0010\"\u001a\u00020\u00122!\u0010#\u001a\u001d\u0012\u0013\u0012\u00110\u0012¢\u0006\f\b%\u0012\b\b&\u0012\u0004\b\b(\u001a\u0012\u0004\u0012\u00020\u00100$H\u0002J\u0018\u0010'\u001a\u00020\u00102\u0006\u0010(\u001a\u00020\u00022\u0006\u0010\u001a\u001a\u00020\u0012H\u0016J\u0018\u0010)\u001a\u00020\u00022\u0006\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020\u0012H\u0016J\u0018\u0010-\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010.\u001a\u00020/H\u0002J\u000e\u00100\u001a\u00020\u00102\u0006\u0010\u0006\u001a\u00020\u0007J\u0018\u00101\u001a\u00020\u00102\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u00102\u001a\u000203H\u0002J \u00104\u001a\u00020\f2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u00105\u001a\u0002062\u0006\u00107\u001a\u000206H\u0002J\u0018\u00108\u001a\u00020\u00102\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u00102\u001a\u000203H\u0002J\u0018\u00109\u001a\u00020\u00102\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u00102\u001a\u000203H\u0002J\u0018\u0010:\u001a\u00020\u00102\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u00102\u001a\u000203H\u0002J\u0018\u0010;\u001a\u00020\u00102\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u00102\u001a\u000203H\u0002J\u0018\u0010<\u001a\u00020\u00102\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u00102\u001a\u000203H\u0002J\u000e\u0010=\u001a\u00020\u00102\u0006\u00102\u001a\u000203J\u0018\u0010>\u001a\u00020\u00102\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u00102\u001a\u000203H\u0002J\u0018\u0010?\u001a\u00020\u00102\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u00102\u001a\u000203H\u0002J\u0018\u0010@\u001a\u00020\u00102\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u00102\u001a\u000203H\u0002J\u0018\u0010A\u001a\u00020\u00102\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u00102\u001a\u000203H\u0002J\u0018\u0010B\u001a\u00020\u00102\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u00102\u001a\u000203H\u0002J\u0018\u0010C\u001a\u00020\u00102\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u00102\u001a\u000203H\u0002J\u0018\u0010D\u001a\u00020\u00102\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u00102\u001a\u000203H\u0002JZ\u0010E\u001a\u00020\u00102\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u00102\u001a\u0002032\u0006\u0010\u0011\u001a\u00020\u001228\u0010F\u001a4\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b%\u0012\b\b&\u0012\u0004\b\b(\u0006\u0012\u0013\u0012\u001103¢\u0006\f\b%\u0012\b\b&\u0012\u0004\b\b(2\u0012\u0006\u0012\u0004\u0018\u00010/0GH\u0002J\u0006\u0010H\u001a\u00020\u0010R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082.¢\u0006\u0002\n��R\u001a\u0010\b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\n0\tX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n��R\u0014\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000e0\tX\u0082\u000e¢\u0006\u0002\n��¨\u0006J"}, m815d2 = {"Lgogolook/callgogolook2/ndp/NdpInfoAdapter;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Lgogolook/callgogolook2/view/widget/BaseRecyclerViewHolder;", "adUnit", "Lgogolook/callgogolook2/ad/AdUnit;", "(Lgogolook/callgogolook2/ad/AdUnit;)V", "context", "Landroid/content/Context;", "delegateAdapters", "Landroidx/collection/SparseArrayCompat;", "Lgogolook/callgogolook2/adapter/ViewTypeDelegateAdapter;", "isNeedToShowAd", "", "typeDataArray", "Lgogolook/callgogolook2/ndp/NdpInfoViewData$TypeViewData;", "clearValueFromMap", "", "subType", "", "destroy", "generateAdViewData", "Lgogolook/callgogolook2/ndp/NdpInfoViewData$AdViewData;", "adObject", "Lcom/gogolook/adsdk/adobject/BaseAdObject;", "getItemCount", "getItemViewType", "position", "getValueFromMap", ExifInterface.GPS_DIRECTION_TRUE, "(I)Ljava/lang/Object;", "isAdDisplay", "loadAd", "notifyAdItemChanged", "notifyItem", "type", "notifyAction", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "onBindViewHolder", "holder", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "saveValueToMap", C13032a.f29462d, "Lgogolook/callgogolook2/adapter/ViewData;", "setContext", "setupAdData", "model", "Lgogolook/callgogolook2/ndp/NumberDetailContract$NumberDetailModel;", "setupAdItemFromCache", "adUnitName", "", "fillReason", "setupAddressData", "setupBlogReviewsOrInternetSearchResults", "setupBusinessHoursData", "setupCommunityReviewData", "setupContactInfoData", "setupData", "setupIntroductionData", "setupKeywordData", "setupLatLngData", "setupNumberData", "setupPhotoData", "setupRatingData", "setupServiceAreaData", "setupViewDataToMap", "generateViewData", "Lkotlin/Function2;", "trackAdContent", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.e0.d */
/* loaded from: classes3-dex2jar.jar:j/a/e0/d.class */
public final class C12271d extends RecyclerView.Adapter<C14666a> {

    /* renamed from: f */
    public static final C12272a f27710f = new C12272a(null);

    /* renamed from: a */
    public SparseArrayCompat<AbstractC12392b<C14666a>> f27711a = new SparseArrayCompat<>();

    /* renamed from: b */
    public SparseArrayCompat<C12300f.C12315o> f27712b = new SparseArrayCompat<>();

    /* renamed from: c */
    public boolean f27713c = true;

    /* renamed from: d */
    public Context f27714d;

    /* renamed from: e */
    public final AdUnit f27715e;

    /* renamed from: j.a.e0.d$a */
    /* loaded from: classes3-dex2jar.jar:j/a/e0/d$a.class */
    public static final class C12272a {
        public C12272a() {
        }

        public /* synthetic */ C12272a(C15145g gVar) {
            this();
        }

        /* renamed from: a */
        public final int m6466a(int i) {
            return (i / 100) * 100;
        }

        /* renamed from: b */
        public final float m6464b(int i) {
            return (i * 5.0f) / 100;
        }
    }

    /* renamed from: j.a.e0.d$b */
    /* loaded from: classes3-dex2jar.jar:j/a/e0/d$b.class */
    public static final class C12273b implements AbstractC6207d.AbstractC6208a {
        public C12273b() {
        }

        @Override // p081h.p160h.p161a.p162h.AbstractC6207d.AbstractC6208a
        /* renamed from: a */
        public void mo5002a() {
            C14247d.f31867v.m2028c(AdUnit.NDP);
            C12271d dVar = C12271d.this;
            dVar.m6496a(C12271d.m6480b(dVar));
        }

        @Override // p081h.p160h.p161a.p162h.AbstractC6207d.AbstractC6208a
        public void onAdImpression() {
            C14247d.f31867v.m2025d(AdUnit.NDP);
        }
    }

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0011\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��*\u0001��\b\n\u0018��2\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016¨\u0006\u0004"}, m815d2 = {"gogolook/callgogolook2/ndp/NdpInfoAdapter$generateAdViewData$2", "Lcom/mopub/nativeads/BaseNativeAdRenderer$AdCustomActionListener;", "onAdClosed", "", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
    /* renamed from: j.a.e0.d$c */
    /* loaded from: classes3-dex2jar.jar:j/a/e0/d$c.class */
    public static final class C12274c implements BaseNativeAdRenderer.AdCustomActionListener {

        /* renamed from: j.a.e0.d$c$a */
        /* loaded from: classes3-dex2jar.jar:j/a/e0/d$c$a.class */
        public static final class C12275a extends AbstractC15150l implements AbstractC15118l<Integer, C14989s> {
            public C12275a() {
                super(1);
            }

            /* renamed from: a */
            public final void m6462a(int i) {
                C12271d.this.f27713c = false;
                C12271d.this.m6499a(100);
                C12271d.this.notifyItemRemoved(i);
            }

            @Override // p626l.p641z.p642c.AbstractC15118l
            public /* bridge */ /* synthetic */ C14989s invoke(Integer num) {
                m6462a(num.intValue());
                return C14989s.f33022a;
            }
        }

        public C12274c() {
        }

        @Override // com.mopub.nativeads.BaseNativeAdRenderer.AdCustomActionListener
        public void onAdClosed() {
            C14261f.m1976a(C12271d.this.f27715e.toString());
            C14247d.C14259l lVar = C14247d.f31867v;
            lVar.m2039a(C12271d.this.f27715e, 1);
            lVar.m2031b(C12271d.this.f27715e);
            C12271d.this.m6497a(100, new C12275a());
        }
    }

    /* renamed from: j.a.e0.d$d */
    /* loaded from: classes3-dex2jar.jar:j/a/e0/d$d.class */
    public static final class C12276d implements AbstractC6258b {

        /* renamed from: b */
        public final /* synthetic */ Context f27720b;

        public C12276d(Context context) {
            this.f27720b = context;
        }

        @Override // p081h.p160h.p161a.p167m.AbstractC6258b
        /* renamed from: a */
        public void mo5004a(String str) {
            C15149k.m377b(str, "adUnitName");
            C14261f.m1975a(str, AdUtils.m28811a(str));
            List<C6260a> a = C6268a.m23442a(str);
            if (a != null) {
                C14261f.m1972a(a);
            }
            if (C12271d.this.f27713c) {
                C12271d dVar = C12271d.this;
                dVar.m6493a(this.f27720b, dVar.f27715e.m28821a(), C6262a.EnumC6267e.AD_FILL.m23446a());
            }
        }

        @Override // p081h.p160h.p161a.p167m.AbstractC6258b
        /* renamed from: b */
        public void mo5003b(String str) {
            C15149k.m377b(str, "adUnitName");
            C14247d.f31867v.m2034a(str);
            C14247d.f31867v.m2033a(str, C6262a.EnumC6267e.AD_REQUESTING.m23446a());
        }
    }

    /* renamed from: j.a.e0.d$e */
    /* loaded from: classes3-dex2jar.jar:j/a/e0/d$e.class */
    public static final class C12277e extends AbstractC15150l implements AbstractC15118l<Integer, C14989s> {

        /* renamed from: b */
        public final /* synthetic */ boolean f27722b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12277e(boolean z) {
            super(1);
            this.f27722b = z;
        }

        /* renamed from: a */
        public final void m6461a(int i) {
            if (this.f27722b) {
                C12271d.this.notifyItemChanged(i);
            } else {
                C12271d.this.notifyItemInserted(i);
            }
        }

        @Override // p626l.p641z.p642c.AbstractC15118l
        public /* bridge */ /* synthetic */ C14989s invoke(Integer num) {
            m6461a(num.intValue());
            return C14989s.f33022a;
        }
    }

    /* renamed from: j.a.e0.d$f */
    /* loaded from: classes3-dex2jar.jar:j/a/e0/d$f.class */
    public static final class C12278f extends AbstractC15150l implements AbstractC15122p<Context, C12328l, C12300f.C12302b> {

        /* renamed from: a */
        public static final C12278f f27723a = new C12278f();

        public C12278f() {
            super(2);
        }

        /* renamed from: a */
        public final C12300f.C12302b invoke(Context context, C12328l lVar) {
            C15149k.m377b(context, "<anonymous parameter 0>");
            C15149k.m377b(lVar, "model");
            NumberInfo e = lVar.m6365e();
            C12300f.C12302b bVar = null;
            if (e != null) {
                String g = e.m28328g();
                bVar = null;
                if (g != null) {
                    if (!(!C14966w.m724a((CharSequence) g))) {
                        g = null;
                    }
                    bVar = null;
                    if (g != null) {
                        bVar = new C12300f.C12302b(g, 0, 2, null);
                    }
                }
            }
            return bVar;
        }
    }

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0014\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\n¢\u0006\u0002\b\u0006"}, m815d2 = {"<anonymous>", "Lgogolook/callgogolook2/ndp/NdpInfoViewData$PublicSearchViewData;", "<anonymous parameter 0>", "Landroid/content/Context;", "model", "Lgogolook/callgogolook2/ndp/NumberDetailContract$NumberDetailModel;", "invoke"}, m814k = 3, m813mv = {1, 1, 13})
    /* renamed from: j.a.e0.d$g */
    /* loaded from: classes3-dex2jar.jar:j/a/e0/d$g.class */
    public static final class C12279g extends AbstractC15150l implements AbstractC15122p<Context, C12328l, C12300f.C12312l> {

        /* renamed from: a */
        public final /* synthetic */ Context f27724a;

        /* renamed from: j.a.e0.d$g$a */
        /* loaded from: classes3-dex2jar.jar:j/a/e0/d$g$a.class */
        public static final class C12280a extends AbstractC15150l implements AbstractC15118l<NumberInfo.PublicSearch, C14989s> {

            /* renamed from: b */
            public final /* synthetic */ String f27726b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C12280a(String str) {
                super(1);
                this.f27726b = str;
            }

            /* renamed from: a */
            public final void m6458a(NumberInfo.PublicSearch publicSearch) {
                C15149k.m377b(publicSearch, "it");
                Context context = C12279g.this.f27724a;
                String str = this.f27726b;
                NdpWebActivity.m26873a(context, str, publicSearch.url, 1, str, true);
            }

            @Override // p626l.p641z.p642c.AbstractC15118l
            public /* bridge */ /* synthetic */ C14989s invoke(NumberInfo.PublicSearch publicSearch) {
                m6458a(publicSearch);
                return C14989s.f33022a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12279g(Context context) {
            super(2);
            this.f27724a = context;
        }

        /* renamed from: a */
        public final C12300f.C12312l invoke(Context context, C12328l lVar) {
            RowInfo f;
            NumberInfo e;
            C12300f.C12312l lVar2;
            C15149k.m377b(context, "<anonymous parameter 0>");
            C15149k.m377b(lVar, "model");
            String d = lVar.m6366d();
            if (d == null || (f = lVar.m6364f()) == null || (e = lVar.m6365e()) == null) {
                return null;
            }
            RowInfo.Primary h = f.m28224h();
            RowInfo.Primary.Type type = h != null ? h.type : null;
            if (C14017g4.m2831E() || type == null || type == RowInfo.Primary.Type.NO_INFO) {
                return null;
            }
            List<NumberInfo.PublicSearch> I = e.m28387I();
            if (I != null) {
                if (!(I.size() > 0)) {
                    I = null;
                }
                if (I != null) {
                    lVar2 = new C12300f.C12312l(I, new C12280a(d), 0, 4, null);
                    return lVar2;
                }
            }
            lVar2 = null;
            return lVar2;
        }
    }

    /* renamed from: j.a.e0.d$h */
    /* loaded from: classes3-dex2jar.jar:j/a/e0/d$h.class */
    public static final class C12281h extends AbstractC15150l implements AbstractC15122p<Context, C12328l, AbstractC12391a> {

        /* renamed from: a */
        public static final C12281h f27727a = new C12281h();

        public C12281h() {
            super(2);
        }

        /* JADX WARN: Code restructure failed: missing block: B:13:0x0053, code lost:
            if ((r0.length() > 0) == true) goto L_0x005e;
         */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final p459j.p460a.p511h.AbstractC12391a invoke(android.content.Context r12, p459j.p460a.p503e0.C12328l r13) {
            /*
                r11 = this;
                r0 = r12
                java.lang.String r1 = "<anonymous parameter 0>"
                p626l.p641z.p643d.C15149k.m377b(r0, r1)
                r0 = r13
                java.lang.String r1 = "model"
                p626l.p641z.p643d.C15149k.m377b(r0, r1)
                r0 = r13
                gogolook.callgogolook2.gson.NumberInfo r0 = r0.m6365e()
                r14 = r0
                r0 = r14
                if (r0 == 0) goto L_0x0072
                r0 = r14
                java.util.Map r0 = r0.m28293u()
                r13 = r0
                r0 = r13
                l.j r0 = p459j.p460a.p582w0.C14123p4.m2427b(r0)
                r12 = r0
                r0 = r14
                java.lang.String r0 = r0.m28295t()
                r14 = r0
                r0 = r13
                boolean r0 = p459j.p460a.p582w0.C14123p4.m2422c(r0)
                r15 = r0
                r0 = r13
                r1 = r13
                r2 = r15
                java.lang.String r1 = p459j.p460a.p582w0.C14123p4.m2434a(r1, r2)
                r2 = 1
                java.lang.String r0 = p459j.p460a.p582w0.C14123p4.m2435a(r0, r1, r2)
                r13 = r0
                r0 = r12
                if (r0 != 0) goto L_0x005e
                r0 = r14
                if (r0 == 0) goto L_0x0059
                r0 = r14
                int r0 = r0.length()
                if (r0 <= 0) goto L_0x004d
                r0 = 1
                r16 = r0
                goto L_0x0050
            L_0x004d:
                r0 = 0
                r16 = r0
            L_0x0050:
                r0 = r16
                r1 = 1
                if (r0 != r1) goto L_0x0059
                goto L_0x005e
            L_0x0059:
                r0 = 0
                r12 = r0
                goto L_0x0070
            L_0x005e:
                j.a.e0.f$c r0 = new j.a.e0.f$c
                r1 = r0
                r2 = r12
                r3 = r14
                r4 = r15
                r5 = r13
                r6 = 0
                r7 = 0
                r8 = 48
                r9 = 0
                r1.<init>(r2, r3, r4, r5, r6, r7, r8, r9)
                r12 = r0
            L_0x0070:
                r0 = r12
                return r0
            L_0x0072:
                r0 = 0
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p503e0.C12271d.C12281h.invoke(android.content.Context, j.a.e0.l):j.a.h.a");
        }
    }

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0014\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\n¢\u0006\u0002\b\u0006"}, m815d2 = {"<anonymous>", "Lgogolook/callgogolook2/ndp/NdpInfoViewData$CommunityReviewViewData;", "<anonymous parameter 0>", "Landroid/content/Context;", "model", "Lgogolook/callgogolook2/ndp/NumberDetailContract$NumberDetailModel;", "invoke"}, m814k = 3, m813mv = {1, 1, 13})
    /* renamed from: j.a.e0.d$i */
    /* loaded from: classes3-dex2jar.jar:j/a/e0/d$i.class */
    public static final class C12282i extends AbstractC15150l implements AbstractC15122p<Context, C12328l, C12300f.C12304d> {

        /* renamed from: a */
        public static final C12282i f27728a = new C12282i();

        /* renamed from: j.a.e0.d$i$a */
        /* loaded from: classes3-dex2jar.jar:j/a/e0/d$i$a.class */
        public static final class C12283a extends AbstractC15150l implements AbstractC15107a<C14989s> {

            /* renamed from: a */
            public final /* synthetic */ C12328l f27729a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C12283a(C12328l lVar) {
                super(0);
                this.f27729a = lVar;
            }

            @Override // p626l.p641z.p642c.AbstractC15107a
            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2() {
                C12266b.m6510d("community_report");
                Context o = MyApplication.m29013o();
                C15149k.m383a((Object) o, "MyApplication.getGlobalContext()");
                C12317g.m6398a(o, this.f27729a);
            }
        }

        public C12282i() {
            super(2);
        }

        /* renamed from: a */
        public final C12300f.C12304d invoke(Context context, C12328l lVar) {
            C15149k.m377b(context, "<anonymous parameter 0>");
            C15149k.m377b(lVar, "model");
            NumberInfo e = lVar.m6365e();
            if (e != null) {
                return new C12300f.C12304d(e.m28394B(), e.m28392D(), new C12283a(lVar), 0, 8, null);
            }
            return null;
        }
    }

    /* renamed from: j.a.e0.d$j */
    /* loaded from: classes3-dex2jar.jar:j/a/e0/d$j.class */
    public static final class C12284j extends AbstractC15150l implements AbstractC15122p<Context, C12328l, AbstractC12391a> {

        /* renamed from: a */
        public static final C12284j f27730a = new C12284j();

        public C12284j() {
            super(2);
        }

        /* renamed from: a */
        public final AbstractC12391a invoke(Context context, C12328l lVar) {
            List<C14978j<String, String>> l;
            C12300f.C12305e eVar;
            C15149k.m377b(context, "<anonymous parameter 0>");
            C15149k.m377b(lVar, "model");
            NumberInfo e = lVar.m6365e();
            if (e == null || (l = e.m28311l()) == null) {
                return null;
            }
            StringBuilder sb = new StringBuilder();
            Iterator<T> it = l.iterator();
            while (true) {
                boolean z = false;
                if (!it.hasNext()) {
                    break;
                }
                C14978j jVar = (C14978j) it.next();
                String str = (String) jVar.m661a();
                String str2 = (String) jVar.m660b();
                C15149k.m383a((Object) str, UserProfile.KEY_CONTACT_INFO_VALUE);
                if (!C14966w.m724a((CharSequence) str)) {
                    C15149k.m383a((Object) str2, "type");
                    if (!C14966w.m724a((CharSequence) str2)) {
                        if (sb.length() > 0) {
                            z = true;
                        }
                        if (z) {
                            sb.append("\n\n");
                        }
                        if (C15149k.m384a((Object) UserProfile.TYPE_CONTACT_INFO_LINE, (Object) str2)) {
                            sb.append(C14123p4.m2432b((int) R$string.ndp_showcard_content_lineid_title));
                            sb.append(" : ");
                        }
                        sb.append(str);
                    }
                }
            }
            if (!C14966w.m724a(sb)) {
                String sb2 = sb.toString();
                C15149k.m383a((Object) sb2, "sb.toString()");
                eVar = new C12300f.C12305e(sb2, 0, 2, null);
            } else {
                eVar = null;
            }
            return eVar;
        }
    }

    /* renamed from: j.a.e0.d$k */
    /* loaded from: classes3-dex2jar.jar:j/a/e0/d$k.class */
    public static final class C12285k extends AbstractC15150l implements AbstractC15122p<Context, C12328l, C12300f.C12307g> {

        /* renamed from: a */
        public static final C12285k f27731a = new C12285k();

        public C12285k() {
            super(2);
        }

        /* renamed from: a */
        public final C12300f.C12307g invoke(Context context, C12328l lVar) {
            C15149k.m377b(context, "<anonymous parameter 0>");
            C15149k.m377b(lVar, "model");
            NumberInfo e = lVar.m6365e();
            C12300f.C12307g gVar = null;
            if (e != null) {
                String x = e.m28287x();
                gVar = null;
                if (x != null) {
                    if (!(x.length() > 0)) {
                        x = null;
                    }
                    gVar = null;
                    if (x != null) {
                        gVar = new C12300f.C12307g(x, 0, 2, null);
                    }
                }
            }
            return gVar;
        }
    }

    /* renamed from: j.a.e0.d$l */
    /* loaded from: classes3-dex2jar.jar:j/a/e0/d$l.class */
    public static final class C12286l extends AbstractC15150l implements AbstractC15122p<Context, C12328l, AbstractC12391a> {

        /* renamed from: a */
        public static final C12286l f27732a = new C12286l();

        public C12286l() {
            super(2);
        }

        /* renamed from: a */
        public final AbstractC12391a invoke(Context context, C12328l lVar) {
            C12300f.C12308h hVar;
            List<String> y;
            C15149k.m377b(context, "<anonymous parameter 0>");
            C15149k.m377b(lVar, "model");
            StringBuilder sb = new StringBuilder();
            NumberInfo e = lVar.m6365e();
            if (!(e == null || (y = e.m28285y()) == null)) {
                for (String str : y) {
                    if (sb.length() > 0) {
                        sb.append(" / ");
                    }
                    sb.append(str);
                }
            }
            if (!C14966w.m724a(sb)) {
                String sb2 = sb.toString();
                C15149k.m383a((Object) sb2, "sb.toString()");
                hVar = new C12300f.C12308h(sb2, 0, 2, null);
            } else {
                hVar = null;
            }
            return hVar;
        }
    }

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0014\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\n¢\u0006\u0002\b\u0006"}, m815d2 = {"<anonymous>", "Lgogolook/callgogolook2/ndp/NdpInfoViewData$MapData;", "<anonymous parameter 0>", "Landroid/content/Context;", "model", "Lgogolook/callgogolook2/ndp/NumberDetailContract$NumberDetailModel;", "invoke"}, m814k = 3, m813mv = {1, 1, 13})
    /* renamed from: j.a.e0.d$m */
    /* loaded from: classes3-dex2jar.jar:j/a/e0/d$m.class */
    public static final class C12287m extends AbstractC15150l implements AbstractC15122p<Context, C12328l, C12300f.C12309i> {

        /* renamed from: a */
        public final /* synthetic */ Context f27733a;

        /* renamed from: j.a.e0.d$m$a */
        /* loaded from: classes3-dex2jar.jar:j/a/e0/d$m$a.class */
        public static final class C12288a extends AbstractC15150l implements AbstractC15107a<C14989s> {

            /* renamed from: b */
            public final /* synthetic */ C12328l f27735b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C12288a(C12328l lVar) {
                super(0);
                this.f27735b = lVar;
            }

            @Override // p626l.p641z.p642c.AbstractC15107a
            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2() {
                C12317g.m6399a(C12287m.this.f27733a, this.f27735b.m6365e());
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12287m(Context context) {
            super(2);
            this.f27733a = context;
        }

        /* renamed from: a */
        public final C12300f.C12309i invoke(Context context, C12328l lVar) {
            LatLng z;
            C15149k.m377b(context, "<anonymous parameter 0>");
            C15149k.m377b(lVar, "model");
            NumberInfo e = lVar.m6365e();
            return (e == null || (z = e.m28283z()) == null) ? null : new C12300f.C12309i(z, new C12288a(lVar), 0, 4, null);
        }
    }

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0014\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\n¢\u0006\u0002\b\u0006"}, m815d2 = {"<anonymous>", "Lgogolook/callgogolook2/ndp/NdpInfoViewData$NumberViewData;", "context", "Landroid/content/Context;", "model", "Lgogolook/callgogolook2/ndp/NumberDetailContract$NumberDetailModel;", "invoke"}, m814k = 3, m813mv = {1, 1, 13})
    /* renamed from: j.a.e0.d$n */
    /* loaded from: classes3-dex2jar.jar:j/a/e0/d$n.class */
    public static final class C12289n extends AbstractC15150l implements AbstractC15122p<Context, C12328l, C12300f.C12310j> {

        /* renamed from: a */
        public static final C12289n f27736a = new C12289n();

        /* renamed from: j.a.e0.d$n$a */
        /* loaded from: classes3-dex2jar.jar:j/a/e0/d$n$a.class */
        public static final class C12290a extends AbstractC15150l implements AbstractC15107a<C14989s> {

            /* renamed from: a */
            public final /* synthetic */ Context f27737a;

            /* renamed from: b */
            public final /* synthetic */ String f27738b;

            /* renamed from: c */
            public final /* synthetic */ String f27739c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C12290a(Context context, String str, String str2) {
                super(0);
                this.f27737a = context;
                this.f27738b = str;
                this.f27739c = str2;
            }

            @Override // p626l.p641z.p642c.AbstractC15107a
            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2() {
                C12317g.m6397a(this.f27737a, this.f27738b, this.f27739c);
            }
        }

        public C12289n() {
            super(2);
        }

        /* JADX WARN: Removed duplicated region for block: B:25:0x0081  */
        /* JADX WARN: Removed duplicated region for block: B:26:0x008f  */
        /* JADX WARN: Removed duplicated region for block: B:29:0x00a7 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:30:0x00a9  */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final p459j.p460a.p503e0.C12300f.C12310j invoke(android.content.Context r12, p459j.p460a.p503e0.C12328l r13) {
            /*
                Method dump skipped, instructions count: 421
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p503e0.C12271d.C12289n.invoke(android.content.Context, j.a.e0.l):j.a.e0.f$j");
        }
    }

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0014\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\n¢\u0006\u0002\b\u0006"}, m815d2 = {"<anonymous>", "Lgogolook/callgogolook2/ndp/NdpInfoViewData$PhotoListViewData;", "<anonymous parameter 0>", "Landroid/content/Context;", "model", "Lgogolook/callgogolook2/ndp/NumberDetailContract$NumberDetailModel;", "invoke"}, m814k = 3, m813mv = {1, 1, 13})
    /* renamed from: j.a.e0.d$o */
    /* loaded from: classes3-dex2jar.jar:j/a/e0/d$o.class */
    public static final class C12291o extends AbstractC15150l implements AbstractC15122p<Context, C12328l, C12300f.C12311k> {

        /* renamed from: a */
        public final /* synthetic */ Context f27740a;

        /* renamed from: j.a.e0.d$o$a */
        /* loaded from: classes3-dex2jar.jar:j/a/e0/d$o$a.class */
        public static final class C12292a extends AbstractC15150l implements AbstractC15118l<Integer, C14989s> {

            /* renamed from: a */
            public final /* synthetic */ List f27741a;

            /* renamed from: b */
            public final /* synthetic */ C12291o f27742b;

            /* renamed from: c */
            public final /* synthetic */ C12328l f27743c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C12292a(List list, C12291o oVar, C12328l lVar) {
                super(1);
                this.f27741a = list;
                this.f27742b = oVar;
                this.f27743c = lVar;
            }

            /* renamed from: a */
            public final void m6449a(int i) {
                Intent a = NdpPhotoViewActivity.f12455k.m26453a(this.f27742b.f27740a, this.f27741a, this.f27743c.m6366d(), this.f27743c.m6368c(), String.valueOf(this.f27743c.m6365e()));
                a.putExtra("extra_photo_index", i);
                a.putExtra("extra_is_mine", false);
                C14217x3.m2156c(this.f27742b.f27740a, a);
            }

            @Override // p626l.p641z.p642c.AbstractC15118l
            public /* bridge */ /* synthetic */ C14989s invoke(Integer num) {
                m6449a(num.intValue());
                return C14989s.f33022a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12291o(Context context) {
            super(2);
            this.f27740a = context;
        }

        /* renamed from: a */
        public final C12300f.C12311k invoke(Context context, C12328l lVar) {
            C12300f.C12311k kVar;
            C15149k.m377b(context, "<anonymous parameter 0>");
            C15149k.m377b(lVar, "model");
            NumberInfo e = lVar.m6365e();
            if (e != null) {
                List<String> G = e.m28389G();
                if (G != null) {
                    if (!(!G.isEmpty())) {
                        G = null;
                    }
                    if (G != null) {
                        kVar = new C12300f.C12311k(G, new C12292a(G, this, lVar), 0, 4, null);
                        return kVar;
                    }
                }
            }
            kVar = null;
            return kVar;
        }
    }

    /* renamed from: j.a.e0.d$p */
    /* loaded from: classes3-dex2jar.jar:j/a/e0/d$p.class */
    public static final class C12293p extends AbstractC15150l implements AbstractC15122p<Context, C12328l, C12300f.C12313m> {

        /* renamed from: a */
        public static final C12293p f27744a = new C12293p();

        public C12293p() {
            super(2);
        }

        /* renamed from: a */
        public final C12300f.C12313m invoke(Context context, C12328l lVar) {
            C15149k.m377b(context, "<anonymous parameter 0>");
            C15149k.m377b(lVar, "model");
            NumberInfo e = lVar.m6365e();
            C12300f.C12313m mVar = null;
            if (e != null) {
                Integer valueOf = Integer.valueOf(e.m28386J());
                int intValue = valueOf.intValue();
                boolean z = true;
                if (1 > intValue || 100 < intValue) {
                    z = false;
                }
                if (!z) {
                    valueOf = null;
                }
                mVar = null;
                if (valueOf != null) {
                    mVar = new C12300f.C12313m(C12271d.f27710f.m6464b(valueOf.intValue()), 0, 2, null);
                }
            }
            return mVar;
        }
    }

    /* renamed from: j.a.e0.d$q */
    /* loaded from: classes3-dex2jar.jar:j/a/e0/d$q.class */
    public static final class C12294q extends AbstractC15150l implements AbstractC15122p<Context, C12328l, AbstractC12391a> {

        /* renamed from: a */
        public static final C12294q f27745a = new C12294q();

        public C12294q() {
            super(2);
        }

        /* renamed from: a */
        public final AbstractC12391a invoke(Context context, C12328l lVar) {
            List<String> L;
            C12300f.C12314n nVar;
            boolean z;
            C15149k.m377b(context, "<anonymous parameter 0>");
            C15149k.m377b(lVar, "model");
            NumberInfo e = lVar.m6365e();
            if (e == null || (L = e.m28384L()) == null) {
                return null;
            }
            StringBuilder sb = new StringBuilder();
            C14099o3 n = C14099o3.m2510n();
            C15149k.m383a((Object) n, "ServerConfigManager.getInstance()");
            List<C14099o3.C14106f> d = n.m2526d();
            boolean z2 = true;
            if (d != null) {
                for (C14099o3.C14106f fVar : d) {
                    ArrayList arrayList = new ArrayList();
                    Iterator<String> it = L.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            z = false;
                            break;
                        }
                        String next = it.next();
                        if (TextUtils.equals(next, fVar.f31599c)) {
                            z = true;
                            break;
                        }
                        for (C14099o3.C14104d dVar : fVar.f31600d) {
                            if (TextUtils.equals(next, dVar.f31592b)) {
                                arrayList.add(dVar.f31591a);
                            }
                        }
                    }
                    if (z || !arrayList.isEmpty()) {
                        if (sb.length() > 0) {
                            sb.append(UserProfile.CARD_CATE_SEPARATOR);
                        }
                        sb.append(fVar.f31598b);
                        if (!z) {
                            sb.append(" ( ");
                            sb.append((String) arrayList.get(0));
                            int size = arrayList.size();
                            for (int i = 2; i < size; i++) {
                                sb.append(UserProfile.CARD_CATE_SEPARATOR);
                                sb.append((String) arrayList.get(i));
                            }
                            sb.append(" )");
                        }
                    }
                }
            }
            if (sb.length() <= 0) {
                z2 = false;
            }
            if (z2) {
                sb.insert(0, C14123p4.m2432b((int) R$string.ndp_sarea_title) + " : ");
                String sb2 = sb.toString();
                C15149k.m383a((Object) sb2, "sb.toString()");
                nVar = new C12300f.C12314n(sb2, 0, 2, null);
            } else {
                nVar = null;
            }
            return nVar;
        }
    }

    public C12271d(@ExperimentalCallEndNdpApi AdUnit adUnit) {
        C15149k.m377b(adUnit, "adUnit");
        this.f27715e = adUnit;
        this.f27711a.put(0, new C12347d());
        this.f27711a.put(100, new C12335a());
        this.f27711a.put(200, new C12338b());
        this.f27711a.put(300, new C12351e());
        this.f27711a.put(400, new C12342c());
        this.f27711a.put(500, new C12367f());
    }

    /* renamed from: b */
    public static final /* synthetic */ Context m6480b(C12271d dVar) {
        Context context = dVar.f27714d;
        if (context != null) {
            return context;
        }
        C15149k.m373d("context");
        throw null;
    }

    /* renamed from: a */
    public final C12300f.C12301a m6492a(AbstractC6207d dVar) {
        C14247d.f31867v.m2038a(this.f27715e, dVar);
        return new C12300f.C12301a(dVar, new C12273b(), new C12274c(), false, false, false, 0, 120, null);
    }

    /* renamed from: a */
    public final void m6499a(int i) {
        AbstractC6207d c;
        SparseArrayCompat<AbstractC12391a> a;
        int a2 = f27710f.m6466a(i);
        C12300f.C12315o oVar = this.f27712b.get(a2);
        if (oVar != null) {
            C15149k.m383a((Object) oVar, "typeDataArray.get(parentType) ?: return");
            if (i == 100) {
                C12300f.C12315o oVar2 = (C12300f.C12315o) this.f27712b.get(f27710f.m6466a(100));
                AbstractC12391a aVar = (oVar2 == null || (a = oVar2.m6403a()) == null) ? null : a.get(100);
                if (!(aVar instanceof C12300f.C12301a)) {
                    aVar = null;
                }
                C12300f.C12301a aVar2 = (C12300f.C12301a) aVar;
                if (!(aVar2 == null || (c = aVar2.m6433c()) == null)) {
                    c.mo23568b();
                }
            }
            oVar.m6403a().remove(i);
            if (oVar.m6403a().size() == 0) {
                this.f27712b.remove(a2);
            }
        }
    }

    /* renamed from: a */
    public final void m6498a(int i, AbstractC12391a aVar) {
        int a = f27710f.m6466a(i);
        C12300f.C12315o oVar = this.f27712b.get(a);
        if (oVar == null) {
            oVar = new C12300f.C12315o(a);
        }
        C15149k.m383a((Object) oVar, "typeDataArray.get(parent… TypeViewData(parentType)");
        oVar.m6403a().put(i, aVar);
        this.f27712b.put(a, oVar);
    }

    /* renamed from: a */
    public final void m6497a(int i, AbstractC15118l<? super Integer, C14989s> lVar) {
        int indexOfKey = this.f27712b.indexOfKey(i);
        int itemCount = getItemCount();
        if (indexOfKey >= 0 && itemCount - 1 >= indexOfKey) {
            lVar.invoke(Integer.valueOf(indexOfKey));
        }
    }

    /* renamed from: a */
    public final void m6496a(Context context) {
        SparseArrayCompat<AbstractC12391a> a;
        C15149k.m377b(context, "context");
        if (!this.f27713c) {
            C14247d.f31867v.m2037a(this.f27715e, C6262a.EnumC6266d.ERROR_NO_NEED_REQUEST.m23447a());
            this.f27712b.remove(100);
            return;
        }
        C12300f.C12315o oVar = (C12300f.C12315o) this.f27712b.get(f27710f.m6466a(100));
        AbstractC12391a aVar = (oVar == null || (a = oVar.m6403a()) == null) ? null : a.get(100);
        if (!(aVar instanceof C12300f.C12301a)) {
            aVar = null;
        }
        C12300f.C12301a aVar2 = (C12300f.C12301a) aVar;
        C12300f.C12301a aVar3 = null;
        if (aVar2 != null) {
            aVar3 = null;
            if (!aVar2.m6430e()) {
                aVar3 = aVar2;
            }
        }
        if (aVar3 == null && !m6493a(context, this.f27715e.m28821a(), C6262a.EnumC6267e.AD_EXIST.m23446a())) {
            C14247d.f31867v.m2040a(AdUnit.NDP);
            C6192e a2 = C6192e.f15373p.m23592a(this.f27715e.m28821a());
            a2.m23606a(AdUtils.m28803f());
            a2.m23617a(EnumC6184a.AOTTER_TREK, false);
            a2.m23617a(EnumC6184a.NATIVE, true);
            a2.m23617a(EnumC6184a.BANNER, false);
            a2.m23608a(new C12276d(context));
            a2.m23619a(context);
        }
    }

    /* renamed from: a */
    public final void m6495a(Context context, C12328l lVar) {
        boolean z;
        AdStatusController c = AdStatusController.m28827c();
        c.m28828b();
        if (c.m28830a(this.f27715e)) {
            NumberInfo e = lVar.m6365e();
            z = true;
            if (e != null) {
                if (!e.m28306n0()) {
                    z = true;
                }
            }
            this.f27713c = z;
            m6496a(context);
        }
        z = false;
        this.f27713c = z;
        m6496a(context);
    }

    /* renamed from: a */
    public final void m6494a(Context context, C12328l lVar, int i, AbstractC15122p<? super Context, ? super C12328l, ? extends AbstractC12391a> pVar) {
        AbstractC12391a aVar = (AbstractC12391a) pVar.invoke(context, lVar);
        if (aVar != null) {
            m6498a(i, aVar);
        } else {
            m6499a(i);
        }
    }

    /* renamed from: a */
    public final void m6486a(C12328l lVar) {
        C15149k.m377b(lVar, "model");
        Context context = this.f27714d;
        if (context != null) {
            m6470j(context, lVar);
            Context context2 = this.f27714d;
            if (context2 != null) {
                m6473g(context2, lVar);
                Context context3 = this.f27714d;
                if (context3 != null) {
                    m6468l(context3, lVar);
                    Context context4 = this.f27714d;
                    if (context4 != null) {
                        m6472h(context4, lVar);
                        Context context5 = this.f27714d;
                        if (context5 != null) {
                            m6474f(context5, lVar);
                            Context context6 = this.f27714d;
                            if (context6 != null) {
                                m6482b(context6, lVar);
                                Context context7 = this.f27714d;
                                if (context7 != null) {
                                    m6471i(context7, lVar);
                                    Context context8 = this.f27714d;
                                    if (context8 != null) {
                                        m6467m(context8, lVar);
                                        Context context9 = this.f27714d;
                                        if (context9 != null) {
                                            m6469k(context9, lVar);
                                            Context context10 = this.f27714d;
                                            if (context10 != null) {
                                                m6477d(context10, lVar);
                                                Context context11 = this.f27714d;
                                                if (context11 != null) {
                                                    m6495a(context11, lVar);
                                                    Context context12 = this.f27714d;
                                                    if (context12 != null) {
                                                        m6475e(context12, lVar);
                                                        Context context13 = this.f27714d;
                                                        if (context13 != null) {
                                                            m6479c(context13, lVar);
                                                        } else {
                                                            C15149k.m373d("context");
                                                            throw null;
                                                        }
                                                    } else {
                                                        C15149k.m373d("context");
                                                        throw null;
                                                    }
                                                } else {
                                                    C15149k.m373d("context");
                                                    throw null;
                                                }
                                            } else {
                                                C15149k.m373d("context");
                                                throw null;
                                            }
                                        } else {
                                            C15149k.m373d("context");
                                            throw null;
                                        }
                                    } else {
                                        C15149k.m373d("context");
                                        throw null;
                                    }
                                } else {
                                    C15149k.m373d("context");
                                    throw null;
                                }
                            } else {
                                C15149k.m373d("context");
                                throw null;
                            }
                        } else {
                            C15149k.m373d("context");
                            throw null;
                        }
                    } else {
                        C15149k.m373d("context");
                        throw null;
                    }
                } else {
                    C15149k.m373d("context");
                    throw null;
                }
            } else {
                C15149k.m373d("context");
                throw null;
            }
        } else {
            C15149k.m373d("context");
            throw null;
        }
    }

    /* renamed from: a */
    public void onBindViewHolder(C14666a aVar, int i) {
        C15149k.m377b(aVar, "holder");
        int itemViewType = getItemViewType(i);
        C12300f.C12315o oVar = this.f27712b.get(itemViewType);
        if (oVar != null) {
            AbstractC12392b<C14666a> bVar = this.f27711a.get(itemViewType);
            if (bVar != null) {
                bVar.mo1119a(aVar, oVar);
            } else {
                C15149k.m378b();
                throw null;
            }
        }
    }

    /* renamed from: a */
    public final boolean m6500a() {
        SparseArrayCompat<AbstractC12391a> a;
        C12300f.C12315o oVar = (C12300f.C12315o) this.f27712b.get(f27710f.m6466a(100));
        AbstractC12391a aVar = (oVar == null || (a = oVar.m6403a()) == null) ? null : a.get(100);
        if (!(aVar instanceof C12300f.C12301a)) {
            aVar = null;
        }
        C12300f.C12301a aVar2 = (C12300f.C12301a) aVar;
        if (aVar2 != null) {
            return !aVar2.m6429f();
        }
        return false;
    }

    /* renamed from: a */
    public final boolean m6493a(Context context, String str, String str2) {
        if (context instanceof ComponentActivity) {
            Lifecycle lifecycle = ((ComponentActivity) context).getLifecycle();
            C15149k.m383a((Object) lifecycle, "context.lifecycle");
            if (!lifecycle.getCurrentState().isAtLeast(Lifecycle.State.STARTED)) {
                return false;
            }
        }
        AbstractC6207d b = C6214a.m23564b(str);
        if (b == null) {
            C14247d.f31867v.m2033a(str, C6192e.f15373p.m23592a(str).m23605b());
            return false;
        }
        C14247d.f31867v.m2037a(this.f27715e, str2);
        m6481b(b);
        return true;
    }

    /* renamed from: b */
    public final void m6484b() {
        AbstractC6207d c;
        SparseArrayCompat<AbstractC12391a> a;
        C12300f.C12315o oVar = (C12300f.C12315o) this.f27712b.get(f27710f.m6466a(100));
        AbstractC12391a aVar = (oVar == null || (a = oVar.m6403a()) == null) ? null : a.get(100);
        if (!(aVar instanceof C12300f.C12301a)) {
            aVar = null;
        }
        C12300f.C12301a aVar2 = (C12300f.C12301a) aVar;
        if (aVar2 != null && (c = aVar2.m6433c()) != null) {
            C14247d.f31867v.m2038a(this.f27715e, c);
        }
    }

    /* renamed from: b */
    public final void m6483b(Context context) {
        C15149k.m377b(context, "context");
        this.f27714d = context;
    }

    /* renamed from: b */
    public final void m6482b(Context context, C12328l lVar) {
        m6494a(context, lVar, 200, C12278f.f27723a);
    }

    /* renamed from: b */
    public final void m6481b(AbstractC6207d dVar) {
        SparseArrayCompat<AbstractC12391a> a;
        C12300f.C12315o oVar = (C12300f.C12315o) this.f27712b.get(f27710f.m6466a(100));
        AbstractC12391a aVar = (oVar == null || (a = oVar.m6403a()) == null) ? null : a.get(100);
        if (!(aVar instanceof C12300f.C12301a)) {
            aVar = null;
        }
        boolean z = aVar != null;
        if (z) {
            m6499a(100);
        }
        m6498a(100, m6492a(dVar));
        m6497a(100, new C12277e(z));
    }

    /* renamed from: c */
    public final void m6479c(Context context, C12328l lVar) {
        RowInfo.Primary h;
        StringBuilder sb = new StringBuilder();
        sb.append("setupBlogReviewsOrInternetSearchResults ");
        sb.append("type:");
        RowInfo f = lVar.m6364f();
        sb.append((f == null || (h = f.m28224h()) == null) ? null : h.type);
        sb.append(' ');
        sb.append("publicSearches: ");
        NumberInfo e = lVar.m6365e();
        Integer num = null;
        if (e != null) {
            List<NumberInfo.PublicSearch> I = e.m28387I();
            num = null;
            if (I != null) {
                num = Integer.valueOf(I.size());
            }
        }
        sb.append(num);
        C14080m2.m2616a(sb.toString());
        m6494a(context, lVar, 500, new C12279g(context));
    }

    /* renamed from: d */
    public final void m6477d(Context context, C12328l lVar) {
        m6494a(context, lVar, 203, C12281h.f27727a);
    }

    public final void destroy() {
        AbstractC6207d c;
        SparseArrayCompat<AbstractC12391a> a;
        C6192e.f15373p.m23592a(this.f27715e.m28821a()).m23594h();
        C12300f.C12315o oVar = (C12300f.C12315o) this.f27712b.get(f27710f.m6466a(100));
        AbstractC12391a aVar = (oVar == null || (a = oVar.m6403a()) == null) ? null : a.get(100);
        if (!(aVar instanceof C12300f.C12301a)) {
            aVar = null;
        }
        C12300f.C12301a aVar2 = (C12300f.C12301a) aVar;
        if (aVar2 != null && (c = aVar2.m6433c()) != null) {
            c.mo23568b();
        }
    }

    /* renamed from: e */
    public final void m6475e(Context context, C12328l lVar) {
        m6494a(context, lVar, 400, C12282i.f27728a);
    }

    /* renamed from: f */
    public final void m6474f(Context context, C12328l lVar) {
        m6494a(context, lVar, 5, C12284j.f27730a);
    }

    /* renamed from: g */
    public final void m6473g(Context context, C12328l lVar) {
        m6494a(context, lVar, 2, C12285k.f27731a);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f27712b.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        return this.f27712b.keyAt(i);
    }

    /* renamed from: h */
    public final void m6472h(Context context, C12328l lVar) {
        m6494a(context, lVar, 4, C12286l.f27732a);
    }

    /* renamed from: i */
    public final void m6471i(Context context, C12328l lVar) {
        m6494a(context, lVar, 201, new C12287m(context));
    }

    /* renamed from: j */
    public final void m6470j(Context context, C12328l lVar) {
        m6494a(context, lVar, 0, C12289n.f27736a);
    }

    /* renamed from: k */
    public final void m6469k(Context context, C12328l lVar) {
        m6494a(context, lVar, 300, new C12291o(context));
    }

    /* renamed from: l */
    public final void m6468l(Context context, C12328l lVar) {
        m6494a(context, lVar, 3, C12293p.f27744a);
    }

    /* renamed from: m */
    public final void m6467m(Context context, C12328l lVar) {
        m6494a(context, lVar, 202, C12294q.f27745a);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public C14666a onCreateViewHolder(ViewGroup viewGroup, int i) {
        C15149k.m377b(viewGroup, "parent");
        AbstractC12392b<C14666a> bVar = this.f27711a.get(i);
        if (bVar != null) {
            return bVar.mo1120a(viewGroup);
        }
        C15149k.m378b();
        throw null;
    }
}
