package com.inmobi.ads;

import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AlphaAnimation;
import android.view.animation.DecelerateInterpolator;
import android.widget.RelativeLayout;
import com.inmobi.ads.AbstractC8252i;
import com.inmobi.ads.C8290m;
import com.inmobi.ads.InMobiAdRequest;
import com.inmobi.ads.InMobiAdRequestStatus;
import com.inmobi.ads.listeners.BannerAdEventListener;
import com.inmobi.commons.core.p513e.C8366b;
import com.inmobi.commons.core.utilities.Logger;
import com.inmobi.commons.core.utilities.p516b.C8399c;
import com.inmobi.commons.p508a.C8326a;
import com.inmobi.rendering.RenderView;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/inmobi/ads/InMobiBanner.class */
public final class InMobiBanner extends RelativeLayout {

    /* renamed from: a */
    public static final String f31299a = InMobiBanner.class.getSimpleName();

    /* renamed from: q */
    public static ConcurrentHashMap<C8298p, WeakReference<BannerAdRequestListener>> f31300q = new ConcurrentHashMap<>(5, 0.9f, 3);

    /* renamed from: b */
    public BannerAdListener f31301b;

    /* renamed from: c */
    public BannerAdEventListener f31302c;

    /* renamed from: d */
    public HandlerC8016b f31303d;

    /* renamed from: e */
    public C8298p f31304e;

    /* renamed from: f */
    public C8298p f31305f;

    /* renamed from: g */
    public C8298p f31306g;

    /* renamed from: h */
    public C8298p f31307h;

    /* renamed from: i */
    public boolean f31308i;

    /* renamed from: j */
    public int f31309j;

    /* renamed from: l */
    public HandlerC8301q f31311l;

    /* renamed from: r */
    public AbstractC8286j f31316r;

    /* renamed from: s */
    public WeakReference<Activity> f31317s;

    /* renamed from: t */
    public C8175bj f31318t;

    /* renamed from: u */
    public boolean f31319u;

    /* renamed from: k */
    public boolean f31310k = true;

    /* renamed from: m */
    public int f31312m = 0;

    /* renamed from: n */
    public int f31313n = 0;

    /* renamed from: o */
    public AnimationType f31314o = AnimationType.ROTATE_HORIZONTAL_AXIS;

    /* renamed from: p */
    public long f31315p = 0;

    /* renamed from: v */
    public boolean f31320v = true;

    /* renamed from: w */
    public final AbstractC8252i.AbstractC8282b f31321w = new AbstractC8252i.AbstractC8282b() { // from class: com.inmobi.ads.InMobiBanner.4
        @Override // com.inmobi.ads.AbstractC8252i.AbstractC8282b
        /* renamed from: a */
        public final void mo6012a() {
            try {
                if (InMobiBanner.this.f31306g == null || !InMobiBanner.this.f31306g.m5982N()) {
                    InMobiBanner.m6726a(InMobiBanner.this, new AbstractC8015a() { // from class: com.inmobi.ads.InMobiBanner.4.1
                        @Override // com.inmobi.ads.InMobiBanner.AbstractC8015a
                        /* renamed from: a */
                        public final void mo6706a() {
                            try {
                                InMobiBanner.this.m6724a("AR", "");
                                InMobiBanner.this.f31303d.sendEmptyMessage(1);
                                InMobiBanner.this.m6722b();
                            } catch (Exception e) {
                                Logger.m5724a(Logger.InternalLogLevel.ERROR, InMobiBanner.f31299a, "Encountered unexpected error in scheduling refresh for banner ad");
                                String unused = InMobiBanner.f31299a;
                                new StringBuilder("InMobiBanner$5.onSuccess() handler threw unexpected error: ").append(e.getMessage());
                            }
                        }
                    });
                }
            } catch (Exception e) {
                Logger.m5724a(Logger.InternalLogLevel.ERROR, InMobiBanner.f31299a, "Encountered unexpected error in loading banner ad");
                String unused = InMobiBanner.f31299a;
                new StringBuilder("InMobiBanner$2.onAdLoadSucceeded() handler threw unexpected error: ").append(e.getMessage());
            }
        }

        @Override // com.inmobi.ads.AbstractC8252i.AbstractC8282b
        /* renamed from: a */
        public final void mo6011a(InMobiAdRequestStatus inMobiAdRequestStatus) {
            try {
                int i = C80145.f31327a[inMobiAdRequestStatus.getStatusCode().ordinal()];
                if (i == 1) {
                    InMobiBanner.this.m6724a("ART", "NetworkNotAvailable");
                } else if (i == 2 || i == 3) {
                    InMobiBanner.this.m6724a("ART", "LoadInProgress");
                } else if (i == 4) {
                    InMobiBanner.this.m6724a("ART", "FrequentRequests");
                } else if (i != 5) {
                    InMobiBanner.this.m6724a("AF", "");
                } else {
                    InMobiBanner.this.m6724a("ART", "MonetizationDisabled");
                }
                if (!InMobiBanner.m6718c()) {
                    Message obtain = Message.obtain();
                    obtain.what = 2;
                    obtain.obj = inMobiAdRequestStatus;
                    InMobiBanner.this.f31303d.sendMessage(obtain);
                }
                InMobiBanner.this.m6722b();
            } catch (Exception e) {
                Logger.m5724a(Logger.InternalLogLevel.ERROR, InMobiBanner.f31299a, "Encountered unexpected error in loading banner ad");
                String unused = InMobiBanner.f31299a;
                new StringBuilder("InMobiBanner$2.onAdLoadFailed() handler threw unexpected error: ").append(e.getMessage());
            }
        }

        @Override // com.inmobi.ads.AbstractC8252i.AbstractC8282b
        /* renamed from: a */
        public final void mo6009a(Map<Object, Object> map) {
            InMobiBanner.this.m6724a("AVCL", "");
            Message obtain = Message.obtain();
            obtain.what = 5;
            obtain.obj = map;
            InMobiBanner.this.f31303d.sendMessage(obtain);
        }

        @Override // com.inmobi.ads.AbstractC8252i.AbstractC8282b
        /* renamed from: a */
        public final void mo6007a(byte[] bArr) {
            Message obtain = Message.obtain();
            obtain.what = 8;
            obtain.obj = bArr;
            InMobiBanner.this.f31303d.sendMessage(obtain);
        }

        @Override // com.inmobi.ads.AbstractC8252i.AbstractC8282b
        /* renamed from: b */
        public final void mo6005b(InMobiAdRequestStatus inMobiAdRequestStatus) {
            Message obtain = Message.obtain();
            obtain.what = 9;
            obtain.obj = inMobiAdRequestStatus;
            InMobiBanner.this.f31303d.sendMessage(obtain);
        }

        @Override // com.inmobi.ads.AbstractC8252i.AbstractC8282b
        /* renamed from: b */
        public final void mo6004b(Map<Object, Object> map) {
            Message obtain = Message.obtain();
            obtain.what = 7;
            obtain.obj = map;
            InMobiBanner.this.f31303d.sendMessage(obtain);
        }

        @Override // com.inmobi.ads.AbstractC8252i.AbstractC8282b
        /* renamed from: d */
        public final void mo6001d() {
            InMobiBanner.this.f31303d.sendEmptyMessage(3);
        }

        @Override // com.inmobi.ads.AbstractC8252i.AbstractC8282b
        /* renamed from: e */
        public final void mo6000e() {
            try {
                InMobiBanner.this.m6722b();
                InMobiBanner.this.f31303d.sendEmptyMessage(4);
            } catch (Exception e) {
                Logger.m5724a(Logger.InternalLogLevel.ERROR, InMobiBanner.f31299a, "Encountered unexpected error in closing banner ad");
                String unused = InMobiBanner.f31299a;
                new StringBuilder("InMobiBanner$2.onAdDismissed() handler threw unexpected error: ").append(e.getMessage());
            }
        }

        @Override // com.inmobi.ads.AbstractC8252i.AbstractC8282b
        /* renamed from: f */
        public final void mo5999f() {
            InMobiBanner.this.f31303d.sendEmptyMessage(6);
        }
    };

