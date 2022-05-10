package com.inmobi.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.inmobi.ads.AbstractC8252i;
import com.inmobi.ads.C8068ac;
import com.inmobi.ads.InMobiAdRequest;
import com.inmobi.ads.InMobiAdRequestStatus;
import com.inmobi.ads.listeners.InterstitialAdEventListener;
import com.inmobi.ads.p503d.C8224a;
import com.inmobi.ads.p503d.C8233b;
import com.inmobi.commons.core.p509a.C8328a;
import com.inmobi.commons.core.p513e.C8365a;
import com.inmobi.commons.core.p513e.C8366b;
import com.inmobi.commons.core.utilities.Logger;
import com.inmobi.commons.p508a.C8326a;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/inmobi/ads/InMobiInterstitial.class */
public final class InMobiInterstitial {

    /* renamed from: a */
    public static final String f31329a = "InMobiInterstitial";

    /* renamed from: m */
    public static ConcurrentHashMap<C8068ac, ArrayList<WeakReference<InterstitialAdRequestListener>>> f31330m = new ConcurrentHashMap<>(2, 0.9f, 3);

    /* renamed from: b */
    public C8068ac f31331b;

    /* renamed from: c */
    public HandlerC8022a f31332c;

    /* renamed from: d */
    public InterstitialAdListener2 f31333d;

    /* renamed from: e */
    public InterstitialAdEventListener f31334e;

    /* renamed from: f */
    public Context f31335f;

    /* renamed from: g */
    public long f31336g;

    /* renamed from: h */
    public boolean f31337h;

    /* renamed from: i */
    public String f31338i;

    /* renamed from: j */
    public Map<String, String> f31339j;

    /* renamed from: k */
    public boolean f31340k;

    /* renamed from: l */
    public boolean f31341l;

    /* renamed from: n */
    public String f31342n;

    /* renamed from: o */
    public AbstractC8286j f31343o;

    /* renamed from: p */
    public JSONObject f31344p;

    /* renamed from: q */
    public final AbstractC8252i.AbstractC8282b f31345q;

