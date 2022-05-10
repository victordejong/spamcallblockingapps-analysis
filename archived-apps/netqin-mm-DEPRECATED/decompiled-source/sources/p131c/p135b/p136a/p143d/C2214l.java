package p131c.p135b.p136a.p143d;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.applovin.impl.sdk.AppLovinBroadcastManager;
import com.applovin.mediation.MaxAd;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.MaxAdListener;
import com.applovin.mediation.MaxReward;
import com.applovin.mediation.MaxRewardedAdListener;
import com.applovin.sdk.AppLovinSdkUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import p131c.p135b.p136a.p143d.C2135c;
import p131c.p135b.p136a.p143d.C2173h;
import p131c.p135b.p136a.p148e.C2251d;
import p131c.p135b.p136a.p148e.C2341l;
import p131c.p135b.p136a.p148e.p153y.C2422o;
import p131c.p135b.p136a.p148e.p153y.C2423p;
/* renamed from: c.b.a.d.l */
/* loaded from: classes-dex2jar.jar:c/b/a/d/l.class */
public class C2214l {

    /* renamed from: a */
    public final List<AbstractC2219c> f8359a = Collections.synchronizedList(new ArrayList());

    /* renamed from: b */
    public final C2216b f8360b;

    /* renamed from: c */
    public final C2216b f8361c;

    /* renamed from: c.b.a.d.l$b */
    /* loaded from: classes-dex2jar.jar:c/b/a/d/l$b.class */
    public static class C2216b implements AppLovinBroadcastManager.Receiver, MaxAdListener, MaxRewardedAdListener {

        /* renamed from: a */
        public final C2341l f8362a;

        /* renamed from: b */
        public final C2214l f8363b;

        /* renamed from: c */
        public final MaxAdFormat f8364c;

        /* renamed from: d */
        public final C2251d.C2256e<String> f8365d;

        /* renamed from: e */
        public MaxAdListener f8366e;

        /* renamed from: f */
        public C2135c.C2139d f8367f;

        /* renamed from: g */
        public final Object f8368g;

        /* renamed from: h */
        public C2423p f8369h;

        /* renamed from: i */
        public long f8370i;

        /* renamed from: j */
        public final AtomicBoolean f8371j;

        /* renamed from: k */
        public volatile boolean f8372k;

        /* renamed from: c.b.a.d.l$b$a */
        /* loaded from: classes-dex2jar.jar:c/b/a/d/l$b$a.class */
        public class RunnableC2217a implements Runnable {
            public RunnableC2217a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                C2216b.this.m30721b(true);
            }
        }

        /* renamed from: c.b.a.d.l$b$b */
        /* loaded from: classes-dex2jar.jar:c/b/a/d/l$b$b.class */
        public class RunnableC2218b implements Runnable {
            public RunnableC2218b() {
            }

            @Override // java.lang.Runnable
            public void run() {
                C2216b.this.m30723b();
            }
        }

        public C2216b(C2251d.C2256e<String> eVar, MaxAdFormat maxAdFormat, C2214l lVar, C2341l lVar2) {
            this.f8368g = new Object();
            this.f8371j = new AtomicBoolean();
            this.f8363b = lVar;
            this.f8362a = lVar2;
            this.f8365d = eVar;
            this.f8364c = maxAdFormat;
            lVar2.m30317E().registerReceiver(this, new IntentFilter("com.applovin.application_paused"));
            lVar2.m30317E().registerReceiver(this, new IntentFilter("com.applovin.application_resumed"));
        }

        /* renamed from: a */
        public void m30729a() {
            if (this.f8371j.compareAndSet(true, false)) {
                m30724a(this.f8372k);
                return;
            }
            long j = this.f8370i;
            if (j != 0) {
                long currentTimeMillis = j - System.currentTimeMillis();
                if (currentTimeMillis <= 0) {
                    m30721b(true);
                } else {
                    m30728a(currentTimeMillis);
                }
            }
        }

        /* renamed from: a */
        public final void m30728a(long j) {
            if (j > 0) {
                this.f8370i = System.currentTimeMillis() + j;
                this.f8369h = C2423p.m29844a(j, this.f8362a, new RunnableC2217a());
            }
        }

        /* renamed from: a */
        public final void m30724a(boolean z) {
            if (this.f8362a.m30236w().m29746a()) {
                this.f8372k = z;
                this.f8371j.set(true);
                return;
            }
            String str = (String) this.f8362a.m30291a(this.f8365d);
            if (C2422o.m29851b(str)) {
                C2173h.C2175b bVar = new C2173h.C2175b();
                bVar.m30797a("fa", String.valueOf(true));
                bVar.m30797a("faie", String.valueOf(z));
                this.f8362a.m30254g0().loadAd(str, this.f8364c, bVar.m30800a(), true, this.f8362a.m30315G(), this);
            }
        }

        /* renamed from: b */
        public final void m30723b() {
            m30724a(false);
        }

