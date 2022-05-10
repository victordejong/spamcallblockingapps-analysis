package com.applovin.impl.adview;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.PointF;
import android.graphics.drawable.AnimatedVectorDrawable;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.StrictMode;
import android.os.SystemClock;
import android.view.KeyEvent;
import android.view.SurfaceHolder;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import com.applovin.impl.adview.AppLovinTouchToClickListener;
import com.applovin.impl.p483a.C6894a;
import com.applovin.impl.sdk.AppLovinBroadcastManager;
import com.applovin.impl.sdk.C7054e;
import com.applovin.impl.sdk.p489ad.AbstractC7036g;
import com.applovin.impl.sdk.p491d.C7048s;
import com.applovin.impl.sdk.utils.AppKilledService;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdType;
import com.applovin.sdk.AppLovinSdkUtils;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import p131c.p135b.p136a.p138b.AbstractC2086i;
import p131c.p135b.p136a.p138b.C2068b;
import p131c.p135b.p136a.p138b.C2070d;
import p131c.p135b.p136a.p138b.C2082h;
import p131c.p135b.p136a.p138b.C2096l;
import p131c.p135b.p136a.p138b.C2097m;
import p131c.p135b.p136a.p138b.C2108p;
import p131c.p135b.p136a.p138b.C2109q;
import p131c.p135b.p136a.p138b.C2110r;
import p131c.p135b.p136a.p148e.C2251d;
import p131c.p135b.p136a.p148e.C2270g;
import p131c.p135b.p136a.p148e.C2341l;
import p131c.p135b.p136a.p148e.C2374t;
import p131c.p135b.p136a.p148e.p149a.C2229b;
import p131c.p135b.p136a.p148e.p150c.AbstractC2249e;
import p131c.p135b.p136a.p148e.p150c.C2245a;
import p131c.p135b.p136a.p148e.p150c.C2246b;
import p131c.p135b.p136a.p148e.p150c.C2248d;
import p131c.p135b.p136a.p148e.p151e.C2262c;
import p131c.p135b.p136a.p148e.p153y.AbstractC2381a;
import p131c.p135b.p136a.p148e.p153y.AbstractC2426r;
import p131c.p135b.p136a.p148e.p153y.C2382b;
import p131c.p135b.p136a.p148e.p153y.C2388g;
import p131c.p135b.p136a.p148e.p153y.C2391j;
import p131c.p135b.p136a.p148e.p153y.C2422o;
import p131c.p135b.p136a.p148e.p153y.C2423p;
import p131c.p135b.p156c.C2450b;
/* renamed from: com.applovin.impl.adview.n */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/n.class */
public abstract class AbstractActivityC6931n extends Activity implements AbstractC2086i, C7054e.AbstractC7056b {
    public static final String KEY_WRAPPER_ID = "com.applovin.interstitial.wrapper_id";
    public static volatile C2097m lastKnownWrapper;

    /* renamed from: C */
    public FrameLayout f21289C;

    /* renamed from: D */
    public AbstractC6929h f21290D;

    /* renamed from: E */
    public View f21291E;

    /* renamed from: F */
    public AbstractC6929h f21292F;

    /* renamed from: G */
    public View f21293G;

    /* renamed from: H */
    public C6927f f21294H;

    /* renamed from: I */
    public ImageView f21295I;

    /* renamed from: K */
    public C2229b f21297K;

    /* renamed from: L */
    public C2109q f21298L;

    /* renamed from: M */
    public ProgressBar f21299M;

    /* renamed from: N */
    public C2110r.AbstractC2111a f21300N;

    /* renamed from: O */
    public C2068b f21301O;

    /* renamed from: P */
    public C2423p f21302P;

    /* renamed from: Q */
    public AbstractC2381a f21303Q;

    /* renamed from: R */
    public AppLovinBroadcastManager.Receiver f21304R;

    /* renamed from: a */
    public C2096l f21305a;

    /* renamed from: b */
    public C2097m f21306b;

    /* renamed from: c */
    public C2262c f21307c;
    public C2082h countdownManager;
    public volatile AbstractC7036g currentAd;
    public C2374t logger;
    public C2341l sdk;
    public AppLovinVideoView videoView;

    /* renamed from: z */
    public boolean f21330z;

    /* renamed from: d */
    public volatile boolean f21308d = false;

    /* renamed from: e */
    public volatile boolean f21309e = false;

    /* renamed from: f */
    public volatile boolean f21310f = false;

    /* renamed from: g */
    public volatile boolean f21311g = false;

    /* renamed from: h */
    public volatile boolean f21312h = false;

    /* renamed from: i */
    public volatile boolean f21313i = false;

    /* renamed from: j */
    public volatile boolean f21314j = false;
    public volatile boolean postitialWasDisplayed = false;

    /* renamed from: k */
    public boolean f21315k = false;
    public volatile boolean videoMuted = false;

    /* renamed from: l */
    public volatile boolean f21316l = false;

    /* renamed from: m */
    public boolean f21317m = true;

    /* renamed from: n */
    public boolean f21318n = false;
    public int computedLengthSeconds = 0;

    /* renamed from: o */
    public long f21319o = 0;

    /* renamed from: p */
    public long f21320p = 0;

    /* renamed from: q */
    public long f21321q = 0;

    /* renamed from: r */
    public long f21322r = 0;

    /* renamed from: s */
    public long f21323s = -2;

    /* renamed from: t */
    public int f21324t = 0;

    /* renamed from: u */
    public int f21325u = Integer.MIN_VALUE;

    /* renamed from: v */
    public AtomicBoolean f21326v = new AtomicBoolean(false);

    /* renamed from: w */
    public AtomicBoolean f21327w = new AtomicBoolean(false);

    /* renamed from: x */
    public AtomicBoolean f21328x = new AtomicBoolean(false);

    /* renamed from: y */
    public int f21329y = C7054e.f21780h;

    /* renamed from: A */
    public final Handler f21287A = new Handler(Looper.getMainLooper());

    /* renamed from: B */
    public final Handler f21288B = new Handler(Looper.getMainLooper());

    /* renamed from: J */
    public WeakReference<MediaPlayer> f21296J = new WeakReference<>(null);

    /* renamed from: com.applovin.impl.adview.n$a */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/n$a.class */
    public class C6932a implements C2082h.AbstractC2084b {

        /* renamed from: a */
        public final /* synthetic */ long f21331a;

        public C6932a(long j) {
            this.f21331a = j;
        }

        @Override // p131c.p135b.p136a.p138b.C2082h.AbstractC2084b
        /* renamed from: a */
        public void mo19212a() {
            if (AbstractActivityC6931n.this.f21294H != null) {
                long seconds = TimeUnit.MILLISECONDS.toSeconds(this.f21331a - AbstractActivityC6931n.this.videoView.getCurrentPosition());
                if (seconds <= 0) {
                    AbstractActivityC6931n.this.f21294H.setVisibility(8);
                    AbstractActivityC6931n.this.f21318n = true;
                } else if (AbstractActivityC6931n.this.m19313H()) {
                    AbstractActivityC6931n.this.f21294H.setProgress((int) seconds);
                }
            }
        }

        @Override // p131c.p135b.p136a.p138b.C2082h.AbstractC2084b
        /* renamed from: b */
        public boolean mo19211b() {
            return AbstractActivityC6931n.this.m19313H();
        }
    }