    /* renamed from: com.inmobi.ads.InMobiInterstitial$3 */
    /* loaded from: classes2-dex2jar.jar:com/inmobi/ads/InMobiInterstitial$3.class */
    public static final /* synthetic */ class C80213 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f31353a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x004d -> B:31:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0051 -> B:27:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0055 -> B:25:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0059 -> B:21:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x005d -> B:29:0x0040). Please submit an issue!!! */
        static {
            int[] iArr = new int[InMobiAdRequestStatus.StatusCode.values().length];
            f31353a = iArr;
            try {
                iArr[InMobiAdRequestStatus.StatusCode.NETWORK_UNREACHABLE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f31353a[InMobiAdRequestStatus.StatusCode.REQUEST_PENDING.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f31353a[InMobiAdRequestStatus.StatusCode.AD_ACTIVE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f31353a[InMobiAdRequestStatus.StatusCode.EARLY_REFRESH_REQUEST.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f31353a[InMobiAdRequestStatus.StatusCode.MISSING_REQUIRED_DEPENDENCIES.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f31353a[InMobiAdRequestStatus.StatusCode.MONETIZATION_DISABLED.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/inmobi/ads/InMobiInterstitial$InterstitialAdListener2.class */
    public interface InterstitialAdListener2 {
        void onAdDismissed(InMobiInterstitial inMobiInterstitial);

        void onAdDisplayFailed(InMobiInterstitial inMobiInterstitial);

        void onAdDisplayed(InMobiInterstitial inMobiInterstitial);

        void onAdInteraction(InMobiInterstitial inMobiInterstitial, Map<Object, Object> map);

        void onAdLoadFailed(InMobiInterstitial inMobiInterstitial, InMobiAdRequestStatus inMobiAdRequestStatus);

        void onAdLoadSucceeded(InMobiInterstitial inMobiInterstitial);

        void onAdReceived(InMobiInterstitial inMobiInterstitial);

        void onAdRewardActionCompleted(InMobiInterstitial inMobiInterstitial, Map<Object, Object> map);

        void onAdWillDisplay(InMobiInterstitial inMobiInterstitial);

        void onUserLeftApplication(InMobiInterstitial inMobiInterstitial);
    }

    /* loaded from: classes2-dex2jar.jar:com/inmobi/ads/InMobiInterstitial$InterstitialAdRequestListener.class */
    public interface InterstitialAdRequestListener {
        void onAdRequestCompleted(InMobiAdRequestStatus inMobiAdRequestStatus, InMobiInterstitial inMobiInterstitial);
    }

    /* renamed from: com.inmobi.ads.InMobiInterstitial$a */
    /* loaded from: classes2-dex2jar.jar:com/inmobi/ads/InMobiInterstitial$a.class */
    public static final class HandlerC8022a extends Handler {

        /* renamed from: a */
        public WeakReference<InMobiInterstitial> f31354a;

        public HandlerC8022a(InMobiInterstitial inMobiInterstitial) {
            super(Looper.getMainLooper());
            this.f31354a = new WeakReference<>(inMobiInterstitial);
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            InMobiInterstitial inMobiInterstitial = this.f31354a.get();
            if (inMobiInterstitial != null) {
                try {
                    Map<Object, Object> map = null;
                    Map<Object, Object> map2 = null;
                    switch (message.what) {
                        case 1:
                            InMobiAdRequestStatus inMobiAdRequestStatus = (InMobiAdRequestStatus) message.obj;
                            if (inMobiInterstitial.f31334e != null) {
                                inMobiInterstitial.f31334e.onAdLoadFailed(inMobiInterstitial, inMobiAdRequestStatus);
                            }
                            if (inMobiInterstitial.f31333d != null) {
                                inMobiInterstitial.f31333d.onAdLoadFailed(inMobiInterstitial, inMobiAdRequestStatus);
                                return;
                            }
                            return;
                        case 2:
                            if (message.getData().getBoolean("available")) {
                                if (inMobiInterstitial.f31334e != null) {
                                    inMobiInterstitial.f31334e.onAdReceived(inMobiInterstitial);
                                }
                                if (inMobiInterstitial.f31333d != null) {
                                    inMobiInterstitial.f31333d.onAdReceived(inMobiInterstitial);
                                    return;
                                }
                                return;
                            }
                            return;
                        case 3:
                            if (inMobiInterstitial.f31334e != null) {
                                inMobiInterstitial.f31334e.onAdLoadSucceeded(inMobiInterstitial);
                            }
                            if (inMobiInterstitial.f31333d != null) {
                                inMobiInterstitial.f31333d.onAdLoadSucceeded(inMobiInterstitial);
                                return;
                            }
                            return;
                        case 4:
                            if (message.obj != null) {
                                map = (Map) message.obj;
                            }
                            if (inMobiInterstitial.f31334e != null) {
                                inMobiInterstitial.f31334e.onRewardsUnlocked(inMobiInterstitial, map);
                            }
                            if (inMobiInterstitial.f31333d != null) {
                                inMobiInterstitial.f31333d.onAdRewardActionCompleted(inMobiInterstitial, map);
                                return;
                            }
                            return;
                        case 5:
                            if (inMobiInterstitial.f31334e != null) {
                                inMobiInterstitial.f31334e.onAdDisplayFailed(inMobiInterstitial);
                            }
                            if (inMobiInterstitial.f31333d != null) {
                                inMobiInterstitial.f31333d.onAdDisplayFailed(inMobiInterstitial);
                                return;
                            }
                            return;
                        case 6:
                            if (inMobiInterstitial.f31334e != null) {
                                inMobiInterstitial.f31334e.onAdWillDisplay(inMobiInterstitial);
                            }
                            if (inMobiInterstitial.f31333d != null) {
                                inMobiInterstitial.f31333d.onAdWillDisplay(inMobiInterstitial);
                                return;
                            }
                            return;
                        case 7:
                            if (inMobiInterstitial.f31334e != null) {
                                inMobiInterstitial.f31334e.onAdDisplayed(inMobiInterstitial);
                            }
                            if (inMobiInterstitial.f31333d != null) {
                                inMobiInterstitial.f31333d.onAdDisplayed(inMobiInterstitial);
                                return;
                            }
                            return;
                        case 8:
                        default:
                            String unused = InMobiInterstitial.f31329a;
                            return;
                        case 9:
                            if (message.obj != null) {
                                map2 = (Map) message.obj;
                            }
                            if (inMobiInterstitial.f31334e != null) {
                                inMobiInterstitial.f31334e.onAdClicked(inMobiInterstitial, map2);
                            }
                            if (inMobiInterstitial.f31333d != null) {
                                inMobiInterstitial.f31333d.onAdInteraction(inMobiInterstitial, map2);
                                return;
                            }
                            return;
                        case 10:
                            if (inMobiInterstitial.f31334e != null) {
                                inMobiInterstitial.f31334e.onAdDismissed(inMobiInterstitial);
                            }
                            if (inMobiInterstitial.f31333d != null) {
                                inMobiInterstitial.f31333d.onAdDismissed(inMobiInterstitial);
                                return;
                            }
                            return;
                        case 11:
                            if (inMobiInterstitial.f31334e != null) {
                                inMobiInterstitial.f31334e.onUserLeftApplication(inMobiInterstitial);
                            }
                            if (inMobiInterstitial.f31333d != null) {
                                inMobiInterstitial.f31333d.onUserLeftApplication(inMobiInterstitial);
                                return;
                            }
                            return;
                        case 12:
                            if (inMobiInterstitial.f31334e != null) {
                                inMobiInterstitial.f31334e.onRequestPayloadCreated((byte[]) message.obj);
                                return;
                            }
                            return;
                        case 13:
                            if (inMobiInterstitial.f31334e != null) {
                                inMobiInterstitial.f31334e.onRequestPayloadCreationFailed((InMobiAdRequestStatus) message.obj);
                                return;
                            }
                            return;
                    }
                } catch (Exception e) {
                    Logger.m5724a(Logger.InternalLogLevel.ERROR, InMobiInterstitial.f31329a, "Publisher handler caused unexpected error");
                    String unused2 = InMobiInterstitial.f31329a;
                    new StringBuilder("Callback threw unexpected error: ").append(e.getMessage());
                }
            }
        }
    }

    public InMobiInterstitial(Context context, long j) {
        this.f31337h = false;
        this.f31341l = false;
        this.f31342n = "";
        this.f31345q = new AbstractC8252i.AbstractC8282b() { // from class: com.inmobi.ads.InMobiInterstitial.2
            @Override // com.inmobi.ads.AbstractC8252i.AbstractC8282b
            /* renamed from: a */
            public final void mo6011a(InMobiAdRequestStatus inMobiAdRequestStatus) {
                switch (C80213.f31353a[inMobiAdRequestStatus.getStatusCode().ordinal()]) {
                    case 1:
                        InMobiInterstitial.this.m6697a("ART", "NetworkNotAvailable");
                        break;
                    case 2:
                        InMobiInterstitial.this.m6697a("ART", "LoadInProgress");
                        break;
                    case 3:
                        InMobiInterstitial.this.m6697a("ART", "ReloadNotPermitted");
                        break;
                    case 4:
                        InMobiInterstitial.this.m6697a("ART", "FrequentRequests");
                        break;
                    case 5:
                        InMobiInterstitial.this.m6697a("ART", "MissingRequiredDependencies");
                        break;
                    case 6:
                        InMobiInterstitial.this.m6697a("ART", "MonetizationDisabled");
                        break;
                    default:
                        InMobiInterstitial.this.m6697a("AF", "");
                        break;
                }
                if (!InMobiInterstitial.m6693c()) {
                    Message obtain = Message.obtain();
                    obtain.what = 1;
                    obtain.obj = inMobiAdRequestStatus;
                    InMobiInterstitial.this.f31332c.sendMessage(obtain);
                }
            }

            @Override // com.inmobi.ads.AbstractC8252i.AbstractC8282b
            /* renamed from: a */
            public final void mo6010a(AbstractC8252i iVar) {
                InMobiInterstitial.this.m6697a("AR", "");
                InMobiInterstitial.this.f31342n = iVar.f32216x;
                InMobiInterstitial.this.f31344p = iVar.f32201i;
                InMobiInterstitial.this.f31332c.sendEmptyMessage(3);
            }

            @Override // com.inmobi.ads.AbstractC8252i.AbstractC8282b
            /* renamed from: a */
            public final void mo6009a(Map<Object, Object> map) {
                InMobiInterstitial.this.m6697a("AVCL", "");
                Message obtain = Message.obtain();
                obtain.what = 9;
                obtain.obj = map;
                InMobiInterstitial.this.f31332c.sendMessage(obtain);
            }

            @Override // com.inmobi.ads.AbstractC8252i.AbstractC8282b
            /* renamed from: a */
            public final void mo6008a(boolean z) {
                Message obtain = Message.obtain();
                obtain.what = 2;
                Bundle bundle = new Bundle();
                bundle.putBoolean("available", z);
                obtain.setData(bundle);
                InMobiInterstitial.this.f31332c.sendMessage(obtain);
            }

            @Override // com.inmobi.ads.AbstractC8252i.AbstractC8282b
            /* renamed from: a */
            public final void mo6007a(byte[] bArr) {
                Message obtain = Message.obtain();
                obtain.what = 12;
                obtain.obj = bArr;
                InMobiInterstitial.this.f31332c.sendMessage(obtain);
            }

            @Override // com.inmobi.ads.AbstractC8252i.AbstractC8282b
            /* renamed from: b */
            public final void mo6006b() {
                InMobiInterstitial.this.f31332c.sendEmptyMessage(5);
            }

            @Override // com.inmobi.ads.AbstractC8252i.AbstractC8282b
            /* renamed from: b */
            public final void mo6005b(InMobiAdRequestStatus inMobiAdRequestStatus) {
                Message obtain = Message.obtain();
                obtain.what = 13;
                obtain.obj = inMobiAdRequestStatus;
                InMobiInterstitial.this.f31332c.sendMessage(obtain);
            }

            @Override // com.inmobi.ads.AbstractC8252i.AbstractC8282b
            /* renamed from: b */
            public final void mo6004b(Map<Object, Object> map) {
                Message obtain = Message.obtain();
                obtain.what = 4;
                obtain.obj = map;
                InMobiInterstitial.this.f31332c.sendMessage(obtain);
            }

            @Override // com.inmobi.ads.AbstractC8252i.AbstractC8282b
            /* renamed from: c */
            public final void mo6002c() {
                InMobiInterstitial.this.f31332c.sendEmptyMessage(6);
            }

            @Override // com.inmobi.ads.AbstractC8252i.AbstractC8282b
            /* renamed from: d */
            public final void mo6001d() {
                InMobiInterstitial.this.m6697a("AVD", "");
                InMobiInterstitial.this.f31332c.sendEmptyMessage(7);
            }

            @Override // com.inmobi.ads.AbstractC8252i.AbstractC8282b
            /* renamed from: e */
            public final void mo6000e() {
                InMobiInterstitial.this.m6697a("AVCD", "");
                InMobiInterstitial.this.f31332c.sendEmptyMessage(10);
                final C8233b d = C8233b.m6131d();
                final C8175bj a = C8175bj.m6257a(InMobiInterstitial.this.f31336g, InMobiInterstitial.this.f31339j, "int", InMobiInterstitial.this.f31338i);
                if (C8224a.f32106b.m6194c(d.f32114c).f32033a) {
                    new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.inmobi.ads.d.b.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            try {
                                C8233b.m6134a(C8233b.this);
                                if (!C8224a.f32105a.containsKey(a)) {
                                    String unused = C8233b.f32130d;
                                    StringBuilder sb = new StringBuilder("preLoadAdUnit. pid:");
                                    sb.append(a.f31894a);
                                    sb.append(" tp:");
                                    sb.append(a.f31895b);
                                    if (a.f31896c == null && a.f31895b != null) {
                                        HashMap hashMap = new HashMap();
                                        hashMap.put("tp", a.f31895b);
                                        a.f31896c = hashMap;
                                    }
                                    C8235a aVar = new C8235a(a);
                                    C8233b.f32133g.add(aVar);
                                    C8068ac a2 = C8068ac.C8075a.m6528a(C8326a.m5891b(), a, aVar);
                                    a2.f32197e = a.f31897d;
                                    a2.f32198f = a.f31896c;
                                    a2.f32206n = true;
                                    C8224a.f32105a.put(a, a2);
                                    a2.m6533e(aVar);
                                }
                            } catch (Exception e) {
                                String unused2 = C8233b.f32130d;
                                new StringBuilder("SDK encountered an unexpected error preloading ad units; ").append(e.getMessage());
                                C8328a.m5878a().m5875a(new C8365a(e));
                            }
                        }
                    });
                }
            }

            @Override // com.inmobi.ads.AbstractC8252i.AbstractC8282b
            /* renamed from: f */
            public final void mo5999f() {
                InMobiInterstitial.this.f31332c.sendEmptyMessage(11);
            }
        };
        this.f31337h = true;
        this.f31335f = context;
        this.f31336g = j;
        this.f31332c = new HandlerC8022a(this);
    }

    public /* synthetic */ InMobiInterstitial(Context context, long j, byte b) {
        this(context, j);
    }

    @Deprecated
    public InMobiInterstitial(Context context, long j, InterstitialAdListener2 interstitialAdListener2) {
        this.f31337h = false;
        this.f31341l = false;
        this.f31342n = "";
        this.f31345q = new AbstractC8252i.AbstractC8282b() { // from class: com.inmobi.ads.InMobiInterstitial.2
            @Override // com.inmobi.ads.AbstractC8252i.AbstractC8282b
            /* renamed from: a */
            public final void mo6011a(InMobiAdRequestStatus inMobiAdRequestStatus) {
                switch (C80213.f31353a[inMobiAdRequestStatus.getStatusCode().ordinal()]) {
                    case 1:
                        InMobiInterstitial.this.m6697a("ART", "NetworkNotAvailable");
                        break;
                    case 2:
                        InMobiInterstitial.this.m6697a("ART", "LoadInProgress");
                        break;
                    case 3:
                        InMobiInterstitial.this.m6697a("ART", "ReloadNotPermitted");
                        break;
                    case 4:
                        InMobiInterstitial.this.m6697a("ART", "FrequentRequests");
                        break;
                    case 5:
                        InMobiInterstitial.this.m6697a("ART", "MissingRequiredDependencies");
                        break;
                    case 6:
                        InMobiInterstitial.this.m6697a("ART", "MonetizationDisabled");
                        break;
                    default:
                        InMobiInterstitial.this.m6697a("AF", "");
                        break;
                }
                if (!InMobiInterstitial.m6693c()) {
                    Message obtain = Message.obtain();
                    obtain.what = 1;
                    obtain.obj = inMobiAdRequestStatus;
                    InMobiInterstitial.this.f31332c.sendMessage(obtain);
                }
            }

            @Override // com.inmobi.ads.AbstractC8252i.AbstractC8282b
            /* renamed from: a */
            public final void mo6010a(AbstractC8252i iVar) {
                InMobiInterstitial.this.m6697a("AR", "");
                InMobiInterstitial.this.f31342n = iVar.f32216x;
                InMobiInterstitial.this.f31344p = iVar.f32201i;
                InMobiInterstitial.this.f31332c.sendEmptyMessage(3);
            }

            @Override // com.inmobi.ads.AbstractC8252i.AbstractC8282b
            /* renamed from: a */
            public final void mo6009a(Map<Object, Object> map) {
                InMobiInterstitial.this.m6697a("AVCL", "");
                Message obtain = Message.obtain();
                obtain.what = 9;
                obtain.obj = map;
                InMobiInterstitial.this.f31332c.sendMessage(obtain);
            }

            @Override // com.inmobi.ads.AbstractC8252i.AbstractC8282b
            /* renamed from: a */
            public final void mo6008a(boolean z) {
                Message obtain = Message.obtain();
                obtain.what = 2;
                Bundle bundle = new Bundle();
                bundle.putBoolean("available", z);
                obtain.setData(bundle);
                InMobiInterstitial.this.f31332c.sendMessage(obtain);
            }

            @Override // com.inmobi.ads.AbstractC8252i.AbstractC8282b
            /* renamed from: a */
            public final void mo6007a(byte[] bArr) {
                Message obtain = Message.obtain();
                obtain.what = 12;
                obtain.obj = bArr;
                InMobiInterstitial.this.f31332c.sendMessage(obtain);
            }

            @Override // com.inmobi.ads.AbstractC8252i.AbstractC8282b
            /* renamed from: b */
            public final void mo6006b() {
                InMobiInterstitial.this.f31332c.sendEmptyMessage(5);
            }

            @Override // com.inmobi.ads.AbstractC8252i.AbstractC8282b
            /* renamed from: b */
            public final void mo6005b(InMobiAdRequestStatus inMobiAdRequestStatus) {
                Message obtain = Message.obtain();
                obtain.what = 13;
                obtain.obj = inMobiAdRequestStatus;
                InMobiInterstitial.this.f31332c.sendMessage(obtain);
            }

            @Override // com.inmobi.ads.AbstractC8252i.AbstractC8282b
            /* renamed from: b */
            public final void mo6004b(Map<Object, Object> map) {
                Message obtain = Message.obtain();
                obtain.what = 4;
                obtain.obj = map;
                InMobiInterstitial.this.f31332c.sendMessage(obtain);
            }

            @Override // com.inmobi.ads.AbstractC8252i.AbstractC8282b
            /* renamed from: c */
            public final void mo6002c() {
                InMobiInterstitial.this.f31332c.sendEmptyMessage(6);
            }

            @Override // com.inmobi.ads.AbstractC8252i.AbstractC8282b
            /* renamed from: d */
            public final void mo6001d() {
                InMobiInterstitial.this.m6697a("AVD", "");
                InMobiInterstitial.this.f31332c.sendEmptyMessage(7);
            }

            @Override // com.inmobi.ads.AbstractC8252i.AbstractC8282b
            /* renamed from: e */
            public final void mo6000e() {
                InMobiInterstitial.this.m6697a("AVCD", "");
                InMobiInterstitial.this.f31332c.sendEmptyMessage(10);
                final C8233b d = C8233b.m6131d();
                final C8175bj a = C8175bj.m6257a(InMobiInterstitial.this.f31336g, InMobiInterstitial.this.f31339j, "int", InMobiInterstitial.this.f31338i);
                if (C8224a.f32106b.m6194c(d.f32114c).f32033a) {
                    new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.inmobi.ads.d.b.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            try {
                                C8233b.m6134a(C8233b.this);
                                if (!C8224a.f32105a.containsKey(a)) {
                                    String unused = C8233b.f32130d;
                                    StringBuilder sb = new StringBuilder("preLoadAdUnit. pid:");
                                    sb.append(a.f31894a);
                                    sb.append(" tp:");
                                    sb.append(a.f31895b);
                                    if (a.f31896c == null && a.f31895b != null) {
                                        HashMap hashMap = new HashMap();
                                        hashMap.put("tp", a.f31895b);
                                        a.f31896c = hashMap;
                                    }
                                    C8235a aVar = new C8235a(a);
                                    C8233b.f32133g.add(aVar);
                                    C8068ac a2 = C8068ac.C8075a.m6528a(C8326a.m5891b(), a, aVar);
                                    a2.f32197e = a.f31897d;
                                    a2.f32198f = a.f31896c;
                                    a2.f32206n = true;
                                    C8224a.f32105a.put(a, a2);
                                    a2.m6533e(aVar);
                                }
                            } catch (Exception e) {
                                String unused2 = C8233b.f32130d;
                                new StringBuilder("SDK encountered an unexpected error preloading ad units; ").append(e.getMessage());
                                C8328a.m5878a().m5875a(new C8365a(e));
                            }
                        }
                    });
                }
            }

            @Override // com.inmobi.ads.AbstractC8252i.AbstractC8282b
            /* renamed from: f */
            public final void mo5999f() {
                InMobiInterstitial.this.f31332c.sendEmptyMessage(11);
            }
        };
        if (!C8326a.m5899a()) {
            Logger.m5724a(Logger.InternalLogLevel.ERROR, f31329a, "Please initialize the SDK before creating an Interstitial ad");
        } else if (interstitialAdListener2 == null) {
            Logger.m5724a(Logger.InternalLogLevel.ERROR, f31329a, "The Interstitial ad cannot be created as no event listener was supplied. Please attach a listener to proceed");
        } else if (context == null) {
            Logger.m5724a(Logger.InternalLogLevel.ERROR, f31329a, "Unable to create Interstitial ad with null context object.");
        } else {
            this.f31337h = true;
            this.f31335f = context.getApplicationContext();
            this.f31336g = j;
            this.f31333d = interstitialAdListener2;
            this.f31332c = new HandlerC8022a(this);
        }
    }

    public InMobiInterstitial(Context context, long j, InterstitialAdEventListener interstitialAdEventListener) {
        this.f31337h = false;
        this.f31341l = false;
        this.f31342n = "";
        this.f31345q = new AbstractC8252i.AbstractC8282b() { // from class: com.inmobi.ads.InMobiInterstitial.2
            @Override // com.inmobi.ads.AbstractC8252i.AbstractC8282b
            /* renamed from: a */
            public final void mo6011a(InMobiAdRequestStatus inMobiAdRequestStatus) {
                switch (C80213.f31353a[inMobiAdRequestStatus.getStatusCode().ordinal()]) {
                    case 1:
                        InMobiInterstitial.this.m6697a("ART", "NetworkNotAvailable");
                        break;
                    case 2:
                        InMobiInterstitial.this.m6697a("ART", "LoadInProgress");
                        break;
                    case 3:
                        InMobiInterstitial.this.m6697a("ART", "ReloadNotPermitted");
                        break;
                    case 4:
                        InMobiInterstitial.this.m6697a("ART", "FrequentRequests");
                        break;
                    case 5:
                        InMobiInterstitial.this.m6697a("ART", "MissingRequiredDependencies");
                        break;
                    case 6:
                        InMobiInterstitial.this.m6697a("ART", "MonetizationDisabled");
                        break;
                    default:
                        InMobiInterstitial.this.m6697a("AF", "");
                        break;
                }
                if (!InMobiInterstitial.m6693c()) {
                    Message obtain = Message.obtain();
                    obtain.what = 1;
                    obtain.obj = inMobiAdRequestStatus;
                    InMobiInterstitial.this.f31332c.sendMessage(obtain);
                }
            }

            @Override // com.inmobi.ads.AbstractC8252i.AbstractC8282b
            /* renamed from: a */
            public final void mo6010a(AbstractC8252i iVar) {
                InMobiInterstitial.this.m6697a("AR", "");
                InMobiInterstitial.this.f31342n = iVar.f32216x;
                InMobiInterstitial.this.f31344p = iVar.f32201i;
                InMobiInterstitial.this.f31332c.sendEmptyMessage(3);
            }

            @Override // com.inmobi.ads.AbstractC8252i.AbstractC8282b
            /* renamed from: a */
            public final void mo6009a(Map<Object, Object> map) {
                InMobiInterstitial.this.m6697a("AVCL", "");
                Message obtain = Message.obtain();
                obtain.what = 9;
                obtain.obj = map;
                InMobiInterstitial.this.f31332c.sendMessage(obtain);
            }

            @Override // com.inmobi.ads.AbstractC8252i.AbstractC8282b
            /* renamed from: a */
            public final void mo6008a(boolean z) {
                Message obtain = Message.obtain();
                obtain.what = 2;
                Bundle bundle = new Bundle();
                bundle.putBoolean("available", z);
                obtain.setData(bundle);
                InMobiInterstitial.this.f31332c.sendMessage(obtain);
            }

            @Override // com.inmobi.ads.AbstractC8252i.AbstractC8282b
            /* renamed from: a */
            public final void mo6007a(byte[] bArr) {
                Message obtain = Message.obtain();
                obtain.what = 12;
                obtain.obj = bArr;
                InMobiInterstitial.this.f31332c.sendMessage(obtain);
            }

            @Override // com.inmobi.ads.AbstractC8252i.AbstractC8282b
            /* renamed from: b */
            public final void mo6006b() {
                InMobiInterstitial.this.f31332c.sendEmptyMessage(5);
            }

            @Override // com.inmobi.ads.AbstractC8252i.AbstractC8282b
            /* renamed from: b */
            public final void mo6005b(InMobiAdRequestStatus inMobiAdRequestStatus) {
                Message obtain = Message.obtain();
                obtain.what = 13;
                obtain.obj = inMobiAdRequestStatus;
                InMobiInterstitial.this.f31332c.sendMessage(obtain);
            }

            @Override // com.inmobi.ads.AbstractC8252i.AbstractC8282b
            /* renamed from: b */
            public final void mo6004b(Map<Object, Object> map) {
                Message obtain = Message.obtain();
                obtain.what = 4;
                obtain.obj = map;
                InMobiInterstitial.this.f31332c.sendMessage(obtain);
            }

            @Override // com.inmobi.ads.AbstractC8252i.AbstractC8282b
            /* renamed from: c */
            public final void mo6002c() {
                InMobiInterstitial.this.f31332c.sendEmptyMessage(6);
            }

            @Override // com.inmobi.ads.AbstractC8252i.AbstractC8282b
            /* renamed from: d */
            public final void mo6001d() {
                InMobiInterstitial.this.m6697a("AVD", "");
                InMobiInterstitial.this.f31332c.sendEmptyMessage(7);
            }

            @Override // com.inmobi.ads.AbstractC8252i.AbstractC8282b
            /* renamed from: e */
            public final void mo6000e() {
                InMobiInterstitial.this.m6697a("AVCD", "");
                InMobiInterstitial.this.f31332c.sendEmptyMessage(10);
                final C8233b d = C8233b.m6131d();
                final C8175bj a = C8175bj.m6257a(InMobiInterstitial.this.f31336g, InMobiInterstitial.this.f31339j, "int", InMobiInterstitial.this.f31338i);
                if (C8224a.f32106b.m6194c(d.f32114c).f32033a) {
                    new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.inmobi.ads.d.b.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            try {
                                C8233b.m6134a(C8233b.this);
                                if (!C8224a.f32105a.containsKey(a)) {
                                    String unused = C8233b.f32130d;
                                    StringBuilder sb = new StringBuilder("preLoadAdUnit. pid:");
                                    sb.append(a.f31894a);
                                    sb.append(" tp:");
                                    sb.append(a.f31895b);
                                    if (a.f31896c == null && a.f31895b != null) {
                                        HashMap hashMap = new HashMap();
                                        hashMap.put("tp", a.f31895b);
                                        a.f31896c = hashMap;
                                    }
                                    C8235a aVar = new C8235a(a);
                                    C8233b.f32133g.add(aVar);
                                    C8068ac a2 = C8068ac.C8075a.m6528a(C8326a.m5891b(), a, aVar);
                                    a2.f32197e = a.f31897d;
                                    a2.f32198f = a.f31896c;
                                    a2.f32206n = true;
                                    C8224a.f32105a.put(a, a2);
                                    a2.m6533e(aVar);
                                }
                            } catch (Exception e) {
                                String unused2 = C8233b.f32130d;
                                new StringBuilder("SDK encountered an unexpected error preloading ad units; ").append(e.getMessage());
                                C8328a.m5878a().m5875a(new C8365a(e));
                            }
                        }
                    });
                }
            }

            @Override // com.inmobi.ads.AbstractC8252i.AbstractC8282b
            /* renamed from: f */
            public final void mo5999f() {
                InMobiInterstitial.this.f31332c.sendEmptyMessage(11);
            }
        };
        if (!C8326a.m5899a()) {
            Logger.m5724a(Logger.InternalLogLevel.ERROR, f31329a, "Please initialize the SDK before creating an Interstitial ad");
        } else if (interstitialAdEventListener == null) {
            Logger.m5724a(Logger.InternalLogLevel.ERROR, f31329a, "The Interstitial ad cannot be created as no event listener was supplied. Please attach a listener to proceed");
        } else if (context == null) {
            Logger.m5724a(Logger.InternalLogLevel.ERROR, f31329a, "Unable to create Interstitial ad with null context object.");
        } else {
            this.f31337h = true;
            this.f31335f = context.getApplicationContext();
            this.f31336g = j;
            this.f31334e = interstitialAdEventListener;
            this.f31332c = new HandlerC8022a(this);
        }
    }

    /* renamed from: a */
    public static C8068ac m6704a(Context context, InMobiAdRequest inMobiAdRequest, AbstractC8252i.AbstractC8285e eVar) {
        C8068ac a = C8068ac.C8075a.m6528a(context.getApplicationContext(), C8175bj.m6257a(inMobiAdRequest.f31282a, inMobiAdRequest.f31287f, "int", inMobiAdRequest.f31286e), null);
        a.f32198f = inMobiAdRequest.f31287f;
        a.f32197e = inMobiAdRequest.f31286e;
        a.mo6086a(InMobiAdRequest.MonetizationContext.MONETIZATION_CONTEXT_ACTIVITY);
        a.f32206n = true;
        a.f32209q = eVar;
        return a;
    }

    /* renamed from: a */
    private void m6698a(C8068ac acVar) {
        AdContainer j;
        acVar.mo5978a(this.f31335f);
        acVar.f32198f = this.f31339j;
        acVar.f32197e = this.f31338i;
        acVar.mo6086a(InMobiAdRequest.MonetizationContext.MONETIZATION_CONTEXT_ACTIVITY);
        if (this.f31340k && (j = acVar.m6039j()) != null) {
            acVar.f31572z = true;
            j.mo5607a();
        }
        acVar.f32206n = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m6697a(String str, String str2) {
        if (this.f31343o == null) {
            this.f31343o = new C8287k(this.f31331b);
        }
        this.f31343o.mo5989a(this.f31345q, str, str2);
    }

    /* renamed from: a */
    private boolean m6703a(InMobiAdRequestStatus inMobiAdRequestStatus) {
        C8068ac acVar = this.f31331b;
        if (acVar == null || acVar.f32217y) {
            return true;
        }
        InterstitialAdEventListener interstitialAdEventListener = this.f31334e;
        if (interstitialAdEventListener == null) {
            return false;
        }
        interstitialAdEventListener.onAdLoadFailed(this, inMobiAdRequestStatus);
        return false;
    }

    /* renamed from: a */
    private boolean m6696a(boolean z) {
        if (!this.f31337h) {
            Logger.m5724a(Logger.InternalLogLevel.ERROR, f31329a, "InMobiInterstitial is not initialized, your call is ignored.");
            return false;
        } else if (!z ? this.f31334e == null : this.f31333d == null && this.f31334e == null) {
            Logger.m5724a(Logger.InternalLogLevel.ERROR, f31329a, "Listener supplied is null, your call is ignored.");
            return false;
        } else if (this.f31335f != null) {
            return true;
        } else {
            Logger.m5724a(Logger.InternalLogLevel.ERROR, f31329a, "Context supplied is null, your call is ignored.");
            return false;
        }
    }

    /* renamed from: c */
    public static /* synthetic */ boolean m6693c() {
        return Message.obtain() == null;
    }

    /* renamed from: d */
    private C8068ac m6691d() {
        return C8068ac.C8075a.m6527b(this.f31335f, C8175bj.m6257a(this.f31336g, this.f31339j, "int", this.f31338i), this.f31345q);
    }

    @Deprecated
    public static void requestAd(Context context, InMobiAdRequest inMobiAdRequest, InterstitialAdRequestListener interstitialAdRequestListener) {
        if (!C8326a.m5899a()) {
            Logger.m5724a(Logger.InternalLogLevel.ERROR, f31329a, "Please initialize the SDK before calling requestAd. Ignoring request");
        } else if (interstitialAdRequestListener == null) {
            Logger.m5724a(Logger.InternalLogLevel.ERROR, f31329a, "Please supply a non null InterstitialAdRequestListener. Ignoring request");
        } else if (inMobiAdRequest == null) {
            Logger.m5724a(Logger.InternalLogLevel.ERROR, f31329a, "Please supply a non null InMobiAdRequest. Ignoring request");
        } else if (context == null) {
            Logger.m5724a(Logger.InternalLogLevel.ERROR, f31329a, "Please supply a non null Context. Ignoring request");
        } else {
            C8068ac acVar = null;
            AbstractC8252i.AbstractC8285e eVar = new AbstractC8252i.AbstractC8285e() { // from class: com.inmobi.ads.InMobiInterstitial.1
                @Override // com.inmobi.ads.AbstractC8252i.AbstractC8285e
                /* renamed from: a */
                public final void mo5991a(AbstractC8252i iVar) {
                    ArrayList arrayList;
                    final InterstitialAdRequestListener interstitialAdRequestListener2;
                    try {
                        if ((iVar instanceof C8068ac) && (arrayList = (ArrayList) InMobiInterstitial.f31330m.get(iVar)) != null) {
                            InMobiInterstitial.f31330m.remove(iVar);
                            Handler handler = new Handler(Looper.getMainLooper());
                            Iterator it = arrayList.iterator();
                            while (it.hasNext()) {
                                WeakReference weakReference = (WeakReference) it.next();
                                if (!(weakReference == null || (interstitialAdRequestListener2 = (InterstitialAdRequestListener) weakReference.get()) == null)) {
                                    final InMobiInterstitial inMobiInterstitial = new InMobiInterstitial(iVar.m6092a(), iVar.f32196d, (byte) 0);
                                    inMobiInterstitial.setKeywords(iVar.f32197e);
                                    inMobiInterstitial.setExtras(iVar.f32198f);
                                    handler.post(new Runnable() { // from class: com.inmobi.ads.InMobiInterstitial.1.1
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            try {
                                                interstitialAdRequestListener2.onAdRequestCompleted(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.NO_ERROR), inMobiInterstitial);
                                            } catch (Exception e) {
                                                Logger.m5724a(Logger.InternalLogLevel.ERROR, InMobiInterstitial.f31329a, "Publisher handler caused unexpected error");
                                            }
                                        }
                                    });
                                }
                            }
                        }
                    } catch (Exception e) {
                        String unused = InMobiInterstitial.f31329a;
                        new StringBuilder("SDK encountered unexpected error in onAdPrefetchSucceeded ").append(e.getMessage());
                    }
                }

                @Override // com.inmobi.ads.AbstractC8252i.AbstractC8285e
                /* renamed from: a */
                public final void mo5990a(AbstractC8252i iVar, final InMobiAdRequestStatus inMobiAdRequestStatus) {
                    ArrayList arrayList;
                    WeakReference weakReference;
                    try {
                        if ((iVar instanceof C8068ac) && (arrayList = (ArrayList) InMobiInterstitial.f31330m.get(iVar)) != null && arrayList.size() > 0 && (weakReference = (WeakReference) arrayList.get(arrayList.size() - 1)) != null) {
                            arrayList.remove(weakReference);
                            if (arrayList.size() == 0) {
                                InMobiInterstitial.f31330m.remove(iVar);
                            }
                            final InterstitialAdRequestListener interstitialAdRequestListener2 = (InterstitialAdRequestListener) weakReference.get();
                            if (interstitialAdRequestListener2 != null) {
                                new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.inmobi.ads.InMobiInterstitial.1.2
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        try {
                                            interstitialAdRequestListener2.onAdRequestCompleted(inMobiAdRequestStatus, null);
                                        } catch (Exception e) {
                                            Logger.m5724a(Logger.InternalLogLevel.ERROR, InMobiInterstitial.f31329a, "Publisher handler caused unexpected error");
                                        }
                                    }
                                });
                            }
                        }
                    } catch (Exception e) {
                        String unused = InMobiInterstitial.f31329a;
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
                for (Map.Entry<C8068ac, ArrayList<WeakReference<InterstitialAdRequestListener>>> entry : f31330m.entrySet()) {
                    acVar = entry.getKey();
                    if (acVar != null && acVar.f32196d == inMobiAdRequest.f31282a) {
                        break;
                    }
                }
                if (acVar != null) {
                    ArrayList<WeakReference<InterstitialAdRequestListener>> arrayList = f31330m.get(acVar);
                    arrayList.add(new WeakReference<>(interstitialAdRequestListener));
                    C8068ac a = m6704a(context, inMobiAdRequest, eVar);
                    f31330m.put(a, arrayList);
                    a.mo5966q();
                    return;
                }
                C8068ac a2 = m6704a(context, inMobiAdRequest, eVar);
                a2.f32209q = eVar;
                ArrayList<WeakReference<InterstitialAdRequestListener>> arrayList2 = new ArrayList<>();
                arrayList2.add(new WeakReference<>(interstitialAdRequestListener));
                f31330m.put(a2, arrayList2);
                a2.mo5966q();
            } catch (Exception e2) {
                new StringBuilder("SDK encountered unexpected error in requestAd").append(e2.getMessage());
            }
        }
    }

    public final void disableHardwareAcceleration() {
        if (this.f31337h) {
            this.f31340k = true;
        }
    }

    public final JSONObject getAdMetaInfo() {
        JSONObject jSONObject = this.f31344p;
        JSONObject jSONObject2 = jSONObject;
        if (jSONObject == null) {
            jSONObject2 = new JSONObject();
        }
        return jSONObject2;
    }

    public final String getCreativeId() {
        return this.f31342n;
    }

    public final void getSignals() {
        if (m6696a(false) && m6703a(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.GET_SIGNALS_CALLED_AFTER_LOAD))) {
            if (this.f31331b == null) {
                this.f31331b = m6691d();
            }
            m6697a("ARR", "");
            m6698a(this.f31331b);
            C8068ac acVar = this.f31331b;
            acVar.f32217y = true;
            acVar.m6030o();
        }
    }

    public final boolean isReady() {
        C8068ac acVar;
        return this.f31337h && (acVar = this.f31331b) != null && acVar.m6546M();
    }

    public final void load() {
        try {
            if (!m6696a(true)) {
                return;
            }
            if (this.f31331b == null || !this.f31331b.f32217y) {
                C8175bj a = C8175bj.m6257a(this.f31336g, this.f31339j, "int", this.f31338i);
                C8233b d = C8233b.m6131d();
                AbstractC8252i iVar = null;
                if (!C8224a.f32106b.m6194c(d.f32114c).f32033a) {
                    StringBuilder sb = new StringBuilder("No cached ad unit found as config is disabled. pid:");
                    sb.append(a.f31894a);
                    sb.append(" tp:");
                    sb.append(a.f31895b);
                } else {
                    d.m6148a(a);
                    AbstractC8252i iVar2 = C8224a.f32105a.get(a);
                    if (iVar2 == null) {
                        StringBuilder sb2 = new StringBuilder("No cached ad unit found for pid:");
                        sb2.append(a.f31894a);
                        sb2.append(" tp:");
                        sb2.append(a.f31895b);
                    } else if (iVar2.m6043h()) {
                        StringBuilder sb3 = new StringBuilder("Expired cached ad unit found for pid:");
                        sb3.append(a.f31894a);
                        sb3.append(" tp:");
                        sb3.append(a.f31895b);
                        iVar2.mo6027t();
                        C8224a.f32105a.remove(a);
                        C8233b.m6132a("AdUnitExpired", iVar2);
                    } else {
                        StringBuilder sb4 = new StringBuilder("Cached ad unit found for pid:");
                        sb4.append(a.f31894a);
                        sb4.append(" tp:");
                        sb4.append(a.f31895b);
                        C8233b.m6133a(C8224a.f32105a.remove(a));
                        iVar = iVar2;
                    }
                }
                this.f31341l = true;
                if (iVar != null) {
                    this.f31331b = (C8068ac) iVar;
                } else {
                    this.f31331b = C8068ac.C8075a.m6528a(this.f31335f, a, this.f31345q);
                }
                m6697a("ARR", "");
                m6698a(this.f31331b);
                this.f31331b.f32217y = false;
                C8068ac acVar = this.f31331b;
                Logger.InternalLogLevel internalLogLevel = Logger.InternalLogLevel.DEBUG;
                String str = f31329a;
                Logger.m5724a(internalLogLevel, str, "Fetching an Interstitial ad for placement id: " + acVar.f32196d);
                this.f31342n = "";
                this.f31344p = this.f31331b.f32194b;
                acVar.m6082a(this.f31345q);
                acVar.m6533e(this.f31345q);
            } else if (this.f31334e != null) {
                this.f31334e.onAdLoadFailed(this, new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.LOAD_CALLED_AFTER_GET_SIGNALS));
            }
        } catch (Exception e) {
            Logger.m5724a(Logger.InternalLogLevel.ERROR, f31329a, "Unable to load ad; SDK encountered an unexpected error");
            new StringBuilder("Load failed with unexpected error: ").append(e.getMessage());
            C8328a.m5878a().m5875a(new C8365a(e));
        }
    }

    public final void load(byte[] bArr) {
        if (m6696a(false) && m6703a(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.LOAD_WITH_RESPONSE_CALLED_AFTER_LOAD))) {
            this.f31341l = true;
            if (this.f31331b == null) {
                this.f31331b = m6691d();
            }
            m6698a(this.f31331b);
            C8068ac acVar = this.f31331b;
            acVar.f32217y = true;
            if (acVar.m6534d(this.f31345q)) {
                acVar.m6064a(bArr);
            }
        }
    }

    public final void setExtras(Map<String, String> map) {
        if (this.f31337h) {
            this.f31339j = map;
        }
    }

    @Deprecated
    public final void setInterstitialAdListener(InterstitialAdListener2 interstitialAdListener2) {
        this.f31333d = interstitialAdListener2;
    }

    public final void setKeywords(String str) {
        if (this.f31337h) {
            this.f31338i = str;
        }
    }

    public final void setListener(InterstitialAdEventListener interstitialAdEventListener) {
        if (interstitialAdEventListener == null) {
            Logger.m5724a(Logger.InternalLogLevel.ERROR, f31329a, "Please pass a non-null listener to the interstitial.");
        } else {
            this.f31334e = interstitialAdEventListener;
        }
    }

    public final void show() {
        try {
            if (!this.f31341l) {
                Logger.m5724a(Logger.InternalLogLevel.ERROR, f31329a, "load() must be called before trying to show the ad");
            } else if (this.f31337h && this.f31331b != null) {
                m6697a("AVR", "");
                this.f31331b.m6532f(this.f31345q);
            }
        } catch (Exception e) {
            Logger.m5724a(Logger.InternalLogLevel.ERROR, f31329a, "Unable to show ad; SDK encountered an unexpected error");
            new StringBuilder("Show failed with unexpected error: ").append(e.getMessage());
            C8328a.m5878a().m5875a(new C8365a(e));
        }
    }

    @Deprecated
    public final void show(int i, int i2) {
        show();
    }
}