        /* renamed from: b */
        public final void m30721b(boolean z) {
            synchronized (this.f8368g) {
                this.f8370i = 0L;
                m30720c();
                this.f8367f = null;
            }
            m30724a(z);
        }

        /* renamed from: c */
        public final void m30720c() {
            synchronized (this.f8368g) {
                if (this.f8369h != null) {
                    this.f8369h.m29837d();
                    this.f8369h = null;
                }
            }
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdClicked(MaxAd maxAd) {
            this.f8366e.onAdClicked(maxAd);
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdDisplayFailed(MaxAd maxAd, int i) {
            this.f8366e.onAdDisplayFailed(maxAd, i);
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdDisplayed(MaxAd maxAd) {
            this.f8366e.onAdDisplayed(maxAd);
            m30721b(false);
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdHidden(MaxAd maxAd) {
            this.f8366e.onAdHidden(maxAd);
            this.f8366e = null;
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdLoadFailed(String str, int i) {
            AppLovinSdkUtils.runOnUiThreadDelayed(new RunnableC2218b(), TimeUnit.SECONDS.toMillis(((Long) this.f8362a.m30291a(C2251d.C2255d.f8497h5)).longValue()));
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdLoaded(MaxAd maxAd) {
            C2135c.C2139d dVar = (C2135c.C2139d) maxAd;
            this.f8367f = dVar;
            m30728a(dVar.m30945D());
            Iterator it = new ArrayList(this.f8363b.f8359a).iterator();
            while (it.hasNext()) {
                ((AbstractC2219c) it.next()).mo19067a(this.f8367f);
            }
        }

        @Override // com.applovin.impl.sdk.AppLovinBroadcastManager.Receiver
        public void onReceive(Context context, Intent intent, Map<String, Object> map) {
            String action = intent.getAction();
            if ("com.applovin.application_paused".equals(action)) {
                m30720c();
            } else if ("com.applovin.application_resumed".equals(action)) {
                m30729a();
            }
        }

        @Override // com.applovin.mediation.MaxRewardedAdListener
        public void onRewardedVideoCompleted(MaxAd maxAd) {
            MaxAdListener maxAdListener = this.f8366e;
            if (maxAdListener instanceof MaxRewardedAdListener) {
                ((MaxRewardedAdListener) maxAdListener).onRewardedVideoCompleted(maxAd);
            }
        }

        @Override // com.applovin.mediation.MaxRewardedAdListener
        public void onRewardedVideoStarted(MaxAd maxAd) {
            MaxAdListener maxAdListener = this.f8366e;
            if (maxAdListener instanceof MaxRewardedAdListener) {
                ((MaxRewardedAdListener) maxAdListener).onRewardedVideoStarted(maxAd);
            }
        }

        @Override // com.applovin.mediation.MaxRewardedAdListener
        public void onUserRewarded(MaxAd maxAd, MaxReward maxReward) {
            MaxAdListener maxAdListener = this.f8366e;
            if (maxAdListener instanceof MaxRewardedAdListener) {
                ((MaxRewardedAdListener) maxAdListener).onUserRewarded(maxAd, maxReward);
            }
        }
    }

    /* renamed from: c.b.a.d.l$c */
    /* loaded from: classes-dex2jar.jar:c/b/a/d/l$c.class */
    public interface AbstractC2219c {
        /* renamed from: a */
        void mo19067a(C2135c.C2139d dVar);
    }

    public C2214l(C2341l lVar) {
        this.f8360b = new C2216b(C2251d.C2255d.f8494e5, MaxAdFormat.INTERSTITIAL, this, lVar);
        this.f8361c = new C2216b(C2251d.C2255d.f8495f5, MaxAdFormat.REWARDED, this, lVar);
    }

    /* renamed from: a */
    public C2135c.C2139d m30733a(MaxAdFormat maxAdFormat) {
        C2216b b = m30730b(maxAdFormat);
        return b != null ? b.f8367f : null;
    }

    /* renamed from: a */
    public void m30736a() {
        this.f8360b.m30723b();
        this.f8361c.m30723b();
    }

    /* renamed from: a */
    public void m30735a(AbstractC2219c cVar) {
        this.f8359a.add(cVar);
    }

    /* renamed from: a */
    public void m30732a(MaxAdListener maxAdListener, MaxAdFormat maxAdFormat) {
        C2216b b = m30730b(maxAdFormat);
        if (b != null) {
            b.f8366e = maxAdListener;
        }
    }

    /* renamed from: b */
    public final C2216b m30730b(MaxAdFormat maxAdFormat) {
        if (MaxAdFormat.INTERSTITIAL == maxAdFormat) {
            return this.f8360b;
        }
        if (MaxAdFormat.REWARDED == maxAdFormat) {
            return this.f8361c;
        }
        return null;
    }

    /* renamed from: b */
    public void m30731b(AbstractC2219c cVar) {
        this.f8359a.remove(cVar);
    }
}
