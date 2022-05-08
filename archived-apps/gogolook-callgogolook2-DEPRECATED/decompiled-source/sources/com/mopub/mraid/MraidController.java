package com.mopub.mraid;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Handler;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import android.webkit.ConsoleMessage;
import android.webkit.JsResult;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mopub.common.AdReport;
import com.mopub.common.CloseableLayout;
import com.mopub.common.ExternalViewabilitySessionManager;
import com.mopub.common.Preconditions;
import com.mopub.common.UrlAction;
import com.mopub.common.UrlHandler;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.DeviceUtils;
import com.mopub.common.util.Dips;
import com.mopub.common.util.ManifestUtils;
import com.mopub.common.util.Utils;
import com.mopub.common.util.Views;
import com.mopub.mobileads.BaseVideoPlayerActivity;
import com.mopub.mobileads.BaseWebView;
import com.mopub.mobileads.MoPubErrorCode;
import com.mopub.mobileads.util.WebViews;
import com.mopub.mraid.MraidBridge;
import gogolook.callgogolook2.gson.UserProfile;
import java.lang.ref.WeakReference;
import java.net.URI;
import java.util.EnumSet;
import p081h.p430l.p434c.C10721a;
import p081h.p430l.p434c.C10723c;
import p081h.p430l.p434c.EnumC10722b;
/* loaded from: classes2-dex2jar.jar:com/mopub/mraid/MraidController.class */
public class MraidController {

    /* renamed from: a */
    public final AdReport f8900a;
    @NonNull

    /* renamed from: b */
    public WeakReference<Activity> f8901b;
    @NonNull

    /* renamed from: c */
    public final Context f8902c;
    @NonNull

    /* renamed from: d */
    public final PlacementType f8903d;
    @NonNull

    /* renamed from: e */
    public final FrameLayout f8904e;
    @NonNull

    /* renamed from: f */
    public final CloseableLayout f8905f;
    @Nullable

    /* renamed from: g */
    public ViewGroup f8906g;
    @NonNull

    /* renamed from: h */
    public final C3912i f8907h;
    @NonNull

    /* renamed from: i */
    public final C10723c f8908i;
    @NonNull

    /* renamed from: j */
    public ViewState f8909j;
    @Nullable

    /* renamed from: k */
    public MraidListener f8910k;
    @Nullable

    /* renamed from: l */
    public UseCustomCloseListener f8911l;
    @Nullable

    /* renamed from: m */
    public MraidWebViewDebugListener f8912m;
    @Nullable

    /* renamed from: n */
    public MraidBridge.MraidWebView f8913n;
    @Nullable

    /* renamed from: o */
    public MraidBridge.MraidWebView f8914o;
    @NonNull

    /* renamed from: p */
    public final MraidBridge f8915p;
    @NonNull

    /* renamed from: q */
    public final MraidBridge f8916q;
    @NonNull

    /* renamed from: r */
    public C3911h f8917r;
    @Nullable

    /* renamed from: s */
    public Integer f8918s;
    @NonNull

    /* renamed from: t */
    public UrlHandler.MoPubSchemeListener f8919t;

    /* renamed from: u */
    public boolean f8920u;

    /* renamed from: v */
    public EnumC10722b f8921v;

    /* renamed from: w */
    public final MraidNativeCommandHandler f8922w;

    /* renamed from: x */
    public boolean f8923x;

    /* renamed from: y */
    public final MraidBridge.MraidBridgeListener f8924y;

    /* renamed from: z */
    public final MraidBridge.MraidBridgeListener f8925z;

    /* loaded from: classes2-dex2jar.jar:com/mopub/mraid/MraidController$MraidListener.class */
    public interface MraidListener {
        void onClose();

        void onExpand();

        void onFailedToLoad();

        void onLoaded(View view);

        void onOpen();

        void onRenderProcessGone(@NonNull MoPubErrorCode moPubErrorCode);

        void onResize(boolean z);
    }

    /* loaded from: classes2-dex2jar.jar:com/mopub/mraid/MraidController$MraidWebViewCacheListener.class */
    public interface MraidWebViewCacheListener {
        void onReady(MraidBridge.MraidWebView mraidWebView, ExternalViewabilitySessionManager externalViewabilitySessionManager);
    }

    /* loaded from: classes2-dex2jar.jar:com/mopub/mraid/MraidController$UseCustomCloseListener.class */
    public interface UseCustomCloseListener {
        void useCustomCloseChanged(boolean z);
    }

    /* renamed from: com.mopub.mraid.MraidController$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mraid/MraidController$a.class */
    public class C3904a implements UrlHandler.MoPubSchemeListener {
        public C3904a() {
        }

        @Override // com.mopub.common.UrlHandler.MoPubSchemeListener
        public void onClose() {
        }

        @Override // com.mopub.common.UrlHandler.MoPubSchemeListener
        public void onCrash() {
            if (MraidController.this.f8913n != null) {
                MraidController.this.f8913n.loadUrl("chrome://crash");
            }
        }

        @Override // com.mopub.common.UrlHandler.MoPubSchemeListener
        public void onFailLoad() {
        }