    /* renamed from: com.applovin.impl.adview.n$a0 */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/n$a0.class */
    public class RunnableC6933a0 implements Runnable {
        public RunnableC6933a0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (!AbstractActivityC6931n.this.f21314j && AbstractActivityC6931n.this.f21292F != null) {
                    AbstractActivityC6931n.this.f21323s = -1L;
                    AbstractActivityC6931n.this.f21322r = SystemClock.elapsedRealtime();
                    AbstractActivityC6931n.this.f21314j = true;
                    AbstractActivityC6931n.this.f21292F.setVisibility(0);
                    AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
                    alphaAnimation.setDuration(400L);
                    alphaAnimation.setRepeatCount(0);
                    AbstractActivityC6931n.this.f21292F.startAnimation(alphaAnimation);
                    if (AbstractActivityC6931n.this.m19321D() && AbstractActivityC6931n.this.f21293G != null) {
                        AbstractActivityC6931n.this.f21293G.setVisibility(0);
                        AbstractActivityC6931n.this.f21293G.bringToFront();
                    }
                }
            } catch (Throwable th) {
                C2374t tVar = AbstractActivityC6931n.this.logger;
                tVar.m30040d("InterActivity", "Unable to show skip button: " + th);
            }
        }
    }

    /* renamed from: com.applovin.impl.adview.n$b */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/n$b.class */
    public class C6934b implements C2082h.AbstractC2084b {
        public C6934b() {
        }

        @Override // p131c.p135b.p136a.p138b.C2082h.AbstractC2084b
        /* renamed from: a */
        public void mo19212a() {
            if (AbstractActivityC6931n.this.f21299M == null) {
                return;
            }
            if (AbstractActivityC6931n.this.shouldContinueFullLengthVideoCountdown()) {
                AbstractActivityC6931n.this.f21299M.setProgress((int) ((AbstractActivityC6931n.this.videoView.getCurrentPosition() / AbstractActivityC6931n.this.videoView.getDuration()) * ((Integer) AbstractActivityC6931n.this.sdk.m30291a(C2251d.C2256e.f8678h2)).intValue()));
                return;
            }
            AbstractActivityC6931n.this.f21299M.setVisibility(8);
        }

        @Override // p131c.p135b.p136a.p138b.C2082h.AbstractC2084b
        /* renamed from: b */
        public boolean mo19211b() {
            return AbstractActivityC6931n.this.shouldContinueFullLengthVideoCountdown();
        }
    }

    /* renamed from: com.applovin.impl.adview.n$b0 */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/n$b0.class */
    public class RunnableC6935b0 implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ AbstractC6929h f21335a;

        public RunnableC6935b0(AbstractC6929h hVar) {
            this.f21335a = hVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f21335a.equals(AbstractActivityC6931n.this.f21290D)) {
                AbstractActivityC6931n.this.m19323C();
            } else if (this.f21335a.equals(AbstractActivityC6931n.this.f21292F)) {
                AbstractActivityC6931n.this.m19319E();
            }
        }
    }

    /* renamed from: com.applovin.impl.adview.n$c */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/n$c.class */
    public class C6936c extends AbstractC2381a {

        /* renamed from: com.applovin.impl.adview.n$c$a */
        /* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/n$c$a.class */
        public class RunnableC6937a implements Runnable {
            public RunnableC6937a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                C2374t.m30034j("AppLovinInterstitialActivity", "Dismissing on-screen ad due to app relaunched via launcher.");
                AbstractActivityC6931n.this.dismiss();
            }
        }

        public C6936c() {
        }

        @Override // p131c.p135b.p136a.p148e.p153y.AbstractC2381a, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
            C2341l lVar = AbstractActivityC6931n.this.sdk;
            if (lVar != null && ((Boolean) lVar.m30291a(C2251d.C2256e.f8621W3)).booleanValue() && !AbstractActivityC6931n.this.f21310f) {
                if (activity.getClass().getName().equals(AbstractC2426r.m29777d(AbstractActivityC6931n.this.getApplicationContext()))) {
                    AbstractActivityC6931n.this.sdk.m30249j().m18826a(new C2270g.C2290g(AbstractActivityC6931n.this.sdk, new RunnableC6937a()), C7048s.EnumC7049a.MAIN);
                }
            }
        }
    }

    /* renamed from: com.applovin.impl.adview.n$d */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/n$d.class */
    public class RunnableC6938d implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ C2108p f21339a;

        public RunnableC6938d(C2108p pVar) {
            this.f21339a = pVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            long g = this.f21339a.m31049g();
            AbstractActivityC6931n nVar = AbstractActivityC6931n.this;
            nVar.m19298a((View) nVar.f21298L, true, g);
            AbstractActivityC6931n.this.f21298L.bringToFront();
        }
    }

    /* renamed from: com.applovin.impl.adview.n$e */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/n$e.class */
    public class RunnableC6939e implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ C2108p f21341a;

        public RunnableC6939e(C2108p pVar) {
            this.f21341a = pVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            long h = this.f21341a.m31048h();
            AbstractActivityC6931n nVar = AbstractActivityC6931n.this;
            nVar.m19298a((View) nVar.f21298L, false, h);
        }
    }

    /* renamed from: com.applovin.impl.adview.n$f */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/n$f.class */
    public class C6940f implements C2110r.AbstractC2111a {
        public C6940f() {
        }

        @Override // p131c.p135b.p136a.p138b.C2110r.AbstractC2111a
        /* renamed from: a */
        public void mo19223a(C2109q qVar) {
            AbstractActivityC6931n.this.logger.m30044b("InterActivity", "Skipping video from video button...");
            AbstractActivityC6931n.this.skipVideo();
        }

        @Override // p131c.p135b.p136a.p138b.C2110r.AbstractC2111a
        /* renamed from: b */
        public void mo19222b(C2109q qVar) {
            AbstractActivityC6931n.this.logger.m30044b("InterActivity", "Closing ad from video button...");
            AbstractActivityC6931n.this.dismiss();
        }

        @Override // p131c.p135b.p136a.p138b.C2110r.AbstractC2111a
        /* renamed from: c */
        public void mo19221c(C2109q qVar) {
            AbstractActivityC6931n.this.logger.m30044b("InterActivity", "Clicking through from video button...");
            AbstractActivityC6931n.this.clickThroughFromVideo(qVar.getAndClearLastClickLocation());
        }
    }

    /* renamed from: com.applovin.impl.adview.n$g */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/n$g.class */
    public class RunnableC6941g implements Runnable {
        public RunnableC6941g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (AbstractActivityC6931n.this.currentAd != null && !AbstractActivityC6931n.this.currentAd.m18897g0().getAndSet(true)) {
                AbstractActivityC6931n.this.sdk.m30249j().m18826a(new C2270g.C2291g0(AbstractActivityC6931n.this.currentAd, AbstractActivityC6931n.this.sdk), C7048s.EnumC7049a.REWARD);
            }
        }
    }

    /* renamed from: com.applovin.impl.adview.n$h */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/n$h.class */
    public class C6942h implements AppLovinAdDisplayListener {
        public C6942h() {
        }

        @Override // com.applovin.sdk.AppLovinAdDisplayListener
        public void adDisplayed(AppLovinAd appLovinAd) {
            if (!AbstractActivityC6931n.this.f21309e) {
                AbstractActivityC6931n.this.m19290a(appLovinAd);
            }
        }

        @Override // com.applovin.sdk.AppLovinAdDisplayListener
        public void adHidden(AppLovinAd appLovinAd) {
            AbstractActivityC6931n.this.m19278b(appLovinAd);
        }
    }

    /* renamed from: com.applovin.impl.adview.n$i */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/n$i.class */
    public class C6943i implements AppLovinAdClickListener {
        public C6943i() {
        }

        @Override // com.applovin.sdk.AppLovinAdClickListener
        public void adClicked(AppLovinAd appLovinAd) {
            C2391j.m29900a(AbstractActivityC6931n.this.f21306b.m31059e(), appLovinAd);
        }
    }

    /* renamed from: com.applovin.impl.adview.n$j */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/n$j.class */
    public class RunnableC6944j implements Runnable {
        public RunnableC6944j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AbstractActivityC6931n.this.m19245o();
        }
    }

    /* renamed from: com.applovin.impl.adview.n$k */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/n$k.class */
    public class C6945k implements AppLovinBroadcastManager.Receiver {

        /* renamed from: a */
        public final /* synthetic */ AbstractC7036g f21348a;

        /* renamed from: b */
        public final /* synthetic */ Intent f21349b;

        public C6945k(AbstractC7036g gVar, Intent intent) {
            this.f21348a = gVar;
            this.f21349b = intent;
        }

        @Override // com.applovin.impl.sdk.AppLovinBroadcastManager.Receiver
        public void onReceive(Context context, Intent intent, Map<String, Object> map) {
            AbstractActivityC6931n.this.sdk.m30299W().trackAppKilled(this.f21348a);
            AbstractActivityC6931n.this.stopService(this.f21349b);
            AbstractActivityC6931n.this.sdk.m30317E().unregisterReceiver(this);
        }
    }

    /* renamed from: com.applovin.impl.adview.n$l */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/n$l.class */
    public class RunnableC6946l implements Runnable {
        public RunnableC6946l() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AbstractActivityC6931n nVar = AbstractActivityC6931n.this;
            nVar.m19276b(nVar.videoMuted);
        }
    }

    /* renamed from: com.applovin.impl.adview.n$m */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/n$m.class */
    public class RunnableC6947m implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ String f21352a;

        public RunnableC6947m(String str) {
            this.f21352a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            C2070d adWebView = ((AdViewControllerImpl) AbstractActivityC6931n.this.f21305a.getAdViewController()).getAdWebView();
            if (adWebView != null && C2422o.m29851b(this.f21352a)) {
                adWebView.m31125a(this.f21352a);
            }
        }
    }

    /* renamed from: com.applovin.impl.adview.n$n */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/n$n.class */
    public class RunnableC6948n implements Runnable {
        public RunnableC6948n() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AbstractActivityC6931n.this.mo19213r();
        }
    }

    /* renamed from: com.applovin.impl.adview.n$o  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/n$o.class */
    public class animationAnimation$AnimationListenerC6949o implements Animation.AnimationListener {

        /* renamed from: a */
        public final /* synthetic */ View f21355a;

        /* renamed from: b */
        public final /* synthetic */ boolean f21356b;

        public animationAnimation$AnimationListenerC6949o(View view, boolean z) {
            this.f21355a = view;
            this.f21356b = z;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            if (!this.f21356b) {
                this.f21355a.setVisibility(4);
            }
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
            this.f21355a.setVisibility(0);
        }
    }

    /* renamed from: com.applovin.impl.adview.n$p */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/n$p.class */
    public class RunnableC6950p implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ AppLovinAdDisplayListener f21358a;

        /* renamed from: b */
        public final /* synthetic */ String f21359b;

        public RunnableC6950p(AppLovinAdDisplayListener appLovinAdDisplayListener, String str) {
            this.f21358a = appLovinAdDisplayListener;
            this.f21359b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            ((AbstractC2249e) this.f21358a).onAdDisplayFailed(this.f21359b);
        }
    }

    /* renamed from: com.applovin.impl.adview.n$q */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/n$q.class */
    public class C6951q implements MediaPlayer.OnPreparedListener {

        /* renamed from: com.applovin.impl.adview.n$q$a */
        /* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/n$q$a.class */
        public class C6952a implements MediaPlayer.OnErrorListener {

            /* renamed from: com.applovin.impl.adview.n$q$a$a */
            /* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/n$q$a$a.class */
            public class RunnableC6953a implements Runnable {

                /* renamed from: a */
                public final /* synthetic */ int f21363a;

                /* renamed from: b */
                public final /* synthetic */ int f21364b;

                public RunnableC6953a(int i, int i2) {
                    this.f21363a = i;
                    this.f21364b = i2;
                }

                @Override // java.lang.Runnable
                public void run() {
                    AbstractActivityC6931n nVar = AbstractActivityC6931n.this;
                    nVar.handleMediaError("Media player error (" + this.f21363a + "," + this.f21364b + ")");
                }
            }

            public C6952a() {
            }

            @Override // android.media.MediaPlayer.OnErrorListener
            public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
                AbstractActivityC6931n.this.f21288B.post(new RunnableC6953a(i, i2));
                return true;
            }
        }

        /* renamed from: com.applovin.impl.adview.n$q$b */
        /* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/n$q$b.class */
        public class C6954b implements MediaPlayer.OnInfoListener {
            public C6954b() {
            }

            @Override // android.media.MediaPlayer.OnInfoListener
            public boolean onInfo(MediaPlayer mediaPlayer, int i, int i2) {
                if (i != 3) {
                    if (i == 701) {
                        AbstractActivityC6931n.this.m19306O();
                        if (AbstractActivityC6931n.this.f21307c == null) {
                            return false;
                        }
                        AbstractActivityC6931n.this.f21307c.m30545g();
                        return false;
                    } else if (i != 702) {
                        return false;
                    }
                }
                AbstractActivityC6931n.this.m19305P();
                return false;
            }
        }

        public C6951q() {
        }

        @Override // android.media.MediaPlayer.OnPreparedListener
        public void onPrepared(MediaPlayer mediaPlayer) {
            AbstractActivityC6931n.this.f21296J = new WeakReference(mediaPlayer);
            float f = !AbstractActivityC6931n.this.m19227y() ? 1 : 0;
            mediaPlayer.setVolume(f, f);
            int videoWidth = mediaPlayer.getVideoWidth();
            int videoHeight = mediaPlayer.getVideoHeight();
            AbstractActivityC6931n.this.computedLengthSeconds = (int) TimeUnit.MILLISECONDS.toSeconds(mediaPlayer.getDuration());
            AbstractActivityC6931n.this.videoView.setVideoSize(videoWidth, videoHeight);
            SurfaceHolder holder = AbstractActivityC6931n.this.videoView.getHolder();
            if (holder.getSurface() != null) {
                mediaPlayer.setDisplay(holder);
            }
            mediaPlayer.setOnErrorListener(new C6952a());
            mediaPlayer.setOnInfoListener(new C6954b());
            if (AbstractActivityC6931n.this.f21320p == 0) {
                AbstractActivityC6931n.this.m19315G();
                AbstractActivityC6931n.this.m19327A();
                AbstractActivityC6931n.this.m19309L();
                AbstractActivityC6931n.this.m19310K();
                AbstractActivityC6931n.this.playVideo();
                AbstractActivityC6931n.this.m19257i();
            }
        }
    }

    /* renamed from: com.applovin.impl.adview.n$r */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/n$r.class */
    public class C6955r implements MediaPlayer.OnCompletionListener {
        public C6955r() {
        }

        @Override // android.media.MediaPlayer.OnCompletionListener
        public void onCompletion(MediaPlayer mediaPlayer) {
            AbstractActivityC6931n.this.m19229x();
        }
    }

    /* renamed from: com.applovin.impl.adview.n$s */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/n$s.class */
    public class C6956s implements MediaPlayer.OnErrorListener {

        /* renamed from: com.applovin.impl.adview.n$s$a */
        /* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/n$s$a.class */
        public class RunnableC6957a implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ int f21369a;

            /* renamed from: b */
            public final /* synthetic */ int f21370b;

            public RunnableC6957a(int i, int i2) {
                this.f21369a = i;
                this.f21370b = i2;
            }

            @Override // java.lang.Runnable
            public void run() {
                AbstractActivityC6931n nVar = AbstractActivityC6931n.this;
                nVar.handleMediaError("Video view error (" + this.f21369a + "," + this.f21370b + ")");
            }
        }

        public C6956s() {
        }

        @Override // android.media.MediaPlayer.OnErrorListener
        public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
            AbstractActivityC6931n.this.f21288B.post(new RunnableC6957a(i, i2));
            return true;
        }
    }

    /* renamed from: com.applovin.impl.adview.n$t */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/n$t.class */
    public class C6958t implements AppLovinTouchToClickListener.OnClickListener {
        public C6958t() {
        }

        @Override // com.applovin.impl.adview.AppLovinTouchToClickListener.OnClickListener
        public void onClick(View view, PointF pointF) {
            AbstractActivityC6931n.this.m19300a(pointF);
        }
    }

    /* renamed from: com.applovin.impl.adview.n$u */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/n$u.class */
    public class View$OnClickListenerC6959u implements View.OnClickListener {
        public View$OnClickListenerC6959u() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AbstractActivityC6931n.this.m19285b();
        }
    }

    /* renamed from: com.applovin.impl.adview.n$v */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/n$v.class */
    public class View$OnClickListenerC6960v implements View.OnClickListener {
        public View$OnClickListenerC6960v() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AbstractActivityC6931n.this.m19304a();
        }
    }

    /* renamed from: com.applovin.impl.adview.n$w */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/n$w.class */
    public class View$OnClickListenerC6961w implements View.OnClickListener {
        public View$OnClickListenerC6961w() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AbstractActivityC6931n.this.f21290D.performClick();
        }
    }

    /* renamed from: com.applovin.impl.adview.n$x */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/n$x.class */
    public class View$OnClickListenerC6962x implements View.OnClickListener {
        public View$OnClickListenerC6962x() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AbstractActivityC6931n.this.f21292F.performClick();
        }
    }

    /* renamed from: com.applovin.impl.adview.n$y */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/n$y.class */
    public class View$OnClickListenerC6963y implements View.OnClickListener {
        public View$OnClickListenerC6963y() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AbstractActivityC6931n.this.toggleMute();
        }
    }

    /* renamed from: com.applovin.impl.adview.n$z */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/n$z.class */
    public class RunnableC6964z implements Runnable {
        public RunnableC6964z() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (AbstractActivityC6931n.this.f21313i) {
                    AbstractActivityC6931n.this.f21290D.setVisibility(0);
                    return;
                }
                AbstractActivityC6931n.this.f21321q = SystemClock.elapsedRealtime();
                AbstractActivityC6931n.this.f21313i = true;
                if (AbstractActivityC6931n.this.m19321D() && AbstractActivityC6931n.this.f21291E != null) {
                    AbstractActivityC6931n.this.f21291E.setVisibility(0);
                    AbstractActivityC6931n.this.f21291E.bringToFront();
                }
                AbstractActivityC6931n.this.f21290D.setVisibility(0);
                AbstractActivityC6931n.this.f21290D.bringToFront();
                AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
                alphaAnimation.setDuration(400L);
                alphaAnimation.setRepeatCount(0);
                AbstractActivityC6931n.this.f21290D.startAnimation(alphaAnimation);
            } catch (Throwable th) {
                AbstractActivityC6931n.this.dismiss();
            }
        }
    }

    /* renamed from: A */
    public final void m19327A() {
        if (this.f21295I == null) {
            try {
                this.videoMuted = m19227y();
                this.f21295I = new ImageView(this);
                if (!m19325B()) {
                    int a = m19303a(((Integer) this.sdk.m30291a(C2251d.C2256e.f8648c2)).intValue());
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(a, a, ((Integer) this.sdk.m30291a(C2251d.C2256e.f8660e2)).intValue());
                    this.f21295I.setScaleType(ImageView.ScaleType.FIT_CENTER);
                    int a2 = m19303a(((Integer) this.sdk.m30291a(C2251d.C2256e.f8654d2)).intValue());
                    layoutParams.setMargins(a2, a2, a2, a2);
                    if ((this.videoMuted ? this.currentAd.m18945L() : this.currentAd.m18944M()) != null) {
                        C2374t d0 = this.sdk.m30262d0();
                        d0.m30044b("InterActivity", "Added mute button with params: " + layoutParams);
                        m19286a(this.videoMuted);
                        this.f21295I.setClickable(true);
                        this.f21295I.setOnClickListener(new View$OnClickListenerC6963y());
                        this.f21289C.addView(this.f21295I, layoutParams);
                        this.f21295I.bringToFront();
                        return;
                    }
                    this.sdk.m30262d0().m30039e("InterActivity", "Attempting to add mute button but could not find uri");
                    return;
                }
                this.sdk.m30262d0().m30044b("InterActivity", "Mute button should be hidden");
            } catch (Exception e) {
                this.sdk.m30262d0().m30046a("InterActivity", "Failed to attach mute button", e);
            }
        }
    }

    /* renamed from: B */
    public final boolean m19325B() {
        if (!((Boolean) this.sdk.m30291a(C2251d.C2256e.f8623X1)).booleanValue()) {
            return true;
        }
        if (!((Boolean) this.sdk.m30291a(C2251d.C2256e.f8627Y1)).booleanValue() || m19227y()) {
            return false;
        }
        return !((Boolean) this.sdk.m30291a(C2251d.C2256e.f8637a2)).booleanValue();
    }

    /* renamed from: C */
    public final void m19323C() {
        runOnUiThread(new RunnableC6964z());
    }

    /* renamed from: D */
    public final boolean m19321D() {
        return ((Integer) this.sdk.m30291a(C2251d.C2256e.f8631Z0)).intValue() > 0;
    }

    /* renamed from: E */
    public final void m19319E() {
        runOnUiThread(new RunnableC6933a0());
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0019, code lost:
        if (r6 != null) goto L_0x0024;
     */
    /* renamed from: F */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m19317F() {
        /*
            r5 = this;
            r0 = r5
            com.applovin.impl.sdk.ad.g r0 = r0.currentAd
            long r0 = r0.m18863x0()
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L_0x0034
            r0 = r5
            boolean r0 = r0.f21315k
            if (r0 == 0) goto L_0x001f
            r0 = r5
            com.applovin.impl.adview.h r0 = r0.f21292F
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L_0x001f
            goto L_0x0024
        L_0x001f:
            r0 = r5
            com.applovin.impl.adview.h r0 = r0.f21290D
            r6 = r0
        L_0x0024:
            r0 = r5
            r1 = r5
            com.applovin.impl.sdk.ad.g r1 = r1.currentAd
            long r1 = r1.m18863x0()
            float r1 = (float) r1
            long r1 = p131c.p135b.p136a.p148e.p153y.AbstractC2426r.m29789b(r1)
            r2 = r6
            r0.m19301a(r1, r2)
        L_0x0034:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.impl.adview.AbstractActivityC6931n.m19317F():void");
    }

    /* renamed from: G */
    public final void m19315G() {
        boolean z = ((Boolean) this.sdk.m30291a(C2251d.C2256e.f8559K1)).booleanValue() && m19311J() > 0;
        if (this.f21294H == null && z) {
            this.f21294H = new C6927f(this);
            int g = this.currentAd.m18899g();
            this.f21294H.setTextColor(g);
            this.f21294H.setTextSize(((Integer) this.sdk.m30291a(C2251d.C2256e.f8554J1)).intValue());
            this.f21294H.setFinishedStrokeColor(g);
            this.f21294H.setFinishedStrokeWidth(((Integer) this.sdk.m30291a(C2251d.C2256e.f8549I1)).intValue());
            this.f21294H.setMax(m19311J());
            this.f21294H.setProgress(m19311J());
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(m19303a(((Integer) this.sdk.m30291a(C2251d.C2256e.f8544H1)).intValue()), m19303a(((Integer) this.sdk.m30291a(C2251d.C2256e.f8544H1)).intValue()), ((Integer) this.sdk.m30291a(C2251d.C2256e.f8539G1)).intValue());
            int a = m19303a(((Integer) this.sdk.m30291a(C2251d.C2256e.f8534F1)).intValue());
            layoutParams.setMargins(a, a, a, a);
            this.f21289C.addView(this.f21294H, layoutParams);
            this.f21294H.bringToFront();
            this.f21294H.setVisibility(0);
            this.countdownManager.m31101a("COUNTDOWN_CLOCK", 1000L, new C6932a(m19312I()));
        }
    }

    /* renamed from: H */
    public final boolean m19313H() {
        return !this.f21318n && !this.postitialWasDisplayed && this.videoView.isPlaying();
    }

    /* renamed from: I */
    public final long m19312I() {
        return TimeUnit.SECONDS.toMillis(m19311J());
    }

    /* renamed from: J */
    public final int m19311J() {
        int f = this.currentAd.m18902f();
        if (f > 0) {
            return f;
        }
        if (((Boolean) this.sdk.m30291a(C2251d.C2256e.f8708m2)).booleanValue()) {
            f = this.computedLengthSeconds + 1;
        }
        return f;
    }

    /* renamed from: K */
    public final void m19310K() {
        if (this.f21299M == null && this.currentAd.m18878q()) {
            this.logger.m30042c("InterActivity", "Attaching video progress bar...");
            ProgressBar progressBar = new ProgressBar(this, null, 16842872);
            this.f21299M = progressBar;
            progressBar.setMax(((Integer) this.sdk.m30291a(C2251d.C2256e.f8678h2)).intValue());
            this.f21299M.setPadding(0, 0, 0, 0);
            if (C2388g.m29971d()) {
                try {
                    this.f21299M.setProgressTintList(ColorStateList.valueOf(this.currentAd.m18876r()));
                } catch (Throwable th) {
                    this.logger.m30043b("InterActivity", "Unable to update progress bar color.", th);
                }
            }
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(this.videoView.getWidth(), 20, 80);
            layoutParams.setMargins(0, 0, 0, ((Integer) this.sdk.m30291a(C2251d.C2256e.f8684i2)).intValue());
            this.f21289C.addView(this.f21299M, layoutParams);
            this.f21299M.bringToFront();
            this.countdownManager.m31101a("PROGRESS_BAR", ((Long) this.sdk.m30291a(C2251d.C2256e.f8672g2)).longValue(), new C6934b());
        }
    }

    /* renamed from: L */
    public final void m19309L() {
        C2108p G0 = this.currentAd.m18952G0();
        if (C2422o.m29851b(this.currentAd.m18954F0()) && G0 != null && this.f21298L == null) {
            this.logger.m30042c("InterActivity", "Attaching video button...");
            this.f21298L = m19308M();
            double a = G0.m31055a();
            Double.isNaN(a);
            double d = a / 100.0d;
            double b = G0.m31054b();
            Double.isNaN(b);
            double d2 = b / 100.0d;
            int width = this.videoView.getWidth();
            int height = this.videoView.getHeight();
            double d3 = width;
            Double.isNaN(d3);
            int i = (int) (d * d3);
            double d4 = height;
            Double.isNaN(d4);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i, (int) (d2 * d4), G0.m31052d());
            int a2 = m19303a(G0.m31053c());
            layoutParams.setMargins(a2, a2, a2, a2);
            this.f21289C.addView(this.f21298L, layoutParams);
            this.f21298L.bringToFront();
            if (G0.m31047i() > 0.0f) {
                this.f21298L.setVisibility(4);
                this.f21288B.postDelayed(new RunnableC6938d(G0), AbstractC2426r.m29789b(G0.m31047i()));
            }
            if (G0.m31046j() > 0.0f) {
                this.f21288B.postDelayed(new RunnableC6939e(G0), AbstractC2426r.m29789b(G0.m31046j()));
            }
        }
    }

    /* renamed from: M */
    public final C2109q m19308M() {
        C2374t tVar = this.logger;
        tVar.m30044b("InterActivity", "Create video button with HTML = " + this.currentAd.m18954F0());
        C2110r rVar = new C2110r(this.sdk);
        this.f21300N = new C6940f();
        rVar.m31042a(new WeakReference<>(this.f21300N));
        C2109q a = C2109q.m31045a(this.sdk, rVar, getApplicationContext());
        a.m31044a(this.currentAd.m18954F0());
        return a;
    }

    /* renamed from: N */
    public final void m19307N() {
        if (this.f21316l && this.currentAd.m18874s()) {
            C2068b bVar = new C2068b(this, ((Integer) this.sdk.m30291a(C2251d.C2256e.f8702l2)).intValue(), this.currentAd.m18870u());
            this.f21301O = bVar;
            bVar.setColor(this.currentAd.m18868v());
            this.f21301O.setBackgroundColor(this.currentAd.m18866w());
            this.f21301O.setVisibility(8);
            this.f21289C.addView(this.f21301O, new FrameLayout.LayoutParams(-1, -1, 17));
            this.f21289C.bringChildToFront(this.f21301O);
        }
    }

    /* renamed from: O */
    public final void m19306O() {
        C2068b bVar = this.f21301O;
        if (bVar != null) {
            bVar.m31133a();
        }
    }

    /* renamed from: P */
    public final void m19305P() {
        C2068b bVar = this.f21301O;
        if (bVar != null) {
            bVar.m31132b();
        }
    }

    /* renamed from: a */
    public final int m19303a(int i) {
        return AppLovinSdkUtils.dpToPx(this, i);
    }

    /* renamed from: a */
    public final int m19302a(int i, boolean z) {
        if (z) {
            if (i == 0) {
                return 0;
            }
            if (i == 1) {
                return 9;
            }
            if (i == 2) {
                return 8;
            }
            return i == 3 ? 1 : -1;
        } else if (i == 0) {
            return 1;
        } else {
            if (i == 1) {
                return 0;
            }
            if (i == 2) {
                return 9;
            }
            return i == 3 ? 8 : -1;
        }
    }

    /* renamed from: a */
    public final void m19304a() {
        if (m19275c()) {
            m19249m();
            pauseReportRewardTask();
            this.logger.m30044b("InterActivity", "Prompting incentivized ad close warning");
            this.f21297K.m30689b();
            return;
        }
        skipVideo();
    }

    /* renamed from: a */
    public final void m19301a(long j, AbstractC6929h hVar) {
        this.f21288B.postDelayed(new RunnableC6935b0(hVar), j);
    }

    /* renamed from: a */
    public final void m19300a(PointF pointF) {
        if (!this.currentAd.mo18950H0() || this.currentAd.mo18869u0() == null) {
            m19235u();
            m19233v();
            return;
        }
        this.sdk.m30262d0().m30044b("InterActivity", "Clicking through video...");
        clickThroughFromVideo(pointF);
    }

    /* renamed from: a */
    public final void m19299a(Uri uri) {
        AppLovinVideoView appLovinVideoView = new AppLovinVideoView(this, this.sdk);
        this.videoView = appLovinVideoView;
        if (uri != null) {
            appLovinVideoView.setOnPreparedListener(new C6951q());
            this.videoView.setOnCompletionListener(new C6955r());
            this.videoView.setOnErrorListener(new C6956s());
            StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
            this.videoView.setVideoURI(uri);
            StrictMode.setThreadPolicy(allowThreadDiskReads);
        }
        this.videoView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1, 17));
        this.videoView.setOnTouchListener(new AppLovinTouchToClickListener(this.sdk, this, new C6958t()));
        this.f21289C.addView(this.videoView);
        setContentView(this.f21289C);
        m19317F();
        m19307N();
    }

    /* renamed from: a */
    public final void m19298a(View view, boolean z, long j) {
        float f = 0.0f;
        float f2 = z ? 0.0f : 1.0f;
        if (z) {
            f = 1.0f;
        }
        AlphaAnimation alphaAnimation = new AlphaAnimation(f2, f);
        alphaAnimation.setDuration(j);
        alphaAnimation.setAnimationListener(new animationAnimation$AnimationListenerC6949o(view, z));
        view.startAnimation(alphaAnimation);
    }

    /* renamed from: a */
    public final void m19290a(AppLovinAd appLovinAd) {
        C2391j.m29899a(this.f21306b.m31060d(), appLovinAd);
        this.f21309e = true;
        this.sdk.m30235x().m30058a(appLovinAd);
        AppLovinSdkUtils.runOnUiThreadDelayed(new RunnableC6946l(), ((Long) this.sdk.m30291a(C2251d.C2256e.f8714n2)).longValue());
    }

    /* renamed from: a */
    public final void m19289a(AppLovinAd appLovinAd, double d, boolean z) {
        C2391j.m29894a(this.f21306b.m31061c(), appLovinAd, d, z);
    }

    /* renamed from: a */
    public final void m19288a(String str) {
        C2097m mVar = this.f21306b;
        if (mVar != null) {
            AppLovinAdDisplayListener d = mVar.m31060d();
            if ((d instanceof AbstractC2249e) && this.f21328x.compareAndSet(false, true)) {
                runOnUiThread(new RunnableC6950p(d, str));
            }
        }
    }

    /* renamed from: a */
    public final void m19287a(String str, long j) {
        if (j >= 0) {
            this.f21288B.postDelayed(new RunnableC6947m(str), j);
        }
    }

    /* renamed from: a */
    public final void m19286a(boolean z) {
        if (((Boolean) this.sdk.m30291a(C2251d.C2256e.f8619W1)).booleanValue() && C2388g.m29971d()) {
            AnimatedVectorDrawable animatedVectorDrawable = (AnimatedVectorDrawable) getDrawable(z ? C2450b.unmute_to_mute : C2450b.mute_to_unmute);
            if (animatedVectorDrawable != null) {
                this.f21295I.setScaleType(ImageView.ScaleType.FIT_XY);
                this.f21295I.setImageDrawable(animatedVectorDrawable);
                animatedVectorDrawable.start();
                return;
            }
        }
        Uri L = z ? this.currentAd.m18945L() : this.currentAd.m18944M();
        int a = m19303a(((Integer) this.sdk.m30291a(C2251d.C2256e.f8648c2)).intValue());
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        AppLovinSdkUtils.safePopulateImageView(this.f21295I, L, a);
        StrictMode.setThreadPolicy(allowThreadDiskReads);
    }

    /* renamed from: b */
    public final void m19285b() {
        C2070d adWebView;
        if (this.currentAd.m18937T() && (adWebView = ((AdViewControllerImpl) this.f21305a.getAdViewController()).getAdWebView()) != null) {
            adWebView.m31125a("javascript:al_onCloseButtonTapped();");
        }
        if (m19269d()) {
            this.logger.m30044b("InterActivity", "Prompting incentivized non-video ad close warning");
            this.f21297K.m30687c();
            return;
        }
        dismiss();
    }

    /* renamed from: b */
    public final void m19284b(int i) {
        try {
            setRequestedOrientation(i);
        } catch (Throwable th) {
            this.sdk.m30262d0().m30043b("InterActivity", "Failed to set requested orientation", th);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x009f, code lost:
        if (r4 == 2) goto L_0x004b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00a5, code lost:
        r9 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00c3, code lost:
        if (r4 == 1) goto L_0x00a5;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m19283b(int r4, boolean r5) {
        /*
            r3 = this;
            r0 = r3
            c.b.a.e.l r0 = r0.sdk
            c.b.a.e.d$e<java.lang.Boolean> r1 = p131c.p135b.p136a.p148e.C2251d.C2256e.f8594R1
            java.lang.Object r0 = r0.m30291a(r1)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            r6 = r0
            r0 = r3
            c.b.a.b.m r0 = r0.f21306b
            com.applovin.impl.sdk.ad.g$b r0 = r0.m31058f()
            r7 = r0
            com.applovin.impl.sdk.ad.g$b r0 = com.applovin.impl.sdk.p489ad.AbstractC7036g.EnumC7038b.ACTIVITY_PORTRAIT
            r8 = r0
            r0 = 1
            r9 = r0
            r0 = r7
            r1 = r8
            if (r0 != r1) goto L_0x0078
            r0 = 9
            r10 = r0
            r0 = r5
            if (r0 == 0) goto L_0x0054
            r0 = r4
            r1 = 1
            if (r0 == r1) goto L_0x003e
            r0 = r4
            r1 = 3
            if (r0 == r1) goto L_0x003e
            goto L_0x005d
        L_0x003e:
            r0 = r6
            if (r0 == 0) goto L_0x00c9
            r0 = r4
            r1 = 1
            if (r0 != r1) goto L_0x005d
            r0 = r10
            r9 = r0
        L_0x004b:
            r0 = r3
            r1 = r9
            r0.m19284b(r1)
            goto L_0x00c9
        L_0x0054:
            r0 = r4
            if (r0 == 0) goto L_0x0066
            r0 = r4
            r1 = 2
            if (r0 == r1) goto L_0x0066
        L_0x005d:
            r0 = r3
            r1 = r9
            r0.m19284b(r1)
            goto L_0x00c9
        L_0x0066:
            r0 = r6
            if (r0 == 0) goto L_0x00c9
            r0 = r4
            if (r0 != 0) goto L_0x0071
            goto L_0x005d
        L_0x0071:
            r0 = 9
            r9 = r0
            goto L_0x005d
        L_0x0078:
            r0 = r3
            c.b.a.b.m r0 = r0.f21306b
            com.applovin.impl.sdk.ad.g$b r0 = r0.m31058f()
            com.applovin.impl.sdk.ad.g$b r1 = com.applovin.impl.sdk.p489ad.AbstractC7036g.EnumC7038b.ACTIVITY_LANDSCAPE
            if (r0 != r1) goto L_0x00c9
            r0 = 8
            r9 = r0
            r0 = r5
            if (r0 == 0) goto L_0x00ab
            r0 = r4
            if (r0 == 0) goto L_0x0099
            r0 = r4
            r1 = 2
            if (r0 == r1) goto L_0x0099
            goto L_0x00b5
        L_0x0099:
            r0 = r6
            if (r0 == 0) goto L_0x00c9
            r0 = r4
            r1 = 2
            if (r0 != r1) goto L_0x00a5
            goto L_0x004b
        L_0x00a5:
            r0 = 0
            r9 = r0
            goto L_0x004b
        L_0x00ab:
            r0 = r4
            r1 = 1
            if (r0 == r1) goto L_0x00bd
            r0 = r4
            r1 = 3
            if (r0 == r1) goto L_0x00bd
        L_0x00b5:
            r0 = r3
            r1 = 0
            r0.m19284b(r1)
            goto L_0x00c9
        L_0x00bd:
            r0 = r6
            if (r0 == 0) goto L_0x00c9
            r0 = r4
            r1 = 1
            if (r0 != r1) goto L_0x004b
            goto L_0x00a5
        L_0x00c9:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.impl.adview.AbstractActivityC6931n.m19283b(int, boolean):void");
    }

    /* renamed from: b */
    public final void m19278b(AppLovinAd appLovinAd) {
        dismiss();
        m19271c(appLovinAd);
    }

    /* renamed from: b */
    public final void m19277b(String str) {
        AbstractC7036g gVar = this.currentAd;
        if (gVar != null && gVar.m18935V()) {
            m19287a(str, 0L);
        }
    }

    /* renamed from: b */
    public final void m19276b(boolean z) {
        C2070d adWebView;
        if (this.currentAd.m18938S() && (adWebView = ((AdViewControllerImpl) this.f21305a.getAdViewController()).getAdWebView()) != null) {
            try {
                adWebView.m31125a(z ? "javascript:al_mute();" : "javascript:al_unmute();");
            } catch (Throwable th) {
                this.logger.m30043b("InterActivity", "Unable to forward mute setting to template.", th);
            }
        }
    }

    /* renamed from: c */
    public final void m19271c(AppLovinAd appLovinAd) {
        if (!this.f21310f) {
            this.f21310f = true;
            C2097m mVar = this.f21306b;
            if (mVar != null) {
                C2391j.m29888b(mVar.m31060d(), appLovinAd);
            }
            this.sdk.m30235x().m30054b(appLovinAd);
        }
    }

    /* renamed from: c */
    public final void m19270c(boolean z) {
        this.videoMuted = z;
        MediaPlayer mediaPlayer = this.f21296J.get();
        if (mediaPlayer != null) {
            float f = z ? 0 : 1;
            try {
                mediaPlayer.setVolume(f, f);
            } catch (IllegalStateException e) {
                this.logger.m30043b("InterActivity", "Failed to set MediaPlayer muted: " + z, e);
            }
        }
    }

    /* renamed from: c */
    public final boolean m19275c() {
        return m19261g() && !isFullyWatched() && ((Boolean) this.sdk.m30291a(C2251d.C2256e.f8573N0)).booleanValue() && this.f21297K != null;
    }

    public void clickThroughFromVideo(PointF pointF) {
        try {
            this.sdk.m30299W().trackAndLaunchVideoClick(this.currentAd, this.f21305a, this.currentAd.mo18869u0(), pointF);
            C2391j.m29900a(this.f21306b.m31059e(), this.currentAd);
            if (this.f21307c != null) {
                this.f21307c.m30553b();
            }
        } catch (Throwable th) {
            this.sdk.m30262d0().m30043b("InterActivity", "Encountered error while clicking through video.", th);
        }
    }

    public void continueVideo() {
        m19245o();
    }

    /* renamed from: d */
    public final void m19266d(AppLovinAd appLovinAd) {
        if (!this.f21311g) {
            this.f21311g = true;
            C2391j.m29895a(this.f21306b.m31061c(), appLovinAd);
        }
    }

    /* renamed from: d */
    public final boolean m19269d() {
        return m19259h() && !m19263f() && ((Boolean) this.sdk.m30291a(C2251d.C2256e.f8598S0)).booleanValue() && this.f21297K != null;
    }

    @Override // p131c.p135b.p136a.p138b.AbstractC2086i, android.content.DialogInterface
    public void dismiss() {
        long currentTimeMillis = System.currentTimeMillis();
        long j = this.f21319o;
        C2374t.m30037g("InterActivity", "Dismissing ad after " + (currentTimeMillis - j) + " milliseconds elapsed");
        C2341l lVar = this.sdk;
        if (lVar != null) {
            if (((Boolean) lVar.m30291a(C2251d.C2256e.f8614V1)).booleanValue()) {
                stopService(new Intent(getBaseContext(), AppKilledService.class));
                this.sdk.m30317E().unregisterReceiver(this.f21304R);
            }
            this.sdk.m30318D().m18804b(this);
        }
        m19231w();
        m19243p();
        if (this.f21306b != null) {
            if (this.currentAd != null) {
                m19271c(this.currentAd);
                C2262c cVar = this.f21307c;
                if (cVar != null) {
                    cVar.m30551c();
                    this.f21307c = null;
                }
                m19287a("javascript:al_onPoststitialDismiss();", this.currentAd.m18939R());
            }
            this.f21306b.m31057g();
        }
        lastKnownWrapper = null;
        m19237t();
    }

    /* renamed from: e */
    public final int m19265e() {
        if (!(this.currentAd instanceof C2245a)) {
            return 0;
        }
        float N0 = ((C2245a) this.currentAd).m30656N0();
        if (N0 <= 0.0f) {
            N0 = (float) this.currentAd.m18859z0();
        }
        double a = AbstractC2426r.m29827a(System.currentTimeMillis() - this.f21319o);
        double d = N0;
        Double.isNaN(d);
        return (int) Math.min((a / d) * 100.0d, 100.0d);
    }

    public void exitWithError(String str) {
        m19288a(str);
        try {
            C2374t.m30041c("InterActivity", "Failed to properly render an Interstitial Activity, due to error: " + str, new Throwable("Initialized = " + C2097m.f8080l + "; CleanedUp = " + C2097m.f8081m));
            m19271c(new C2248d(this.currentAd != null ? this.currentAd.getAdZone() : C2246b.m30644a(str, this.sdk), this.sdk));
        } catch (Exception e) {
            C2374t.m30041c("InterActivity", "Failed to show a video ad due to error:", e);
        }
        dismiss();
    }

    /* renamed from: f */
    public final boolean m19263f() {
        return m19265e() >= this.currentAd.m18862y();
    }

    /* renamed from: g */
    public final boolean m19261g() {
        return AppLovinAdType.INCENTIVIZED.equals(this.currentAd.getType());
    }

    public boolean getPostitialWasDisplayed() {
        return this.postitialWasDisplayed;
    }

    public int getVideoPercentViewed() {
        int i;
        if (this.f21308d) {
            i = 100;
        } else {
            AppLovinVideoView appLovinVideoView = this.videoView;
            if (appLovinVideoView != null) {
                int duration = appLovinVideoView.getDuration();
                if (duration > 0) {
                    double currentPosition = this.videoView.getCurrentPosition();
                    double d = duration;
                    Double.isNaN(currentPosition);
                    Double.isNaN(d);
                    i = (int) ((currentPosition / d) * 100.0d);
                } else {
                    i = this.f21324t;
                }
            } else {
                this.logger.m30039e("InterActivity", "No video view detected on video end");
                i = 0;
            }
        }
        return i;
    }

    /* renamed from: h */
    public final boolean m19259h() {
        return !this.currentAd.hasVideoUrl() && m19261g();
    }

    public void handleMediaError(String str) {
        this.logger.m30039e("InterActivity", str);
        if (this.f21326v.compareAndSet(false, true) && this.currentAd.m18886m()) {
            m19288a(str);
            dismiss();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x009f, code lost:
        if (r15 > 0) goto L_0x00e5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0100, code lost:
        if (r15 > 0) goto L_0x00e5;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v10 */
    /* JADX WARN: Type inference failed for: r11v11 */
    /* JADX WARN: Type inference failed for: r11v12 */
    /* JADX WARN: Type inference failed for: r11v13 */
    /* JADX WARN: Type inference failed for: r11v4 */
    /* JADX WARN: Type inference failed for: r11v6 */
    /* JADX WARN: Type inference failed for: r9v1, types: [long] */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Type inference failed for: r9v4 */
    /* JADX WARN: Type inference failed for: r9v5 */
    /* JADX WARN: Type inference failed for: r9v6 */
    /* JADX WARN: Type inference failed for: r9v7 */
    /* JADX WARN: Type inference failed for: r9v8 */
    /* JADX WARN: Unknown variable types count: 3 */
    /* renamed from: i */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m19257i() {
        /*
            Method dump skipped, instructions count: 383
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.impl.adview.AbstractActivityC6931n.m19257i():void");
    }

    public boolean isFullyWatched() {
        return getVideoPercentViewed() >= this.currentAd.m18862y();
    }

    public boolean isVastAd() {
        return this.currentAd instanceof C6894a;
    }

    /* renamed from: j */
    public final void m19255j() {
        View view;
        C2374t tVar;
        String str;
        StringBuilder sb;
        C2096l lVar = this.f21305a;
        if (lVar != null) {
            lVar.setAdDisplayListener(new C6942h());
            this.f21305a.setAdClickListener(new C6943i());
            this.currentAd = this.f21306b.m31064b();
            if (this.f21327w.compareAndSet(false, true)) {
                this.sdk.m30299W().trackImpression(this.currentAd);
                this.currentAd.setHasShown(true);
            }
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
            FrameLayout frameLayout = new FrameLayout(this);
            this.f21289C = frameLayout;
            frameLayout.setLayoutParams(layoutParams);
            this.f21289C.setBackgroundColor(this.currentAd.m18896h());
            this.countdownManager = new C2082h(this.f21287A, this.sdk);
            m19225z();
            if (this.currentAd.isVideoAd()) {
                this.f21316l = this.currentAd.mo18873s0();
                if (this.f21316l) {
                    tVar = this.logger;
                    sb = new StringBuilder();
                    str = "Preparing stream for ";
                } else {
                    tVar = this.logger;
                    sb = new StringBuilder();
                    str = "Preparing cached video playback for ";
                }
                sb.append(str);
                sb.append(this.currentAd.mo18871t0());
                tVar.m30044b("InterActivity", sb.toString());
                C2262c cVar = this.f21307c;
                if (cVar != null) {
                    cVar.m30552b(this.f21316l ? 1L : 0L);
                }
            }
            this.videoMuted = m19227y();
            Uri t0 = this.currentAd.mo18871t0();
            m19299a(t0);
            if (t0 == null) {
                m19257i();
            }
            this.f21290D.bringToFront();
            if (m19321D() && (view = this.f21291E) != null) {
                view.bringToFront();
            }
            AbstractC6929h hVar = this.f21292F;
            if (hVar != null) {
                hVar.bringToFront();
            }
            if (((Boolean) this.sdk.m30291a(C2251d.C2256e.f8644b4)).booleanValue()) {
                this.f21289C.addView(this.f21305a);
                this.f21305a.setVisibility(4);
            }
            this.f21305a.renderAd(this.currentAd);
            if (!this.currentAd.hasVideoUrl()) {
                if (m19259h() && ((Boolean) this.sdk.m30291a(C2251d.C2256e.f8622X0)).booleanValue()) {
                    m19266d(this.currentAd);
                }
                showPostitial();
                return;
            }
            return;
        }
        exitWithError("AdView was null");
    }

    /* renamed from: k */
    public final void m19253k() {
        if (this.videoView != null) {
            this.f21324t = getVideoPercentViewed();
            this.videoView.stopPlayback();
        }
    }

    /* renamed from: l */
    public final boolean m19251l() {
        return this.videoMuted;
    }

    /* renamed from: m */
    public final void m19249m() {
        AppLovinVideoView appLovinVideoView = this.videoView;
        this.sdk.m30289a((C2251d.C2258g<C2251d.C2258g<Integer>>) C2251d.C2258g.f8813w, (C2251d.C2258g<Integer>) Integer.valueOf(appLovinVideoView != null ? appLovinVideoView.getCurrentPosition() : 0));
        this.sdk.m30289a((C2251d.C2258g<C2251d.C2258g<Boolean>>) C2251d.C2258g.f8814x, (C2251d.C2258g<Boolean>) true);
        try {
            this.countdownManager.m31098c();
        } catch (Throwable th) {
            this.logger.m30043b("InterActivity", "Unable to pause countdown timers", th);
        }
        AppLovinVideoView appLovinVideoView2 = this.videoView;
        if (appLovinVideoView2 != null) {
            appLovinVideoView2.pause();
        }
    }

    /* renamed from: n */
    public final void m19247n() {
        long max = Math.max(0L, ((Long) this.sdk.m30291a(C2251d.C2256e.f8690j2)).longValue());
        if (max > 0) {
            C2374t d0 = this.sdk.m30262d0();
            d0.m30044b("InterActivity", "Resuming video with delay of " + max);
            this.f21288B.postDelayed(new RunnableC6944j(), max);
            return;
        }
        this.sdk.m30262d0().m30044b("InterActivity", "Resuming video immediately");
        m19245o();
    }

    /* renamed from: o */
    public final void m19245o() {
        AppLovinVideoView appLovinVideoView;
        if (!this.postitialWasDisplayed && (appLovinVideoView = this.videoView) != null && !appLovinVideoView.isPlaying()) {
            this.videoView.seekTo(((Integer) this.sdk.m30273b(C2251d.C2258g.f8813w, Integer.valueOf(this.videoView.getDuration()))).intValue());
            this.videoView.start();
            this.countdownManager.m31105a();
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        AbstractC6929h hVar;
        if (this.currentAd != null) {
            if (this.currentAd.m18947J() && !this.postitialWasDisplayed) {
                return;
            }
            if (this.currentAd.m18946K() && this.postitialWasDisplayed) {
                return;
            }
        }
        if (m19239s()) {
            this.logger.m30044b("InterActivity", "Back button was pressed; forwarding to Android for handling...");
        } else {
            try {
                if (!this.postitialWasDisplayed && this.f21315k && this.f21292F != null && this.f21292F.getVisibility() == 0 && this.f21292F.getAlpha() > 0.0f) {
                    this.logger.m30044b("InterActivity", "Back button was pressed; forwarding as a click to skip button.");
                    hVar = this.f21292F;
                } else if (this.f21290D == null || this.f21290D.getVisibility() != 0 || this.f21290D.getAlpha() <= 0.0f) {
                    this.logger.m30044b("InterActivity", "Back button was pressed, but was not eligible for dismissal.");
                    m19277b("javascript:al_onBackPressed();");
                    return;
                } else {
                    this.logger.m30044b("InterActivity", "Back button was pressed; forwarding as a click to close button.");
                    hVar = this.f21290D;
                }
                hVar.performClick();
                m19277b("javascript:al_onBackPressed();");
                return;
            } catch (Exception e) {
            }
        }
        super.onBackPressed();
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Removed duplicated region for block: B:72:0x02e1  */
    @Override // android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onCreate(android.os.Bundle r6) {
        /*
            Method dump skipped, instructions count: 759
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.impl.adview.AbstractActivityC6931n.onCreate(android.os.Bundle):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x009a, code lost:
        if (r5.currentAd != null) goto L_0x00bd;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00ba, code lost:
        if (r5.currentAd == null) goto L_0x00c9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00bd, code lost:
        m19243p();
        m19271c(r5.currentAd);
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00c9, code lost:
        super.onDestroy();
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00cd, code lost:
        return;
     */
    /* JADX WARN: Finally extract failed */
    @Override // android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onDestroy() {
        /*
            Method dump skipped, instructions count: 228
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.impl.adview.AbstractActivityC6931n.onDestroy():void");
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if ((i == 25 || i == 24) && this.currentAd.m18936U() && m19251l()) {
            toggleMute();
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
        this.logger.m30044b("InterActivity", "App paused...");
        this.f21320p = System.currentTimeMillis();
        if (this.postitialWasDisplayed) {
            m19249m();
        }
        this.f21297K.m30693a();
        pauseReportRewardTask();
        m19277b("javascript:al_onAppPaused();");
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x009b, code lost:
        if (r7 != null) goto L_0x00fa;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00f7, code lost:
        if (r10 == false) goto L_0x00fa;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00fa, code lost:
        m19301a(0, r7);
     */
    @Override // android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onResume() {
        /*
            Method dump skipped, instructions count: 309
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.impl.adview.AbstractActivityC6931n.onResume():void");
    }

    @Override // com.applovin.impl.sdk.C7054e.AbstractC7056b
    public void onRingerModeChanged(int i) {
        String str;
        if (this.f21329y != C7054e.f21780h) {
            this.f21330z = true;
        }
        C2070d adWebView = ((AdViewControllerImpl) this.f21305a.getAdViewController()).getAdWebView();
        if (adWebView != null) {
            if (C7054e.m18805b(i) && !C7054e.m18805b(this.f21329y)) {
                str = "javascript:al_muteSwitchOn();";
            } else if (i == 2) {
                str = "javascript:al_muteSwitchOff();";
            }
            adWebView.m31125a(str);
        }
        this.f21329y = i;
    }

    @Override // android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("instance_impression_tracked", this.f21327w.get());
        bundle.putInt("original_orientation", this.f21325u);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z) {
        String str;
        super.onWindowFocusChanged(z);
        C2341l lVar = this.sdk;
        if (z) {
            if (lVar != null) {
                this.logger.m30044b("InterActivity", "Window gained focus");
                try {
                    if (!C2388g.m29972c() || !((Boolean) this.sdk.m30291a(C2251d.C2256e.f8666f2)).booleanValue() || !mo19214q()) {
                        getWindow().setFlags(1024, 1024);
                    } else {
                        mo19213r();
                        if (((Long) this.sdk.m30291a(C2251d.C2256e.f8579O1)).longValue() > 0) {
                            this.f21288B.postDelayed(new RunnableC6948n(), ((Long) this.sdk.m30291a(C2251d.C2256e.f8579O1)).longValue());
                        }
                    }
                    if (((Boolean) this.sdk.m30291a(C2251d.C2256e.f8584P1)).booleanValue() && !this.postitialWasDisplayed) {
                        m19247n();
                        resumeReportRewardTask();
                    }
                } catch (Throwable th) {
                    this.logger.m30043b("InterActivity", "Setting window flags failed.", th);
                }
                this.f21317m = false;
                m19277b("javascript:al_onWindowFocusChanged( " + z + " );");
            }
            str = "Window gained focus. SDK is null.";
        } else if (lVar != null) {
            this.logger.m30044b("InterActivity", "Window lost focus");
            if (((Boolean) this.sdk.m30291a(C2251d.C2256e.f8584P1)).booleanValue() && !this.postitialWasDisplayed) {
                m19249m();
                pauseReportRewardTask();
            }
            this.f21317m = false;
            m19277b("javascript:al_onWindowFocusChanged( " + z + " );");
        } else {
            str = "Window lost focus. SDK is null.";
        }
        C2374t.m30037g("InterActivity", str);
        this.f21317m = false;
        m19277b("javascript:al_onWindowFocusChanged( " + z + " );");
    }

    /* renamed from: p */
    public final void m19243p() {
        if (!this.f21312h) {
            boolean z = true;
            this.f21312h = true;
            try {
                int videoPercentViewed = getVideoPercentViewed();
                if (this.currentAd.hasVideoUrl()) {
                    m19289a(this.currentAd, videoPercentViewed, isFullyWatched());
                    if (this.f21307c != null) {
                        this.f21307c.m30550c(videoPercentViewed);
                    }
                } else if ((this.currentAd instanceof C2245a) && m19259h() && ((Boolean) this.sdk.m30291a(C2251d.C2256e.f8622X0)).booleanValue()) {
                    int e = m19265e();
                    this.logger.m30044b("InterActivity", "Rewarded playable engaged at " + e + " percent");
                    AbstractC7036g gVar = this.currentAd;
                    double d = e;
                    if (e < this.currentAd.m18862y()) {
                        z = false;
                    }
                    m19289a(gVar, d, z);
                }
                this.sdk.m30299W().trackVideoEnd(this.currentAd, TimeUnit.MILLISECONDS.toSeconds(System.currentTimeMillis() - this.f21319o), videoPercentViewed, this.f21316l);
                this.sdk.m30299W().trackFullScreenAdClosed(this.currentAd, SystemClock.elapsedRealtime() - this.f21321q, this.f21323s, this.f21330z, this.f21329y);
            } catch (Throwable th) {
                C2374t tVar = this.logger;
                if (tVar != null) {
                    tVar.m30043b("InterActivity", "Failed to notify end listener.", th);
                }
            }
        }
    }

    public void pauseReportRewardTask() {
        C2423p pVar = this.f21302P;
        if (pVar != null) {
            pVar.m29841b();
        }
    }

    public void playVideo() {
        m19266d(this.currentAd);
        this.videoView.start();
        this.countdownManager.m31105a();
    }

    /* renamed from: q */
    public final boolean mo19214q() {
        int identifier = getResources().getIdentifier((String) this.sdk.m30291a(C2251d.C2256e.f8604T1), "bool", "android");
        return identifier > 0 && getResources().getBoolean(identifier);
    }

    /* renamed from: r */
    public final void mo19213r() {
        getWindow().getDecorView().setSystemUiVisibility(5894);
    }

    public void resumeReportRewardTask() {
        C2423p pVar = this.f21302P;
        if (pVar != null) {
            pVar.m29839c();
        }
    }

    /* renamed from: s */
    public final boolean m19239s() {
        boolean z = true;
        if (this.f21306b != null) {
            C2341l lVar = this.sdk;
            if (lVar == null) {
                z = true;
            } else if (((Boolean) lVar.m30291a(C2251d.C2256e.f8564L1)).booleanValue()) {
                return true;
            } else {
                if (((Boolean) this.sdk.m30291a(C2251d.C2256e.f8569M1)).booleanValue() && this.f21313i) {
                    return true;
                }
                z = ((Boolean) this.sdk.m30291a(C2251d.C2256e.f8574N1)).booleanValue() && this.postitialWasDisplayed;
            }
        }
        return z;
    }

    public boolean shouldContinueFullLengthVideoCountdown() {
        return !this.f21308d && !this.postitialWasDisplayed;
    }

    public void showPostitial() {
        try {
            m19253k();
            if (this.f21305a != null) {
                ViewParent parent = this.f21305a.getParent();
                if ((parent instanceof ViewGroup) && (!((Boolean) this.sdk.m30291a(C2251d.C2256e.f8644b4)).booleanValue() || parent != this.f21289C)) {
                    ((ViewGroup) parent).removeView(this.f21305a);
                }
                FrameLayout frameLayout = ((Boolean) this.sdk.m30291a(C2251d.C2256e.f8644b4)).booleanValue() ? this.f21289C : new FrameLayout(this);
                frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                frameLayout.setBackgroundColor(this.currentAd.m18894i());
                if (((Boolean) this.sdk.m30291a(C2251d.C2256e.f8644b4)).booleanValue()) {
                    this.f21305a.setVisibility(0);
                } else {
                    frameLayout.addView(this.f21305a);
                }
                if (this.f21289C != null) {
                    if (((Boolean) this.sdk.m30291a(C2251d.C2256e.f8644b4)).booleanValue()) {
                        C2382b.m29994a(this.f21289C, this.f21305a);
                    } else {
                        this.f21289C.removeAllViewsInLayout();
                    }
                }
                if (m19321D() && this.f21291E != null) {
                    if (this.f21291E.getParent() instanceof ViewGroup) {
                        ((ViewGroup) this.f21291E.getParent()).removeView(this.f21291E);
                    }
                    frameLayout.addView(this.f21291E);
                    this.f21291E.bringToFront();
                }
                if (this.f21290D != null) {
                    ViewParent parent2 = this.f21290D.getParent();
                    if (parent2 instanceof ViewGroup) {
                        ((ViewGroup) parent2).removeView(this.f21290D);
                    }
                    frameLayout.addView(this.f21290D);
                    this.f21290D.bringToFront();
                }
                if (!((Boolean) this.sdk.m30291a(C2251d.C2256e.f8644b4)).booleanValue()) {
                    setContentView(frameLayout);
                }
                if (((Boolean) this.sdk.m30291a(C2251d.C2256e.f8616V3)).booleanValue()) {
                    this.f21305a.setVisibility(4);
                    this.f21305a.setVisibility(0);
                }
                m19287a("javascript:al_onPoststitialShow();", this.currentAd.m18860z());
            }
            if ((this.currentAd instanceof C2245a) && ((C2245a) this.currentAd).m30655O0()) {
                this.logger.m30044b("InterActivity", "Skip showing of close button");
            } else if (this.currentAd.m18859z0() >= 0) {
                m19301a(AbstractC2426r.m29789b((float) this.currentAd.m18859z0()), this.f21290D);
            } else if (this.currentAd.m18859z0() == -2) {
                this.f21290D.setVisibility(0);
            } else {
                m19301a(0L, this.f21290D);
            }
            this.postitialWasDisplayed = true;
        } catch (Throwable th) {
            this.logger.m30043b("InterActivity", "Encountered error while showing postitial. Dismissing...", th);
            dismiss();
        }
    }

    public void skipVideo() {
        this.f21323s = SystemClock.elapsedRealtime() - this.f21322r;
        C2262c cVar = this.f21307c;
        if (cVar != null) {
            cVar.m30546f();
        }
        if (this.currentAd.m18960C0()) {
            dismiss();
        } else {
            showPostitial();
        }
    }

    /* renamed from: t */
    public final void m19237t() {
        int i;
        if (this.sdk == null || !isFinishing()) {
            if (!(this.currentAd == null || (i = this.f21325u) == Integer.MIN_VALUE)) {
                m19284b(i);
            }
            finish();
        }
    }

    public void toggleMute() {
        boolean z = !m19251l();
        try {
            m19270c(z);
            m19286a(z);
            m19276b(z);
        } catch (Throwable th) {
            this.logger.m30043b("InterActivity", "Unable to set volume to " + z, th);
        }
    }

    /* renamed from: u */
    public final void m19235u() {
        C6927f fVar;
        if (((Boolean) this.sdk.m30291a(C2251d.C2256e.f8609U1)).booleanValue() && (fVar = this.f21294H) != null && fVar.getVisibility() != 8) {
            m19298a(this.f21294H, this.f21294H.getVisibility() == 4, 750L);
        }
    }

    /* renamed from: v */
    public final void m19233v() {
        C2109q qVar;
        C2108p G0 = this.currentAd.m18952G0();
        if (G0 != null && G0.m31051e() && !this.postitialWasDisplayed && (qVar = this.f21298L) != null) {
            m19298a(this.f21298L, qVar.getVisibility() == 4, G0.m31050f());
        }
    }

    /* renamed from: w */
    public final void m19231w() {
        C2341l lVar = this.sdk;
        if (lVar != null) {
            lVar.m30289a((C2251d.C2258g<C2251d.C2258g<Boolean>>) C2251d.C2258g.f8814x, (C2251d.C2258g<Boolean>) false);
            this.sdk.m30289a((C2251d.C2258g<C2251d.C2258g<Integer>>) C2251d.C2258g.f8813w, (C2251d.C2258g<Integer>) 0);
        }
    }

    /* renamed from: x */
    public final void m19229x() {
        this.f21308d = true;
        showPostitial();
    }

    /* renamed from: y */
    public final boolean m19227y() {
        return ((Integer) this.sdk.m30273b(C2251d.C2258g.f8813w, 0)).intValue() > 0 ? this.videoMuted : ((Boolean) this.sdk.m30291a(C2251d.C2256e.f8642b2)).booleanValue() ? this.sdk.m30302T().isMuted() : ((Boolean) this.sdk.m30291a(C2251d.C2256e.f8632Z1)).booleanValue();
    }

    /* renamed from: z */
    public final void m19225z() {
        AbstractC6929h a = AbstractC6929h.m19329a(this.currentAd.m18964A0(), this);
        this.f21290D = a;
        a.setVisibility(8);
        this.f21290D.setOnClickListener(new View$OnClickListenerC6959u());
        int a2 = m19303a(this.currentAd.m18933X());
        int i = 3;
        int i2 = (this.currentAd.m18922a0() ? 3 : 5) | 48;
        if (!this.currentAd.m18915b0()) {
            i = 5;
        }
        int i3 = i | 48;
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(a2, a2, i2 | 48);
        this.f21290D.mo19330a(a2);
        int a3 = m19303a(this.currentAd.m18932Y());
        int a4 = m19303a(this.currentAd.m18931Z());
        layoutParams.setMargins(a4, a3, a4, a3);
        this.f21289C.addView(this.f21290D, layoutParams);
        AbstractC6929h a5 = AbstractC6929h.m19329a(this.currentAd.m18962B0(), this);
        this.f21292F = a5;
        a5.setVisibility(8);
        this.f21292F.setOnClickListener(new View$OnClickListenerC6960v());
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(a2, a2, i3);
        layoutParams2.setMargins(a4, a3, a4, a3);
        this.f21292F.mo19330a(a2);
        this.f21289C.addView(this.f21292F, layoutParams2);
        this.f21292F.bringToFront();
        if (m19321D()) {
            int a6 = m19303a(((Integer) this.sdk.m30291a(C2251d.C2256e.f8631Z0)).intValue());
            View view = new View(this);
            this.f21291E = view;
            view.setBackgroundColor(0);
            this.f21291E.setVisibility(8);
            View view2 = new View(this);
            this.f21293G = view2;
            view2.setBackgroundColor(0);
            this.f21293G.setVisibility(8);
            int i4 = a2 + a6;
            int a7 = a3 - m19303a(5);
            FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(i4, i4, i2);
            layoutParams3.setMargins(a7, a7, a7, a7);
            FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(i4, i4, i3);
            layoutParams4.setMargins(a7, a7, a7, a7);
            this.f21291E.setOnClickListener(new View$OnClickListenerC6961w());
            this.f21293G.setOnClickListener(new View$OnClickListenerC6962x());
            this.f21289C.addView(this.f21291E, layoutParams3);
            this.f21291E.bringToFront();
            this.f21289C.addView(this.f21293G, layoutParams4);
            this.f21293G.bringToFront();
        }
    }
}