    /* renamed from: com.inmobi.ads.InMobiBanner$5 */
    /* loaded from: classes2-dex2jar.jar:com/inmobi/ads/InMobiBanner$5.class */
    public static final /* synthetic */ class C80145 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f31327a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0041 -> B:22:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0045 -> B:20:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0049 -> B:18:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x004d -> B:24:0x0035). Please submit an issue!!! */
        static {
            int[] iArr = new int[InMobiAdRequestStatus.StatusCode.values().length];
            f31327a = iArr;
            try {
                iArr[InMobiAdRequestStatus.StatusCode.NETWORK_UNREACHABLE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f31327a[InMobiAdRequestStatus.StatusCode.REQUEST_PENDING.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f31327a[InMobiAdRequestStatus.StatusCode.AD_ACTIVE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f31327a[InMobiAdRequestStatus.StatusCode.EARLY_REFRESH_REQUEST.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f31327a[InMobiAdRequestStatus.StatusCode.MONETIZATION_DISABLED.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/inmobi/ads/InMobiBanner$AnimationType.class */
    public enum AnimationType {
        ANIMATION_OFF,
        ROTATE_HORIZONTAL_AXIS,
        ANIMATION_ALPHA,
        ROTATE_VERTICAL_AXIS
    }

    /* loaded from: classes2-dex2jar.jar:com/inmobi/ads/InMobiBanner$BannerAdListener.class */
    public interface BannerAdListener {
        void onAdDismissed(InMobiBanner inMobiBanner);

        void onAdDisplayed(InMobiBanner inMobiBanner);

        void onAdInteraction(InMobiBanner inMobiBanner, Map<Object, Object> map);

        void onAdLoadFailed(InMobiBanner inMobiBanner, InMobiAdRequestStatus inMobiAdRequestStatus);

        void onAdLoadSucceeded(InMobiBanner inMobiBanner);

        void onAdRewardActionCompleted(InMobiBanner inMobiBanner, Map<Object, Object> map);

        void onUserLeftApplication(InMobiBanner inMobiBanner);
    }

    /* loaded from: classes2-dex2jar.jar:com/inmobi/ads/InMobiBanner$BannerAdRequestListener.class */
    public interface BannerAdRequestListener {
        void onAdRequestCompleted(InMobiAdRequestStatus inMobiAdRequestStatus, InMobiBanner inMobiBanner);
    }

    /* renamed from: com.inmobi.ads.InMobiBanner$a */
    /* loaded from: classes2-dex2jar.jar:com/inmobi/ads/InMobiBanner$a.class */
    public interface AbstractC8015a {
        /* renamed from: a */
        void mo6706a();
    }

    /* renamed from: com.inmobi.ads.InMobiBanner$b */
    /* loaded from: classes2-dex2jar.jar:com/inmobi/ads/InMobiBanner$b.class */
    public static final class HandlerC8016b extends Handler {

        /* renamed from: a */
        public WeakReference<InMobiBanner> f31328a;

        public HandlerC8016b(InMobiBanner inMobiBanner) {
            super(Looper.getMainLooper());
            this.f31328a = new WeakReference<>(inMobiBanner);
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            InMobiBanner inMobiBanner = this.f31328a.get();
            if (inMobiBanner != null) {
                try {
                    Map<Object, Object> map = null;
                    Map<Object, Object> map2 = null;
                    switch (message.what) {
                        case 1:
                            if (inMobiBanner.f31302c != null) {
                                inMobiBanner.f31302c.onAdLoadSucceeded(inMobiBanner);
                                return;
                            } else if (inMobiBanner.f31301b != null) {
                                inMobiBanner.f31301b.onAdLoadSucceeded(inMobiBanner);
                                return;
                            } else {
                                return;
                            }
                        case 2:
                            InMobiAdRequestStatus inMobiAdRequestStatus = (InMobiAdRequestStatus) message.obj;
                            if (inMobiBanner.f31302c != null) {
                                inMobiBanner.f31302c.onAdLoadFailed(inMobiBanner, inMobiAdRequestStatus);
                                return;
                            } else if (inMobiBanner.f31301b != null) {
                                inMobiBanner.f31301b.onAdLoadFailed(inMobiBanner, inMobiAdRequestStatus);
                                return;
                            } else {
                                return;
                            }
                        case 3:
                            if (inMobiBanner.f31302c != null) {
                                inMobiBanner.f31302c.onAdDisplayed(inMobiBanner);
                                return;
                            } else if (inMobiBanner.f31301b != null) {
                                inMobiBanner.f31301b.onAdDisplayed(inMobiBanner);
                                return;
                            } else {
                                return;
                            }
                        case 4:
                            if (inMobiBanner.f31302c != null) {
                                inMobiBanner.f31302c.onAdDismissed(inMobiBanner);
                                return;
                            } else if (inMobiBanner.f31301b != null) {
                                inMobiBanner.f31301b.onAdDismissed(inMobiBanner);
                                return;
                            } else {
                                return;
                            }
                        case 5:
                            if (message.obj != null) {
                                map = (Map) message.obj;
                            }
                            if (inMobiBanner.f31302c != null) {
                                inMobiBanner.f31302c.onAdClicked(inMobiBanner, map);
                                return;
                            } else if (inMobiBanner.f31301b != null) {
                                inMobiBanner.f31301b.onAdInteraction(inMobiBanner, map);
                                return;
                            } else {
                                return;
                            }
                        case 6:
                            if (inMobiBanner.f31302c != null) {
                                inMobiBanner.f31302c.onUserLeftApplication(inMobiBanner);
                                return;
                            } else if (inMobiBanner.f31301b != null) {
                                inMobiBanner.f31301b.onUserLeftApplication(inMobiBanner);
                                return;
                            } else {
                                return;
                            }
                        case 7:
                            if (message.obj != null) {
                                map2 = (Map) message.obj;
                            }
                            if (inMobiBanner.f31302c != null) {
                                inMobiBanner.f31302c.onRewardsUnlocked(inMobiBanner, map2);
                                return;
                            } else if (inMobiBanner.f31301b != null) {
                                inMobiBanner.f31301b.onAdRewardActionCompleted(inMobiBanner, map2);
                                return;
                            } else {
                                return;
                            }
                        case 8:
                            if (inMobiBanner.f31302c != null) {
                                inMobiBanner.f31302c.onRequestPayloadCreated((byte[]) message.obj);
                                return;
                            }
                            return;
                        case 9:
                            if (inMobiBanner.f31302c != null) {
                                inMobiBanner.f31302c.onRequestPayloadCreationFailed((InMobiAdRequestStatus) message.obj);
                                return;
                            }
                            return;
                        default:
                            String unused = InMobiBanner.f31299a;
                            return;
                    }
                } catch (Exception e) {
                    Logger.m5724a(Logger.InternalLogLevel.ERROR, InMobiBanner.f31299a, "Publisher handler caused unexpected error");
                    String unused2 = InMobiBanner.f31299a;
                    new StringBuilder("Callback threw unexpected error: ").append(e.getMessage());
                }
            }
        }
    }

    public InMobiBanner(Context context, long j) {
        super(context);
        this.f31308i = false;
        if (!C8326a.m5899a()) {
            Logger.m5724a(Logger.InternalLogLevel.ERROR, f31299a, "Please initialize the SDK before creating a Banner ad");
        } else if (context == null) {
            Logger.m5724a(Logger.InternalLogLevel.ERROR, f31299a, "Unable to create InMobiBanner ad with null context object.");
        } else {
            boolean z = context instanceof Activity;
            if (z) {
                this.f31317s = new WeakReference<>((Activity) context);
            }
            this.f31303d = new HandlerC8016b(this);
            C8175bj a = C8175bj.m6257a(j, null, "banner", null);
            this.f31318t = a;
            a.f31899f = z ? InMobiAdRequest.MonetizationContext.MONETIZATION_CONTEXT_ACTIVITY : InMobiAdRequest.MonetizationContext.MONETIZATION_CONTEXT_OTHER;
            this.f31308i = true;
        }
    }

    public InMobiBanner(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f31308i = false;
        if (!C8326a.m5899a()) {
            Logger.m5724a(Logger.InternalLogLevel.ERROR, f31299a, "Please initialize the SDK before creating a Banner ad");
            return;
        }
        boolean z = context instanceof Activity;
        if (z) {
            this.f31317s = new WeakReference<>((Activity) context);
        }
        this.f31303d = new HandlerC8016b(this);
        String attributeValue = attributeSet.getAttributeValue("http://schemas.android.com/apk/lib/com.inmobi.ads", "placementId");
        String attributeValue2 = attributeSet.getAttributeValue("http://schemas.android.com/apk/lib/com.inmobi.ads", "refreshInterval");
        if (attributeValue != null) {
            long a = m6725a(attributeValue);
            if (a != Long.MIN_VALUE) {
                C8175bj a2 = C8175bj.m6257a(a, null, "banner", null);
                this.f31318t = a2;
                a2.f31899f = z ? InMobiAdRequest.MonetizationContext.MONETIZATION_CONTEXT_ACTIVITY : InMobiAdRequest.MonetizationContext.MONETIZATION_CONTEXT_OTHER;
                this.f31308i = true;
            }
        } else {
            Logger.m5724a(Logger.InternalLogLevel.ERROR, f31299a, "Placement id value is not supplied in XML layout. Banner creation failed.");
        }
        if (attributeValue2 != null) {
            try {
                setRefreshInterval(Integer.parseInt(attributeValue2.trim()));
            } catch (NumberFormatException e) {
                Logger.m5724a(Logger.InternalLogLevel.ERROR, f31299a, "Refresh interval value supplied in XML layout is not valid. Falling back to default value.");
            }
        }
    }

    /* renamed from: a */
    public static long m6725a(String str) {
        long j;
        StringBuilder sb;
        try {
            sb = new StringBuilder(str.trim());
        } catch (NumberFormatException e) {
            Logger.InternalLogLevel internalLogLevel = Logger.InternalLogLevel.ERROR;
            String str2 = f31299a;
            Logger.m5724a(internalLogLevel, str2, "Invalid Placement id: " + str + " Placement id value supplied in XML layout is not valid. Banner creation failed.");
        } catch (StringIndexOutOfBoundsException e2) {
            Logger.InternalLogLevel internalLogLevel2 = Logger.InternalLogLevel.ERROR;
            String str3 = f31299a;
            Logger.m5724a(internalLogLevel2, str3, "Invalid Placement id: " + str + " Placement id value supplied in XML layout is not valid. Please make sure placement id is in plid-0123456789 format.");
        }
        if ("plid-".equalsIgnoreCase(sb.substring(0, 5))) {
            j = Long.parseLong(sb.substring(5, sb.length()).trim());
            return j;
        }
        Logger.InternalLogLevel internalLogLevel3 = Logger.InternalLogLevel.ERROR;
        String str4 = f31299a;
        Logger.m5724a(internalLogLevel3, str4, "Invalid Placement id: " + str + " Placement id value supplied in XML layout is not valid. Please make sure placement id is in plid-0123456789 format.");
        j = Long.MIN_VALUE;
        return j;
    }

    /* renamed from: a */
    private void m6731a(Context context, C8175bj bjVar, boolean z) {
        if (this.f31304e == null || this.f31305f == null) {
            if (!z) {
                this.f31304e = C8298p.m5976a(context, bjVar, this.f31321w, 0);
                this.f31305f = C8298p.m5976a(context, bjVar, this.f31321w, 0);
                this.f31309j = this.f31304e.f32199g.f31985d;
            } else {
                this.f31304e = C8298p.m5977a(context, bjVar, this.f31321w);
                C8298p a = C8298p.m5977a(context, bjVar, this.f31321w);
                this.f31305f = a;
                C8298p pVar = this.f31304e;
                pVar.f32299z = false;
                a.f32299z = false;
                pVar.f32296B = getFrameSizeString();
                this.f31305f.f32296B = getFrameSizeString();
            }
            this.f31307h = this.f31304e;
        }
        if (this.f31311l == null) {
            this.f31311l = new HandlerC8301q(this);
        }
        this.f31304e.mo5978a(context);
        this.f31305f.mo5978a(context);
        boolean z2 = context instanceof Activity;
        this.f31304e.mo6086a(z2 ? InMobiAdRequest.MonetizationContext.MONETIZATION_CONTEXT_ACTIVITY : InMobiAdRequest.MonetizationContext.MONETIZATION_CONTEXT_OTHER);
        this.f31305f.mo6086a(z2 ? InMobiAdRequest.MonetizationContext.MONETIZATION_CONTEXT_ACTIVITY : InMobiAdRequest.MonetizationContext.MONETIZATION_CONTEXT_OTHER);
        C8298p pVar2 = this.f31304e;
        pVar2.f32206n = false;
        this.f31305f.f32206n = false;
        if (this.f31319u) {
            pVar2.m5983M();
            this.f31305f.m5983M();
        }
        C8298p pVar3 = this.f31304e;
        Map<String, String> map = bjVar.f31896c;
        pVar3.f32198f = map;
        C8298p pVar4 = this.f31305f;
        pVar4.f32198f = map;
        String str = bjVar.f31897d;
        pVar3.f32197e = str;
        pVar4.f32197e = str;
    }

    /* renamed from: a */
    public static /* synthetic */ void m6726a(InMobiBanner inMobiBanner, AbstractC8015a aVar) {
        RenderView renderView;
        C8298p pVar = inMobiBanner.f31306g;
        if (pVar == null) {
            inMobiBanner.f31306g = inMobiBanner.f31304e;
            inMobiBanner.f31307h = inMobiBanner.f31305f;
        } else if (pVar.equals(inMobiBanner.f31304e)) {
            inMobiBanner.f31306g = inMobiBanner.f31305f;
            inMobiBanner.f31307h = inMobiBanner.f31304e;
        } else if (inMobiBanner.f31306g.equals(inMobiBanner.f31305f)) {
            inMobiBanner.f31306g = inMobiBanner.f31304e;
            inMobiBanner.f31307h = inMobiBanner.f31305f;
        }
        try {
            if (inMobiBanner.f31320v) {
                AnimationType animationType = inMobiBanner.f31314o;
                float width = inMobiBanner.getWidth();
                float height = inMobiBanner.getHeight();
                AlphaAnimation alphaAnimation = null;
                if (animationType == AnimationType.ANIMATION_ALPHA) {
                    AlphaAnimation alphaAnimation2 = new AlphaAnimation(0.0f, 0.5f);
                    alphaAnimation2.setDuration(1000L);
                    alphaAnimation2.setFillAfter(false);
                    alphaAnimation2.setInterpolator(new DecelerateInterpolator());
                    alphaAnimation = alphaAnimation2;
                } else if (animationType == AnimationType.ROTATE_HORIZONTAL_AXIS) {
                    C8290m.C8291a aVar2 = new C8290m.C8291a(width / 2.0f, height / 2.0f);
                    aVar2.setDuration(500L);
                    aVar2.setFillAfter(false);
                    aVar2.setInterpolator(new AccelerateInterpolator());
                    alphaAnimation = aVar2;
                } else if (animationType == AnimationType.ROTATE_VERTICAL_AXIS) {
                    C8290m.C8292b bVar = new C8290m.C8292b(width / 2.0f, height / 2.0f);
                    bVar.setDuration(500L);
                    bVar.setFillAfter(false);
                    bVar.setInterpolator(new AccelerateInterpolator());
                    alphaAnimation = bVar;
                }
                if (!(inMobiBanner.getContext() == null || inMobiBanner.f31306g == null || (renderView = (RenderView) inMobiBanner.f31306g.m6039j()) == null)) {
                    AbstractC8213cb viewableAd = renderView.getViewableAd();
                    if (inMobiBanner.f31306g.f32295A) {
                        renderView.mo5607a();
                    }
                    ViewGroup viewGroup = (ViewGroup) renderView.getParent();
                    RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
                    View a = viewableAd.mo5945a();
                    viewableAd.mo5937a(new View[0]);
                    if (inMobiBanner.f31307h != null) {
                        inMobiBanner.f31307h.m5981O();
                    }
                    if (viewGroup == null) {
                        inMobiBanner.addView(a, layoutParams);
                    } else {
                        viewGroup.removeAllViews();
                        viewGroup.addView(a, layoutParams);
                    }
                    inMobiBanner.f31307h.mo6027t();
                }
                if (alphaAnimation != null) {
                    inMobiBanner.startAnimation(alphaAnimation);
                }
            }
            aVar.mo6706a();
        } catch (Exception e) {
            Logger.m5724a(Logger.InternalLogLevel.ERROR, f31299a, "Unexpected error while displaying Banner Ad.");
            new StringBuilder("Unexpected error while displaying Banner Ad : ").append(e.getMessage());
        }
    }

    /* renamed from: a */
    private boolean m6730a(InMobiAdRequestStatus inMobiAdRequestStatus) {
        C8298p pVar = this.f31307h;
        if (pVar == null || pVar.f32217y) {
            return true;
        }
        BannerAdEventListener bannerAdEventListener = this.f31302c;
        if (bannerAdEventListener == null) {
            return false;
        }
        bannerAdEventListener.onAdLoadFailed(this, inMobiAdRequestStatus);
        return false;
    }

    /* renamed from: b */
    private boolean m6719b(boolean z) {
        if (!this.f31308i) {
            Logger.m5724a(Logger.InternalLogLevel.ERROR, f31299a, "InMobiBanner is not initialized. Ignoring your call");
            return false;
        } else if (!z || this.f31302c != null) {
            return true;
        } else {
            Logger.m5724a(Logger.InternalLogLevel.ERROR, f31299a, "Listener supplied is null, Ignoring your call.");
            return false;
        }
    }

    /* renamed from: c */
    public static boolean m6718c() {
        return Message.obtain() == null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: f */
    public boolean m6712f() {
        C8298p pVar = this.f31307h;
        if (pVar == null) {
            return false;
        }
        if (this.f31315p != 0) {
            int i = pVar.f32199g.f31984c;
            if (SystemClock.elapsedRealtime() - this.f31315p < i * 1000) {
                C8298p pVar2 = this.f31307h;
                InMobiAdRequestStatus inMobiAdRequestStatus = new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.EARLY_REFRESH_REQUEST);
                pVar2.mo6084a(inMobiAdRequestStatus.setCustomMessage("Ad cannot be refreshed before " + i + " seconds"), false);
                Logger.InternalLogLevel internalLogLevel = Logger.InternalLogLevel.ERROR;
                String str = f31299a;
                Logger.m5724a(internalLogLevel, str, "Ad cannot be refreshed before " + i + " seconds (Placement Id = " + this.f31307h.f32196d + ")");
                return false;
            }
        }
        this.f31315p = SystemClock.elapsedRealtime();
        return true;
    }

    /* renamed from: g */
    private void m6710g() {
        if (getLayoutParams() != null) {
            this.f31312m = C8399c.m5684b(getLayoutParams().width);
            this.f31313n = C8399c.m5684b(getLayoutParams().height);
        }
    }

    private AbstractC8286j getAdUnitTRCCollector() {
        if (this.f31316r == null) {
            this.f31316r = new C8287k(this.f31307h);
        }
        return this.f31316r;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: h */
    public void m6708h() {
        HandlerC8301q qVar = this.f31311l;
        if (qVar != null) {
            qVar.removeMessages(1);
        }
    }

    @Deprecated
    public static void requestAd(Context context, InMobiAdRequest inMobiAdRequest, BannerAdRequestListener bannerAdRequestListener) {
        if (!C8326a.m5899a()) {
            Logger.m5724a(Logger.InternalLogLevel.ERROR, f31299a, "Please initialize the SDK before calling requestAd. Ignoring request");
        } else if (context == null) {
            Logger.m5724a(Logger.InternalLogLevel.ERROR, f31299a, "Please supply a non null Context. Aborting request");
        } else if (inMobiAdRequest == null) {
            Logger.m5724a(Logger.InternalLogLevel.ERROR, f31299a, "Please supply a non  null InMobiAdRequest. Ignoring request");
        } else if (bannerAdRequestListener == null) {
            Logger.m5724a(Logger.InternalLogLevel.ERROR, f31299a, "Please supply a non null BannerAdRequestListener. Ignoring request");
        } else if (inMobiAdRequest.f31284c > 0 || inMobiAdRequest.f31285d > 0) {
            AbstractC8252i.AbstractC8285e eVar = new AbstractC8252i.AbstractC8285e() { // from class: com.inmobi.ads.InMobiBanner.2
                @Override // com.inmobi.ads.AbstractC8252i.AbstractC8285e
                /* renamed from: a */
                public final void mo5991a(AbstractC8252i iVar) {
                    if (iVar instanceof C8298p) {
                        try {
                            WeakReference weakReference = (WeakReference) InMobiBanner.f31300q.get(iVar);
                            if (weakReference != null) {
                                InMobiBanner.f31300q.remove(iVar);
                                BannerAdRequestListener bannerAdRequestListener2 = (BannerAdRequestListener) weakReference.get();
                                if (bannerAdRequestListener2 != null) {
                                    InMobiBanner inMobiBanner = new InMobiBanner(iVar.m6092a(), iVar.f32196d);
                                    inMobiBanner.setExtras(iVar.f32198f);
                                    inMobiBanner.setKeywords(iVar.f32197e);
                                    inMobiBanner.setMonetizationContext(iVar.mo6036l());
                                    bannerAdRequestListener2.onAdRequestCompleted(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.NO_ERROR), inMobiBanner);
                                }
                            }
                        } catch (Exception e) {
                            String unused = InMobiBanner.f31299a;
                            new StringBuilder("SDK encountered unexpected error in onAdPrefetchSucceeded ").append(e.getMessage());
                        }
                    }
                }

                @Override // com.inmobi.ads.AbstractC8252i.AbstractC8285e
                /* renamed from: a */
                public final void mo5990a(AbstractC8252i iVar, InMobiAdRequestStatus inMobiAdRequestStatus) {
                    WeakReference weakReference;
                    try {
                        if ((iVar instanceof C8298p) && (weakReference = (WeakReference) InMobiBanner.f31300q.get(iVar)) != null) {
                            InMobiBanner.f31300q.remove(iVar);
                            BannerAdRequestListener bannerAdRequestListener2 = (BannerAdRequestListener) weakReference.get();
                            if (bannerAdRequestListener2 != null) {
                                bannerAdRequestListener2.onAdRequestCompleted(inMobiAdRequestStatus, null);
                            }
                        }
                    } catch (Exception e) {
                        String unused = InMobiBanner.f31299a;
                        new StringBuilder("SDK encountered unexpected error in onAdPrefetchFailed ").append(e.getMessage());
                    }
                }
            };
            try {
                HashMap hashMap = new HashMap();
                hashMap.put("description", "requestAd Api called");
                try {
                    C8366b.m5794a();
                    C8366b.m5789a("ads", "GenericEvents", hashMap);
                } catch (Exception e) {
                    StringBuilder sb = new StringBuilder("Error in submitting telemetry event : (");
                    sb.append(e.getMessage());
                    sb.append(")");
                }
                C8175bj a = C8175bj.m6257a(inMobiAdRequest.f31282a, inMobiAdRequest.f31287f, "banner", inMobiAdRequest.f31286e);
                a.f31899f = inMobiAdRequest.f31283b;
                C8298p a2 = C8298p.m5976a(context.getApplicationContext(), a, (AbstractC8252i.AbstractC8282b) null, 2);
                a2.f32198f = inMobiAdRequest.f31287f;
                a2.mo6086a(inMobiAdRequest.f31283b);
                a2.f32197e = inMobiAdRequest.f31286e;
                a2.f32296B = inMobiAdRequest.f31284c + "x" + inMobiAdRequest.f31285d;
                a2.f32209q = eVar;
                a2.f32206n = true;
                f31300q.put(a2, new WeakReference<>(bannerAdRequestListener));
                a2.mo5966q();
            } catch (Exception e2) {
                new StringBuilder("SDK encountered unexpected error in requestAd").append(e2.getMessage());
            }
        } else {
            Logger.m5724a(Logger.InternalLogLevel.ERROR, f31299a, "Please provide positive width and height for banner. Ignoring request");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setMonetizationContext(InMobiAdRequest.MonetizationContext monetizationContext) {
        C8175bj bjVar;
        if (this.f31308i && (bjVar = this.f31318t) != null) {
            bjVar.f31899f = monetizationContext;
        }
    }

    /* renamed from: a */
    public final void m6724a(String str, String str2) {
        getAdUnitTRCCollector().mo5989a(this.f31321w, str, str2);
    }

    /* renamed from: a */
    public final void m6723a(final boolean z) {
        try {
            if (!C8326a.m5899a()) {
                Logger.m5724a(Logger.InternalLogLevel.ERROR, f31299a, "InMobiBanner is not initialized. Ignoring InMobiBanner.load()");
            } else if (this.f31308i) {
                m6731a(getContext(), this.f31318t, false);
                if (!(this.f31304e == null || this.f31305f == null)) {
                    this.f31304e.f32217y = false;
                    this.f31305f.f32217y = false;
                }
                m6724a("ARR", "");
                if (this.f31306g == null || !this.f31306g.m5982N()) {
                    if (!m6732a()) {
                        if (getLayoutParams() == null) {
                            Logger.m5724a(Logger.InternalLogLevel.ERROR, f31299a, "The layout params of the banner must be set before calling load or call setBannerSize(int widthInDp, int heightInDp) before load");
                            this.f31321w.mo6011a(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.REQUEST_INVALID));
                            return;
                        }
                        if (!(getLayoutParams().width == -2 || getLayoutParams().height == -2)) {
                            m6710g();
                        }
                        Logger.m5724a(Logger.InternalLogLevel.ERROR, f31299a, "The height or width of a Banner ad can't be WRAP_CONTENT or call setBannerSize(int widthInDp, int heightInDp) before load");
                        this.f31321w.mo6011a(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.REQUEST_INVALID));
                        return;
                    }
                    if (!m6732a()) {
                        new Handler().postDelayed(new Runnable() { // from class: com.inmobi.ads.InMobiBanner.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                try {
                                    if (InMobiBanner.this.m6732a()) {
                                        InMobiBanner.this.m6708h();
                                        if (InMobiBanner.this.m6712f() && InMobiBanner.this.f31307h != null) {
                                            InMobiBanner.this.f31307h.f32296B = InMobiBanner.this.getFrameSizeString();
                                            InMobiBanner.this.f31307h.m5970c(z);
                                            return;
                                        }
                                        return;
                                    }
                                    Logger.m5724a(Logger.InternalLogLevel.ERROR, InMobiBanner.f31299a, "The height or width of the banner can not be determined");
                                    AbstractC8252i.AbstractC8282b bVar = InMobiBanner.this.f31321w;
                                    C8298p unused = InMobiBanner.this.f31307h;
                                    bVar.mo6011a(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR));
                                } catch (Exception e) {
                                    Logger.m5724a(Logger.InternalLogLevel.ERROR, InMobiBanner.f31299a, "SDK encountered unexpected error while loading an ad");
                                    String unused2 = InMobiBanner.f31299a;
                                    new StringBuilder("InMobiBanner$4.run() threw unexpected error: ").append(e.getMessage());
                                }
                            }
                        }, 200L);
                        return;
                    }
                    m6708h();
                    if (m6712f() && this.f31307h != null) {
                        this.f31307h.f32296B = getFrameSizeString();
                        this.f31307h.m5970c(z);
                        return;
                    }
                    return;
                }
                Message obtain = Message.obtain();
                obtain.what = 2;
                obtain.obj = new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.AD_ACTIVE);
                m6724a("ART", "LoadInProgress");
                this.f31303d.sendMessage(obtain);
                this.f31306g.m6058b("AdActive");
                Logger.m5724a(Logger.InternalLogLevel.ERROR, f31299a, "An ad is currently being viewed by the user. Please wait for the user to close the ad before requesting for another ad.");
            }
        } catch (Exception e) {
            Logger.m5724a(Logger.InternalLogLevel.ERROR, f31299a, "Unable to load ad; SDK encountered an unexpected error");
            new StringBuilder("Load failed with unexpected error: ").append(e.getMessage());
        }
    }

    /* renamed from: a */
    public final boolean m6732a() {
        return this.f31312m > 0 && this.f31313n > 0;
    }

    /* renamed from: b */
    public final void m6722b() {
        HandlerC8301q qVar;
        if (isShown() && hasWindowFocus()) {
            if (this.f31307h == null) {
                m6731a(getContext(), this.f31318t, false);
            }
            HandlerC8301q qVar2 = this.f31311l;
            if (qVar2 != null) {
                qVar2.removeMessages(1);
            }
            int i = this.f31307h.f32193a;
            if (i != 1 && i != 2) {
                C8298p pVar = this.f31306g;
                if ((pVar == null || pVar.f32193a != 8) && this.f31310k && (qVar = this.f31311l) != null) {
                    qVar.sendEmptyMessageDelayed(1, this.f31309j * 1000);
                }
            }
        }
    }

    public final void disableHardwareAcceleration() {
        this.f31319u = true;
    }

    public final JSONObject getAdMetaInfo() {
        C8298p pVar;
        return (!this.f31308i || (pVar = this.f31306g) == null) ? new JSONObject() : pVar.f32201i;
    }

    public final String getCreativeId() {
        C8298p pVar;
        return (!this.f31308i || (pVar = this.f31306g) == null) ? "" : pVar.f32216x;
    }

    public final String getFrameSizeString() {
        return this.f31312m + "x" + this.f31313n;
    }

    public final void getSignals() {
        if (m6719b(true) && m6730a(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.GET_SIGNALS_CALLED_AFTER_LOAD))) {
            if (!m6732a()) {
                Message obtain = Message.obtain();
                obtain.what = 2;
                obtain.obj = new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INVALID_SIZE);
                this.f31303d.sendMessage(obtain);
                return;
            }
            setEnableAutoRefresh(false);
            m6724a("ARR", "");
            if (this.f31307h == null) {
                m6731a(this.f31317s.get(), this.f31318t, true);
            }
            this.f31304e.f32217y = true;
            this.f31305f.f32217y = true;
            this.f31307h.m6030o();
        }
    }

    public final void load() {
        if (m6719b(false)) {
            C8298p pVar = this.f31307h;
            if (pVar == null || !pVar.f32217y) {
                m6723a(false);
                return;
            }
            BannerAdEventListener bannerAdEventListener = this.f31302c;
            if (bannerAdEventListener != null) {
                bannerAdEventListener.onAdLoadFailed(this, new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.LOAD_CALLED_AFTER_GET_SIGNALS));
            }
        }
    }

    public final void load(Context context) {
        if (m6719b(false)) {
            boolean z = context instanceof Activity;
            if (z) {
                this.f31317s = new WeakReference<>((Activity) context);
            } else {
                this.f31317s = null;
            }
            C8175bj bjVar = this.f31318t;
            if (bjVar != null) {
                bjVar.f31899f = z ? InMobiAdRequest.MonetizationContext.MONETIZATION_CONTEXT_ACTIVITY : InMobiAdRequest.MonetizationContext.MONETIZATION_CONTEXT_OTHER;
            }
            m6723a(false);
        }
    }

    public final void load(byte[] bArr) {
        if (m6719b(false) && m6730a(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.LOAD_WITH_RESPONSE_CALLED_AFTER_LOAD))) {
            setEnableAutoRefresh(false);
            if (this.f31307h == null) {
                m6731a(getContext(), this.f31318t, true);
            }
            C8298p pVar = this.f31307h;
            pVar.f32215w = false;
            this.f31304e.f32217y = true;
            this.f31305f.f32217y = true;
            pVar.m6064a(bArr);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        try {
            super.onAttachedToWindow();
            if (this.f31304e != null) {
                C8326a.m5897a(getContext(), this.f31304e);
            }
            if (this.f31305f != null) {
                C8326a.m5897a(getContext(), this.f31305f);
            }
            if (this.f31308i) {
                m6710g();
                if (!m6732a()) {
                    getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.inmobi.ads.InMobiBanner.3
                        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
                        public final void onGlobalLayout() {
                            try {
                                InMobiBanner.this.f31312m = C8399c.m5684b(InMobiBanner.this.getMeasuredWidth());
                                InMobiBanner.this.f31313n = C8399c.m5684b(InMobiBanner.this.getMeasuredHeight());
                                if (!InMobiBanner.this.m6732a()) {
                                    return;
                                }
                                if (Build.VERSION.SDK_INT >= 16) {
                                    InMobiBanner.this.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                                } else {
                                    InMobiBanner.this.getViewTreeObserver().removeGlobalOnLayoutListener(this);
                                }
                            } catch (Exception e) {
                                Logger.m5724a(Logger.InternalLogLevel.ERROR, InMobiBanner.f31299a, "InMobiBanner$1.onGlobalLayout() handler threw unexpected error");
                                String unused = InMobiBanner.f31299a;
                                new StringBuilder("InMobiBanner$1.onGlobalLayout() handler threw unexpected error: ").append(e.getMessage());
                            }
                        }
                    });
                }
                m6722b();
            }
        } catch (Exception e) {
            Logger.m5724a(Logger.InternalLogLevel.ERROR, f31299a, "InMobiBanner#onAttachedToWindow() handler threw unexpected error");
            new StringBuilder("InMobiBanner#onAttachedToWindow() handler threw unexpected error: ").append(e.getMessage());
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        try {
            super.onDetachedFromWindow();
            if (this.f31308i) {
                m6708h();
            }
            if (this.f31304e != null) {
                this.f31304e.m5979Q();
            }
            if (this.f31305f != null) {
                this.f31305f.m5979Q();
            }
        } catch (Exception e) {
            Logger.m5724a(Logger.InternalLogLevel.ERROR, f31299a, "InMobiBanner.onDetachedFromWindow() handler threw unexpected error");
            new StringBuilder("InMobiBanner.onDetachedFromWindow() handler threw unexpected error: ").append(e.getMessage());
        }
    }

    @Override // android.view.View
    public final void onVisibilityChanged(View view, int i) {
        try {
            super.onVisibilityChanged(view, i);
            if (!this.f31308i) {
                return;
            }
            if (i == 0) {
                m6722b();
            } else {
                m6708h();
            }
        } catch (Exception e) {
            Logger.m5724a(Logger.InternalLogLevel.ERROR, f31299a, "InMobiBanner$1.onVisibilityChanged() handler threw unexpected error");
            new StringBuilder("InMobiBanner$1.onVisibilityChanged() handler threw unexpected error: ").append(e.getMessage());
        }
    }

    @Override // android.view.View
    public final void onWindowFocusChanged(boolean z) {
        try {
            super.onWindowFocusChanged(z);
            if (!this.f31308i) {
                return;
            }
            if (z) {
                m6722b();
            } else {
                m6708h();
            }
        } catch (Exception e) {
            Logger.m5724a(Logger.InternalLogLevel.ERROR, f31299a, "InMobiBanner$1.onWindowFocusChanged() handler threw unexpected error");
            new StringBuilder("InMobiBanner$1.onWindowFocusChanged() handler threw unexpected error: ").append(e.getMessage());
        }
    }

    public final void pause() {
        try {
            if (this.f31306g != null && this.f31317s == null) {
                this.f31306g.m5981O();
            }
        } catch (Exception e) {
            Logger.m5724a(Logger.InternalLogLevel.ERROR, "InMobi", "Could not pause ad; SDK encountered an unexpected error");
            new StringBuilder("SDK encountered unexpected error in pausing ad; ").append(e.getMessage());
        }
    }

    public final void resume() {
        try {
            if (this.f31306g != null && this.f31317s == null) {
                this.f31306g.m5980P();
            }
        } catch (Exception e) {
            Logger.m5724a(Logger.InternalLogLevel.ERROR, "InMobi", "Could not resume ad; SDK encountered an unexpected error");
            new StringBuilder("SDK encountered unexpected error in resuming ad; ").append(e.getMessage());
        }
    }

    public final void setAnimateAndDisplayAd(boolean z) {
        this.f31320v = z;
    }

    public final void setAnimationType(AnimationType animationType) {
        if (this.f31308i) {
            this.f31314o = animationType;
        }
    }

    public final void setBannerSize(int i, int i2) {
        if (this.f31308i) {
            this.f31312m = i;
            this.f31313n = i2;
        }
    }

    public final void setClientCallbackHandler(HandlerC8016b bVar) {
        this.f31303d = bVar;
    }

    public final void setEnableAutoRefresh(boolean z) {
        try {
            if (this.f31308i && this.f31310k != z) {
                this.f31310k = z;
                if (z) {
                    m6722b();
                } else {
                    m6708h();
                }
            }
        } catch (Exception e) {
            Logger.m5724a(Logger.InternalLogLevel.ERROR, f31299a, "Unable to setup auto-refresh on the ad; SDK encountered an unexpected error");
            new StringBuilder("Setting up auto-refresh failed with unexpected error: ").append(e.getMessage());
        }
    }

    public final void setExtras(Map<String, String> map) {
        C8175bj bjVar;
        if (this.f31308i && (bjVar = this.f31318t) != null) {
            bjVar.f31896c = map;
        }
    }

    public final void setKeywords(String str) {
        C8175bj bjVar;
        if (this.f31308i && (bjVar = this.f31318t) != null) {
            bjVar.f31897d = str;
        }
    }

    @Deprecated
    public final void setListener(BannerAdListener bannerAdListener) {
        if (bannerAdListener == null) {
            Logger.m5724a(Logger.InternalLogLevel.ERROR, f31299a, "Please pass a non-null listener to the banner.");
        } else {
            this.f31301b = bannerAdListener;
        }
    }

    public final void setListener(BannerAdEventListener bannerAdEventListener) {
        if (bannerAdEventListener == null) {
            Logger.m5724a(Logger.InternalLogLevel.ERROR, f31299a, "Please pass a non-null listener to the banner.");
        } else {
            this.f31302c = bannerAdEventListener;
        }
    }

    public final void setRefreshInterval(int i) {
        try {
            if (this.f31308i) {
                if (this.f31304e == null && this.f31305f == null) {
                    m6731a(getContext(), this.f31318t, false);
                    this.f31304e.f32217y = false;
                    this.f31305f.f32217y = false;
                }
                if (!this.f31307h.f32217y) {
                    int i2 = i;
                    if (i < this.f31307h.f32199g.f31984c) {
                        i2 = this.f31307h.f32199g.f31984c;
                    }
                    this.f31309j = i2;
                    return;
                }
                Logger.m5724a(Logger.InternalLogLevel.ERROR, f31299a, "setRefreshInterval API is not supported for Google Open Auction flow");
            }
        } catch (Exception e) {
            Logger.m5724a(Logger.InternalLogLevel.ERROR, f31299a, "Unable to set refresh interval for the ad; SDK encountered an unexpected error");
            new StringBuilder("Setting refresh interval failed with unexpected error: ").append(e.getMessage());
        }
    }

    public final void setTrcCollector(AbstractC8286j jVar) {
        this.f31316r = jVar;
    }
}