        @Override // com.mopub.common.UrlHandler.MoPubSchemeListener
        public void onFinishLoad() {
        }
    }

    /* renamed from: com.mopub.mraid.MraidController$b */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mraid/MraidController$b.class */
    public class C3905b implements CloseableLayout.OnCloseListener {
        public C3905b() {
        }

        @Override // com.mopub.common.CloseableLayout.OnCloseListener
        public void onClose() {
            MraidController.this.m30272h();
        }
    }

    /* renamed from: com.mopub.mraid.MraidController$c */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mraid/MraidController$c.class */
    public class View$OnTouchListenerC3906c implements View.OnTouchListener {
        public View$OnTouchListenerC3906c(MraidController mraidController) {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            return true;
        }
    }

    /* renamed from: com.mopub.mraid.MraidController$d */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mraid/MraidController$d.class */
    public class C3907d implements MraidBridge.MraidBridgeListener {
        public C3907d() {
        }

        @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
        public void onClose() {
            MraidController.this.m30272h();
        }

        @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
        public boolean onConsoleMessage(@NonNull ConsoleMessage consoleMessage) {
            return MraidController.this.m30298a(consoleMessage);
        }

        @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
        public void onExpand(@Nullable URI uri, boolean z) throws C10721a {
            MraidController.this.m30289a(uri, z);
        }

        @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
        public boolean onJsAlert(@NonNull String str, @NonNull JsResult jsResult) {
            return MraidController.this.m30290a(str, jsResult);
        }

        @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
        public void onOpen(@NonNull URI uri) {
            MraidController.this.m30291a(uri.toString());
        }

        @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
        public void onPageFailedToLoad() {
            if (MraidController.this.f8910k != null) {
                MraidController.this.f8910k.onFailedToLoad();
            }
        }

        @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
        public void onPageLoaded() {
            MraidController.this.m30270i();
            if (MraidController.this.f8910k != null) {
                MraidController.this.f8910k.onLoaded(MraidController.this.f8904e);
            }
        }

        @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
        public void onPlayVideo(@NonNull URI uri) {
            MraidController.this.m30283b(uri.toString());
        }

        @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
        public void onRenderProcessGone(@NonNull MoPubErrorCode moPubErrorCode) {
            MraidController.this.m30297a(moPubErrorCode);
        }

        @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
        public void onResize(int i, int i2, int i3, int i4, @NonNull CloseableLayout.ClosePosition closePosition, boolean z) throws C10721a {
            MraidController.this.m30299a(i, i2, i3, i4, closePosition, z);
        }

        @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
        public void onSetOrientationProperties(boolean z, EnumC10722b bVar) throws C10721a {
            MraidController.this.m30287a(z, bVar);
        }

        @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
        public void onUseCustomClose(boolean z) {
            MraidController.this.m30288a(z);
        }

        @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
        public void onVisibilityChanged(boolean z) {
            if (!MraidController.this.f8916q.m30315c()) {
                MraidController.this.f8915p.m30321a(z);
            }
        }
    }

    /* renamed from: com.mopub.mraid.MraidController$e */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mraid/MraidController$e.class */
    public class C3908e implements MraidBridge.MraidBridgeListener {
        public C3908e() {
        }

        @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
        public void onClose() {
            MraidController.this.m30272h();
        }

        @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
        public boolean onConsoleMessage(@NonNull ConsoleMessage consoleMessage) {
            return MraidController.this.m30298a(consoleMessage);
        }

        @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
        public void onExpand(@Nullable URI uri, boolean z) {
        }

        @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
        public boolean onJsAlert(@NonNull String str, @NonNull JsResult jsResult) {
            return MraidController.this.m30290a(str, jsResult);
        }

        @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
        public void onOpen(URI uri) {
            MraidController.this.m30291a(uri.toString());
        }

        @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
        public void onPageFailedToLoad() {
        }

        @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
        public void onPageLoaded() {
            MraidController.this.m30268j();
        }

        @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
        public void onPlayVideo(@NonNull URI uri) {
            MraidController.this.m30283b(uri.toString());
        }

        @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
        public void onRenderProcessGone(@NonNull MoPubErrorCode moPubErrorCode) {
            MraidController.this.m30297a(moPubErrorCode);
        }

        @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
        public void onResize(int i, int i2, int i3, int i4, @NonNull CloseableLayout.ClosePosition closePosition, boolean z) throws C10721a {
            throw new C10721a("Not allowed to resize from an expanded state");
        }

        @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
        public void onSetOrientationProperties(boolean z, EnumC10722b bVar) throws C10721a {
            MraidController.this.m30287a(z, bVar);
        }

        @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
        public void onUseCustomClose(boolean z) {
            MraidController.this.m30288a(z);
        }

        @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
        public void onVisibilityChanged(boolean z) {
            MraidController.this.f8915p.m30321a(z);
            MraidController.this.f8916q.m30321a(z);
        }
    }

    /* renamed from: com.mopub.mraid.MraidController$f */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mraid/MraidController$f.class */
    public class RunnableC3909f implements Runnable {
        public RunnableC3909f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MraidBridge mraidBridge = MraidController.this.f8916q;
            boolean a = MraidController.this.f8922w.m30248a(MraidController.this.f8902c);
            boolean b = MraidController.this.f8922w.m30247b(MraidController.this.f8902c);
            MraidNativeCommandHandler unused = MraidController.this.f8922w;
            boolean c = MraidNativeCommandHandler.m30246c(MraidController.this.f8902c);
            MraidNativeCommandHandler unused2 = MraidController.this.f8922w;
            mraidBridge.m30320a(a, b, c, MraidNativeCommandHandler.isStorePictureSupported(MraidController.this.f8902c), MraidController.this.m30266k());
            MraidController.this.f8916q.m30326a(MraidController.this.f8909j);
            MraidController.this.f8916q.m30327a(MraidController.this.f8903d);
            MraidController.this.f8916q.m30321a(MraidController.this.f8916q.m30308f());
            MraidController.this.f8916q.m30306g();
        }
    }

    /* renamed from: com.mopub.mraid.MraidController$g */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mraid/MraidController$g.class */
    public class RunnableC3910g implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ View f8931a;

        /* renamed from: b */
        public final /* synthetic */ Runnable f8932b;

        public RunnableC3910g(View view, Runnable runnable) {
            this.f8931a = view;
            this.f8932b = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            DisplayMetrics displayMetrics = MraidController.this.f8902c.getResources().getDisplayMetrics();
            MraidController.this.f8908i.m10818a(displayMetrics.widthPixels, displayMetrics.heightPixels);
            int[] iArr = new int[2];
            ViewGroup f = MraidController.this.m30276f();
            f.getLocationOnScreen(iArr);
            MraidController.this.f8908i.m10812c(iArr[0], iArr[1], f.getWidth(), f.getHeight());
            MraidController.this.f8904e.getLocationOnScreen(iArr);
            MraidController.this.f8908i.m10814b(iArr[0], iArr[1], MraidController.this.f8904e.getWidth(), MraidController.this.f8904e.getHeight());
            this.f8931a.getLocationOnScreen(iArr);
            MraidController.this.f8908i.m10817a(iArr[0], iArr[1], this.f8931a.getWidth(), this.f8931a.getHeight());
            MraidController.this.f8915p.notifyScreenMetrics(MraidController.this.f8908i);
            if (MraidController.this.f8916q.m30315c()) {
                MraidController.this.f8916q.notifyScreenMetrics(MraidController.this.f8908i);
            }
            Runnable runnable = this.f8932b;
            if (runnable != null) {
                runnable.run();
            }
        }
    }

    @VisibleForTesting
    /* renamed from: com.mopub.mraid.MraidController$h */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mraid/MraidController$h.class */
    public class C3911h extends BroadcastReceiver {
        @Nullable

        /* renamed from: a */
        public Context f8934a;

        /* renamed from: b */
        public int f8935b = -1;

        public C3911h() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            int e;
            if (this.f8934a != null && "android.intent.action.CONFIGURATION_CHANGED".equals(intent.getAction()) && (e = MraidController.this.m30278e()) != this.f8935b) {
                this.f8935b = e;
                MraidController.this.m30301a(this.f8935b);
            }
        }

        public void register(@NonNull Context context) {
            Preconditions.checkNotNull(context);
            this.f8934a = context.getApplicationContext();
            Context context2 = this.f8934a;
            if (context2 != null) {
                context2.registerReceiver(this, new IntentFilter("android.intent.action.CONFIGURATION_CHANGED"));
            }
        }

        public void unregister() {
            Context context = this.f8934a;
            if (context != null) {
                context.unregisterReceiver(this);
                this.f8934a = null;
            }
        }
    }

    @VisibleForTesting
    /* renamed from: com.mopub.mraid.MraidController$i */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mraid/MraidController$i.class */
    public static class C3912i {
        @NonNull

        /* renamed from: a */
        public final Handler f8937a = new Handler();
        @Nullable

        /* renamed from: b */
        public C3913a f8938b;

        /* renamed from: com.mopub.mraid.MraidController$i$a */
        /* loaded from: classes2-dex2jar.jar:com/mopub/mraid/MraidController$i$a.class */
        public static class C3913a {
            @NonNull

            /* renamed from: a */
            public final View[] f8939a;
            @NonNull

            /* renamed from: b */
            public final Handler f8940b;
            @Nullable

            /* renamed from: c */
            public Runnable f8941c;

            /* renamed from: d */
            public int f8942d;

            /* renamed from: e */
            public final Runnable f8943e;

            /* renamed from: com.mopub.mraid.MraidController$i$a$a */
            /* loaded from: classes2-dex2jar.jar:com/mopub/mraid/MraidController$i$a$a.class */
            public class RunnableC3914a implements Runnable {

                /* renamed from: com.mopub.mraid.MraidController$i$a$a$a */
                /* loaded from: classes2-dex2jar.jar:com/mopub/mraid/MraidController$i$a$a$a.class */
                public class ViewTreeObserver$OnPreDrawListenerC3915a implements ViewTreeObserver.OnPreDrawListener {

                    /* renamed from: a */
                    public final /* synthetic */ View f8945a;

                    public ViewTreeObserver$OnPreDrawListenerC3915a(View view) {
                        this.f8945a = view;
                    }

                    @Override // android.view.ViewTreeObserver.OnPreDrawListener
                    public boolean onPreDraw() {
                        this.f8945a.getViewTreeObserver().removeOnPreDrawListener(this);
                        C3913a.this.m30256b();
                        return true;
                    }
                }

                public RunnableC3914a() {
                }

                @Override // java.lang.Runnable
                public void run() {
                    View[] viewArr;
                    for (View view : C3913a.this.f8939a) {
                        if (view.getHeight() > 0 || view.getWidth() > 0) {
                            C3913a.this.m30256b();
                        } else {
                            view.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver$OnPreDrawListenerC3915a(view));
                        }
                    }
                }
            }

            public C3913a(@NonNull Handler handler, @NonNull View[] viewArr) {
                this.f8943e = new RunnableC3914a();
                this.f8940b = handler;
                this.f8939a = viewArr;
            }

            public /* synthetic */ C3913a(Handler handler, View[] viewArr, C3904a aVar) {
                this(handler, viewArr);
            }

            /* renamed from: a */
            public void m30259a() {
                this.f8940b.removeCallbacks(this.f8943e);
                this.f8941c = null;
            }

            /* renamed from: a */
            public void m30257a(@NonNull Runnable runnable) {
                this.f8941c = runnable;
                this.f8942d = this.f8939a.length;
                this.f8940b.post(this.f8943e);
            }

            /* renamed from: b */
            public final void m30256b() {
                Runnable runnable;
                this.f8942d--;
                if (this.f8942d == 0 && (runnable = this.f8941c) != null) {
                    runnable.run();
                    this.f8941c = null;
                }
            }
        }

        /* renamed from: a */
        public C3913a m30260a(@NonNull View... viewArr) {
            this.f8938b = new C3913a(this.f8937a, viewArr, null);
            return this.f8938b;
        }

        /* renamed from: a */
        public void m30261a() {
            C3913a aVar = this.f8938b;
            if (aVar != null) {
                aVar.m30259a();
                this.f8938b = null;
            }
        }
    }

    public MraidController(@NonNull Context context, @Nullable AdReport adReport, @NonNull PlacementType placementType) {
        this(context, adReport, placementType, new MraidBridge(adReport, placementType), new MraidBridge(adReport, PlacementType.INTERSTITIAL), new C3912i());
    }

    @VisibleForTesting
    public MraidController(@NonNull Context context, @Nullable AdReport adReport, @NonNull PlacementType placementType, @NonNull MraidBridge mraidBridge, @NonNull MraidBridge mraidBridge2, @NonNull C3912i iVar) {
        this.f8909j = ViewState.LOADING;
        this.f8917r = new C3911h();
        this.f8919t = new C3904a();
        this.f8920u = true;
        this.f8921v = EnumC10722b.NONE;
        this.f8923x = true;
        this.f8924y = new C3907d();
        this.f8925z = new C3908e();
        this.f8902c = context.getApplicationContext();
        Preconditions.checkNotNull(this.f8902c);
        this.f8900a = adReport;
        if (context instanceof Activity) {
            this.f8901b = new WeakReference<>((Activity) context);
        } else {
            this.f8901b = new WeakReference<>(null);
        }
        this.f8903d = placementType;
        this.f8915p = mraidBridge;
        this.f8916q = mraidBridge2;
        this.f8907h = iVar;
        this.f8909j = ViewState.LOADING;
        this.f8908i = new C10723c(this.f8902c, this.f8902c.getResources().getDisplayMetrics().density);
        this.f8904e = new FrameLayout(this.f8902c);
        this.f8905f = new CloseableLayout(this.f8902c);
        this.f8905f.setOnCloseListener(new C3905b());
        View view = new View(this.f8902c);
        view.setOnTouchListener(new View$OnTouchListenerC3906c(this));
        this.f8905f.addView(view, new FrameLayout.LayoutParams(-1, -1));
        this.f8917r.register(this.f8902c);
        this.f8915p.m30333a(this.f8924y);
        this.f8916q.m30333a(this.f8925z);
        this.f8922w = new MraidNativeCommandHandler();
    }

    @VisibleForTesting
    /* renamed from: a */
    public static void m30296a(@NonNull MraidListener mraidListener, @NonNull ViewState viewState, @NonNull ViewState viewState2) {
        Preconditions.checkNotNull(mraidListener);
        Preconditions.checkNotNull(viewState);
        Preconditions.checkNotNull(viewState2);
        ViewState viewState3 = ViewState.EXPANDED;
        if (viewState2 == viewState3) {
            mraidListener.onExpand();
        } else if (viewState == viewState3 && viewState2 == ViewState.DEFAULT) {
            mraidListener.onClose();
        } else if (viewState2 == ViewState.HIDDEN) {
            mraidListener.onClose();
        } else if (viewState == ViewState.RESIZED && viewState2 == ViewState.DEFAULT) {
            mraidListener.onResize(true);
        } else if (viewState2 == ViewState.RESIZED) {
            mraidListener.onResize(false);
        }
    }

    /* renamed from: a */
    public int m30300a(int i, int i2, int i3) {
        return Math.max(i, Math.min(i2, i3));
    }

    @VisibleForTesting
    /* renamed from: a */
    public void m30302a() throws C10721a {
        EnumC10722b bVar = this.f8921v;
        if (bVar != EnumC10722b.NONE) {
            m30285b(bVar.m10820a());
        } else if (this.f8920u) {
            m30262m();
        } else {
            Activity activity = this.f8901b.get();
            if (activity != null) {
                m30285b(DeviceUtils.getScreenOrientation(activity));
                return;
            }
            throw new C10721a("Unable to set MRAID expand orientation to 'none'; expected passed in Activity Context.");
        }
    }

    /* renamed from: a */
    public void m30301a(int i) {
        m30292a((Runnable) null);
    }

    @VisibleForTesting
    /* renamed from: a */
    public void m30299a(int i, int i2, int i3, int i4, @NonNull CloseableLayout.ClosePosition closePosition, boolean z) throws C10721a {
        if (this.f8913n != null) {
            ViewState viewState = this.f8909j;
            if (viewState != ViewState.LOADING && viewState != ViewState.HIDDEN) {
                if (viewState == ViewState.EXPANDED) {
                    throw new C10721a("Not allowed to resize from an already expanded ad");
                } else if (this.f8903d != PlacementType.INTERSTITIAL) {
                    int dipsToIntPixels = Dips.dipsToIntPixels(i, this.f8902c);
                    int dipsToIntPixels2 = Dips.dipsToIntPixels(i2, this.f8902c);
                    int dipsToIntPixels3 = Dips.dipsToIntPixels(i3, this.f8902c);
                    int dipsToIntPixels4 = Dips.dipsToIntPixels(i4, this.f8902c);
                    int i5 = this.f8908i.m10815b().left + dipsToIntPixels3;
                    int i6 = this.f8908i.m10815b().top + dipsToIntPixels4;
                    Rect rect = new Rect(i5, i6, dipsToIntPixels + i5, i6 + dipsToIntPixels2);
                    if (!z) {
                        Rect d = this.f8908i.m10811d();
                        if (rect.width() > d.width() || rect.height() > d.height()) {
                            throw new C10721a("resizeProperties specified a size (" + i + UserProfile.CARD_CATE_SEPARATOR + i2 + ") and offset (" + i3 + UserProfile.CARD_CATE_SEPARATOR + i4 + ") that doesn't allow the ad to appear within the max allowed size (" + this.f8908i.m10810e().width() + UserProfile.CARD_CATE_SEPARATOR + this.f8908i.m10810e().height() + ")");
                        }
                        rect.offsetTo(m30300a(d.left, rect.left, d.right - rect.width()), m30300a(d.top, rect.top, d.bottom - rect.height()));
                    }
                    Rect rect2 = new Rect();
                    this.f8905f.applyCloseRegionBounds(closePosition, rect, rect2);
                    if (!this.f8908i.m10811d().contains(rect2)) {
                        throw new C10721a("resizeProperties specified a size (" + i + UserProfile.CARD_CATE_SEPARATOR + i2 + ") and offset (" + i3 + UserProfile.CARD_CATE_SEPARATOR + i4 + ") that doesn't allow the close region to appear within the max allowed size (" + this.f8908i.m10810e().width() + UserProfile.CARD_CATE_SEPARATOR + this.f8908i.m10810e().height() + ")");
                    } else if (rect.contains(rect2)) {
                        this.f8905f.setCloseVisible(false);
                        this.f8905f.setClosePosition(closePosition);
                        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(rect.width(), rect.height());
                        layoutParams.leftMargin = rect.left - this.f8908i.m10811d().left;
                        layoutParams.topMargin = rect.top - this.f8908i.m10811d().top;
                        ViewState viewState2 = this.f8909j;
                        if (viewState2 == ViewState.DEFAULT) {
                            this.f8904e.removeView(this.f8913n);
                            this.f8904e.setVisibility(4);
                            this.f8905f.addView(this.f8913n, new FrameLayout.LayoutParams(-1, -1));
                            m30280d().addView(this.f8905f, layoutParams);
                        } else if (viewState2 == ViewState.RESIZED) {
                            this.f8905f.setLayoutParams(layoutParams);
                        }
                        this.f8905f.setClosePosition(closePosition);
                        m30294a(ViewState.RESIZED);
                    } else {
                        throw new C10721a("resizeProperties specified a size (" + i + UserProfile.CARD_CATE_SEPARATOR + dipsToIntPixels2 + ") and offset (" + i3 + UserProfile.CARD_CATE_SEPARATOR + i4 + ") that don't allow the close region to appear within the resized ad.");
                    }
                } else {
                    throw new C10721a("Not allowed to resize from an interstitial ad");
                }
            }
        } else {
            throw new C10721a("Unable to resize after the WebView is destroyed");
        }
    }

    @VisibleForTesting
    /* renamed from: a */
    public void m30297a(@NonNull MoPubErrorCode moPubErrorCode) {
        MraidListener mraidListener = this.f8910k;
        if (mraidListener != null) {
            mraidListener.onRenderProcessGone(moPubErrorCode);
        }
    }

    /* renamed from: a */
    public final void m30294a(@NonNull ViewState viewState) {
        MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
        MoPubLog.log(sdkLogEvent, "MRAID state set to " + viewState);
        ViewState viewState2 = this.f8909j;
        this.f8909j = viewState;
        this.f8915p.m30326a(viewState);
        if (this.f8916q.m30310e()) {
            this.f8916q.m30326a(viewState);
        }
        MraidListener mraidListener = this.f8910k;
        if (mraidListener != null) {
            m30296a(mraidListener, viewState2, viewState);
        }
        m30292a((Runnable) null);
    }

    /* renamed from: a */
    public final void m30292a(@Nullable Runnable runnable) {
        this.f8907h.m30261a();
        MraidBridge.MraidWebView currentWebView = getCurrentWebView();
        if (currentWebView != null) {
            this.f8907h.m30260a(this.f8904e, currentWebView).m30257a(new RunnableC3910g(currentWebView, runnable));
        }
    }

    @VisibleForTesting
    /* renamed from: a */
    public void m30291a(@NonNull String str) {
        MraidListener mraidListener = this.f8910k;
        if (mraidListener != null) {
            mraidListener.onOpen();
        }
        Uri parse = Uri.parse(str);
        if (UrlAction.HANDLE_PHONE_SCHEME.shouldTryHandlingUrl(parse)) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM_WITH_THROWABLE, String.format("Uri scheme %s is not allowed.", parse.getScheme()), new C10721a("Unsupported MRAID Javascript command"));
            return;
        }
        UrlHandler.Builder builder = new UrlHandler.Builder();
        AdReport adReport = this.f8900a;
        if (adReport != null) {
            builder.withDspCreativeId(adReport.getDspCreativeId());
        }
        EnumSet<UrlAction> of = EnumSet.of(UrlAction.IGNORE_ABOUT_SCHEME, UrlAction.OPEN_NATIVE_BROWSER, UrlAction.OPEN_IN_APP_BROWSER, UrlAction.HANDLE_SHARE_TWEET, UrlAction.FOLLOW_DEEP_LINK_WITH_FALLBACK, UrlAction.FOLLOW_DEEP_LINK);
        if (ManifestUtils.isDebuggable(this.f8902c)) {
            of.add(UrlAction.HANDLE_MOPUB_SCHEME);
            builder.withMoPubSchemeListener(this.f8919t);
        }
        builder.withSupportedUrlActions(of).build().handleUrl(this.f8902c, str);
    }

    /* renamed from: a */
    public void m30289a(@Nullable URI uri, boolean z) throws C10721a {
        if (this.f8913n == null) {
            throw new C10721a("Unable to expand after the WebView is destroyed");
        } else if (this.f8903d != PlacementType.INTERSTITIAL) {
            ViewState viewState = this.f8909j;
            if (viewState == ViewState.DEFAULT || viewState == ViewState.RESIZED) {
                m30302a();
                boolean z2 = uri != null;
                if (z2) {
                    this.f8914o = new MraidBridge.MraidWebView(this.f8902c);
                    this.f8916q.m30332a(this.f8914o);
                    this.f8916q.setContentUrl(uri.toString());
                }
                FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
                ViewState viewState2 = this.f8909j;
                if (viewState2 == ViewState.DEFAULT) {
                    if (z2) {
                        this.f8905f.addView(this.f8914o, layoutParams);
                    } else {
                        this.f8904e.removeView(this.f8913n);
                        this.f8904e.setVisibility(4);
                        this.f8905f.addView(this.f8913n, layoutParams);
                    }
                    m30280d().addView(this.f8905f, new FrameLayout.LayoutParams(-1, -1));
                } else if (viewState2 == ViewState.RESIZED && z2) {
                    this.f8905f.removeView(this.f8913n);
                    this.f8904e.addView(this.f8913n, layoutParams);
                    this.f8904e.setVisibility(4);
                    this.f8905f.addView(this.f8914o, layoutParams);
                }
                this.f8905f.setLayoutParams(layoutParams);
                m30288a(z);
                m30294a(ViewState.EXPANDED);
            }
        }
    }

    @VisibleForTesting
    /* renamed from: a */
    public void m30288a(boolean z) {
        if (z != m30264l()) {
            this.f8905f.setCloseVisible(!z);
            UseCustomCloseListener useCustomCloseListener = this.f8911l;
            if (useCustomCloseListener != null) {
                useCustomCloseListener.useCustomCloseChanged(z);
            }
        }
    }

    @VisibleForTesting
    /* renamed from: a */
    public void m30287a(boolean z, EnumC10722b bVar) throws C10721a {
        if (m30293a(bVar)) {
            this.f8920u = z;
            this.f8921v = bVar;
            if (this.f8909j == ViewState.EXPANDED || (this.f8903d == PlacementType.INTERSTITIAL && !this.f8923x)) {
                m30302a();
                return;
            }
            return;
        }
        throw new C10721a("Unable to force orientation to " + bVar);
    }

    @VisibleForTesting
    /* renamed from: a */
    public boolean m30298a(@NonNull ConsoleMessage consoleMessage) {
        MraidWebViewDebugListener mraidWebViewDebugListener = this.f8912m;
        if (mraidWebViewDebugListener != null) {
            return mraidWebViewDebugListener.onConsoleMessage(consoleMessage);
        }
        return true;
    }

    @VisibleForTesting
    /* renamed from: a */
    public boolean m30293a(EnumC10722b bVar) {
        boolean z = true;
        boolean z2 = true;
        if (bVar == EnumC10722b.NONE) {
            return true;
        }
        Activity activity = this.f8901b.get();
        if (activity == null) {
            return false;
        }
        try {
            ActivityInfo activityInfo = activity.getPackageManager().getActivityInfo(new ComponentName(activity, activity.getClass()), 0);
            int i = activityInfo.screenOrientation;
            if (i != -1) {
                if (i != bVar.m10820a()) {
                    z2 = false;
                }
                return z2;
            }
            if (!Utils.bitMaskContainsFlag(activityInfo.configChanges, 128) || !Utils.bitMaskContainsFlag(activityInfo.configChanges, 1024)) {
                z = false;
            }
            return z;
        } catch (PackageManager.NameNotFoundException e) {
            return false;
        }
    }

    @VisibleForTesting
    /* renamed from: a */
    public boolean m30290a(@NonNull String str, @NonNull JsResult jsResult) {
        MraidWebViewDebugListener mraidWebViewDebugListener = this.f8912m;
        if (mraidWebViewDebugListener != null) {
            return mraidWebViewDebugListener.onJsAlert(str, jsResult);
        }
        jsResult.confirm();
        return true;
    }

    /* renamed from: b */
    public final void m30286b() {
        this.f8915p.m30337a();
        this.f8913n = null;
    }

    @VisibleForTesting
    /* renamed from: b */
    public void m30285b(int i) throws C10721a {
        Activity activity = this.f8901b.get();
        if (activity == null || !m30293a(this.f8921v)) {
            throw new C10721a("Attempted to lock orientation to unsupported value: " + this.f8921v.name());
        }
        if (this.f8918s == null) {
            this.f8918s = Integer.valueOf(activity.getRequestedOrientation());
        }
        activity.setRequestedOrientation(i);
    }

    @VisibleForTesting
    /* renamed from: b */
    public void m30283b(@NonNull String str) {
        BaseVideoPlayerActivity.startMraid(this.f8902c, str);
    }

    /* renamed from: c */
    public final void m30282c() {
        this.f8916q.m30337a();
        this.f8914o = null;
    }

    @NonNull
    /* renamed from: d */
    public final ViewGroup m30280d() {
        if (this.f8906g == null) {
            this.f8906g = m30276f();
        }
        return this.f8906g;
    }

    public void destroy() {
        this.f8907h.m30261a();
        try {
            this.f8917r.unregister();
        } catch (IllegalArgumentException e) {
            if (!e.getMessage().contains("Receiver not registered")) {
                throw e;
            }
        }
        if (!this.f8923x) {
            pause(true);
        }
        Views.removeFromParent(this.f8905f);
        m30286b();
        m30282c();
        m30262m();
    }

    /* renamed from: e */
    public final int m30278e() {
        return ((WindowManager) this.f8902c.getSystemService("window")).getDefaultDisplay().getRotation();
    }

    @NonNull
    /* renamed from: f */
    public final ViewGroup m30276f() {
        ViewGroup viewGroup = this.f8906g;
        if (viewGroup != null) {
            return viewGroup;
        }
        View topmostView = Views.getTopmostView(this.f8901b.get(), this.f8904e);
        return topmostView instanceof ViewGroup ? (ViewGroup) topmostView : this.f8904e;
    }

    public void fillContent(@NonNull String str, @Nullable MraidWebViewCacheListener mraidWebViewCacheListener) {
        Preconditions.checkNotNull(str, "htmlData cannot be null");
        this.f8913n = new MraidBridge.MraidWebView(this.f8902c);
        if (mraidWebViewCacheListener != null) {
            mraidWebViewCacheListener.onReady(this.f8913n, null);
        }
        this.f8915p.m30332a(this.f8913n);
        this.f8904e.addView(this.f8913n, new FrameLayout.LayoutParams(-1, -1));
        this.f8915p.setContentHtml(str);
    }

    @NonNull
    /* renamed from: g */
    public WeakReference<Activity> m30274g() {
        return this.f8901b;
    }

    @NonNull
    public FrameLayout getAdContainer() {
        return this.f8904e;
    }

    @NonNull
    public Context getContext() {
        return this.f8902c;
    }

    @Nullable
    public MraidBridge.MraidWebView getCurrentWebView() {
        return this.f8916q.m30315c() ? this.f8914o : this.f8913n;
    }

    @VisibleForTesting
    /* renamed from: h */
    public void m30272h() {
        ViewState viewState;
        MraidBridge.MraidWebView mraidWebView;
        if (this.f8913n != null && (viewState = this.f8909j) != ViewState.LOADING && viewState != ViewState.HIDDEN) {
            if (viewState == ViewState.EXPANDED || this.f8903d == PlacementType.INTERSTITIAL) {
                m30262m();
            }
            ViewState viewState2 = this.f8909j;
            if (viewState2 == ViewState.RESIZED || viewState2 == ViewState.EXPANDED) {
                if (!this.f8916q.m30315c() || (mraidWebView = this.f8914o) == null) {
                    this.f8905f.removeView(this.f8913n);
                    this.f8904e.addView(this.f8913n, new FrameLayout.LayoutParams(-1, -1));
                    this.f8904e.setVisibility(0);
                } else {
                    m30282c();
                    this.f8905f.removeView(mraidWebView);
                }
                Views.removeFromParent(this.f8905f);
                m30294a(ViewState.DEFAULT);
            } else if (viewState2 == ViewState.DEFAULT) {
                this.f8904e.setVisibility(4);
                m30294a(ViewState.HIDDEN);
            }
        }
    }

    @VisibleForTesting
    /* renamed from: i */
    public void m30270i() {
        this.f8915p.m30320a(this.f8922w.m30248a(this.f8902c), this.f8922w.m30247b(this.f8902c), MraidNativeCommandHandler.m30246c(this.f8902c), MraidNativeCommandHandler.isStorePictureSupported(this.f8902c), m30266k());
        this.f8915p.m30327a(this.f8903d);
        MraidBridge mraidBridge = this.f8915p;
        mraidBridge.m30321a(mraidBridge.m30308f());
        this.f8915p.notifyScreenMetrics(this.f8908i);
        m30294a(ViewState.DEFAULT);
        this.f8915p.m30306g();
    }

    @VisibleForTesting
    /* renamed from: j */
    public void m30268j() {
        m30292a(new RunnableC3909f());
    }

    @VisibleForTesting
    /* renamed from: k */
    public boolean m30266k() {
        Activity activity = this.f8901b.get();
        if (activity == null || getCurrentWebView() == null) {
            return false;
        }
        if (this.f8903d != PlacementType.INLINE) {
            return true;
        }
        return this.f8922w.m30249a(activity, getCurrentWebView());
    }

    /* renamed from: l */
    public final boolean m30264l() {
        return !this.f8905f.isCloseVisible();
    }

    public void loadJavascript(@NonNull String str) {
        this.f8915p.m30316b(str);
    }

    @VisibleForTesting
    /* renamed from: m */
    public void m30262m() {
        Integer num;
        Activity activity = this.f8901b.get();
        if (!(activity == null || (num = this.f8918s) == null)) {
            activity.setRequestedOrientation(num.intValue());
        }
        this.f8918s = null;
    }

    public void onPreloadFinished(@NonNull BaseWebView baseWebView) {
        this.f8913n = (MraidBridge.MraidWebView) baseWebView;
        this.f8915p.m30332a(this.f8913n);
        this.f8904e.addView(this.f8913n, new FrameLayout.LayoutParams(-1, -1));
        m30270i();
    }

    public void onShow(@NonNull Activity activity) {
        this.f8901b = new WeakReference<>(activity);
        UseCustomCloseListener useCustomCloseListener = this.f8911l;
        if (useCustomCloseListener != null) {
            useCustomCloseListener.useCustomCloseChanged(m30264l());
        }
        try {
            m30302a();
        } catch (C10721a e) {
            MoPubLog.m30733d("Failed to apply orientation.");
        }
    }

    public void pause(boolean z) {
        this.f8923x = true;
        MraidBridge.MraidWebView mraidWebView = this.f8913n;
        if (mraidWebView != null) {
            WebViews.onPause(mraidWebView, z);
        }
        MraidBridge.MraidWebView mraidWebView2 = this.f8914o;
        if (mraidWebView2 != null) {
            WebViews.onPause(mraidWebView2, z);
        }
    }

    public void resume() {
        this.f8923x = false;
        MraidBridge.MraidWebView mraidWebView = this.f8913n;
        if (mraidWebView != null) {
            mraidWebView.onResume();
        }
        MraidBridge.MraidWebView mraidWebView2 = this.f8914o;
        if (mraidWebView2 != null) {
            mraidWebView2.onResume();
        }
    }

    public void setDebugListener(@Nullable MraidWebViewDebugListener mraidWebViewDebugListener) {
        this.f8912m = mraidWebViewDebugListener;
    }

    public void setMraidListener(@Nullable MraidListener mraidListener) {
        this.f8910k = mraidListener;
    }

    public void setUseCustomCloseListener(@Nullable UseCustomCloseListener useCustomCloseListener) {
        this.f8911l = useCustomCloseListener;
    }
}
