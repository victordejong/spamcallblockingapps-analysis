package p081h.p430l.p435d;

import android.app.Activity;
import android.os.Handler;
import android.os.SystemClock;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.aotter.net.trek.ads.view.controller.AdViewController;
import com.mopub.common.VisibleForTesting;
import com.mopub.nativeads.AdRendererRegistry;
import com.mopub.nativeads.MoPubAdRenderer;
import com.mopub.nativeads.MoPubNative;
import com.mopub.nativeads.NativeAd;
import com.mopub.nativeads.NativeErrorCode;
import com.mopub.nativeads.RequestParameters;
import java.util.ArrayList;
import java.util.List;
/* renamed from: h.l.d.c */
/* loaded from: classes2-dex2jar.jar:h/l/d/c.class */
public class C10729c {
    @VisibleForTesting

    /* renamed from: m */
    public static final int[] f24452m = {1000, 3000, 5000, 25000, AdViewController.f1365a, 300000};
    @NonNull

    /* renamed from: a */
    public final List<C10744k<NativeAd>> f24453a;
    @NonNull

    /* renamed from: b */
    public final Handler f24454b;
    @NonNull

    /* renamed from: c */
    public final Runnable f24455c;
    @NonNull

    /* renamed from: d */
    public final MoPubNative.MoPubNativeNetworkListener f24456d;
    @VisibleForTesting

    /* renamed from: e */
    public boolean f24457e;
    @VisibleForTesting

    /* renamed from: f */
    public boolean f24458f;
    @VisibleForTesting

    /* renamed from: g */
    public int f24459g;
    @VisibleForTesting

    /* renamed from: h */
    public int f24460h;
    @Nullable

    /* renamed from: i */
    public AbstractC10732c f24461i;
    @Nullable

    /* renamed from: j */
    public RequestParameters f24462j;
    @Nullable

    /* renamed from: k */
    public MoPubNative f24463k;
    @NonNull

    /* renamed from: l */
    public final AdRendererRegistry f24464l;

    /* renamed from: h.l.d.c$a */
    /* loaded from: classes2-dex2jar.jar:h/l/d/c$a.class */
    public class RunnableC10730a implements Runnable {
        public RunnableC10730a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C10729c cVar = C10729c.this;
            cVar.f24458f = false;
            cVar.m10789e();
        }
    }

    /* renamed from: h.l.d.c$b */
    /* loaded from: classes2-dex2jar.jar:h/l/d/c$b.class */
    public class C10731b implements MoPubNative.MoPubNativeNetworkListener {
        public C10731b() {
        }

        @Override // com.mopub.nativeads.MoPubNative.MoPubNativeNetworkListener
        public void onNativeFail(NativeErrorCode nativeErrorCode) {
            C10729c cVar = C10729c.this;
            cVar.f24457e = false;
            if (cVar.f24460h >= C10729c.f24452m.length - 1) {
                cVar.m10787f();
                return;
            }
            cVar.m10786g();
            C10729c cVar2 = C10729c.this;
            cVar2.f24458f = true;
            cVar2.f24454b.postDelayed(C10729c.this.f24455c, C10729c.this.m10791d());
        }

        @Override // com.mopub.nativeads.MoPubNative.MoPubNativeNetworkListener
        public void onNativeLoad(@NonNull NativeAd nativeAd) {
            if (C10729c.this.f24463k != null) {
                C10729c cVar = C10729c.this;
                cVar.f24457e = false;
                cVar.f24459g++;
                cVar.m10787f();
                C10729c.this.f24453a.add(new C10744k(nativeAd));
                if (C10729c.this.f24453a.size() == 1 && C10729c.this.f24461i != null) {
                    C10729c.this.f24461i.onAdsAvailable();
                }
                C10729c.this.m10789e();
            }
        }
    }

    /* renamed from: h.l.d.c$c */
    /* loaded from: classes2-dex2jar.jar:h/l/d/c$c.class */
    public interface AbstractC10732c {
        void onAdsAvailable();
    }

    public C10729c() {
        this(new ArrayList(1), new Handler(), new AdRendererRegistry());
    }

    @VisibleForTesting
    public C10729c(@NonNull List<C10744k<NativeAd>> list, @NonNull Handler handler, @NonNull AdRendererRegistry adRendererRegistry) {
        this.f24453a = list;
        this.f24454b = handler;
        this.f24455c = new RunnableC10730a();
        this.f24464l = adRendererRegistry;
        this.f24456d = new C10731b();
        this.f24459g = 0;
        m10787f();
    }

    /* renamed from: a */
    public void m10801a() {
        MoPubNative moPubNative = this.f24463k;
        if (moPubNative != null) {
            moPubNative.destroy();
            this.f24463k = null;
        }
        this.f24462j = null;
        for (C10744k<NativeAd> kVar : this.f24453a) {
            kVar.f24505a.destroy();
        }
        this.f24453a.clear();
        this.f24454b.removeMessages(0);
        this.f24457e = false;
        this.f24459g = 0;
        m10787f();
    }

    /* renamed from: a */
    public void m10800a(@NonNull Activity activity, @NonNull String str, RequestParameters requestParameters) {
        m10798a(requestParameters, new MoPubNative(activity, str, this.f24456d));
    }

    /* renamed from: a */
    public void m10799a(@NonNull MoPubAdRenderer moPubAdRenderer) {
        this.f24464l.registerAdRenderer(moPubAdRenderer);
        MoPubNative moPubNative = this.f24463k;
        if (moPubNative != null) {
            moPubNative.registerAdRenderer(moPubAdRenderer);
        }
    }

    @VisibleForTesting
    /* renamed from: a */
    public void m10798a(RequestParameters requestParameters, MoPubNative moPubNative) {
        m10801a();
        for (MoPubAdRenderer moPubAdRenderer : this.f24464l.getRendererIterable()) {
            moPubNative.registerAdRenderer(moPubAdRenderer);
        }
        this.f24462j = requestParameters;
        this.f24463k = moPubNative;
        m10789e();
    }

    /* renamed from: a */
    public void m10797a(@Nullable AbstractC10732c cVar) {
        this.f24461i = cVar;
    }

    @Nullable
    /* renamed from: b */
    public NativeAd m10795b() {
        long uptimeMillis = SystemClock.uptimeMillis();
        if (!this.f24457e && !this.f24458f) {
            this.f24454b.post(this.f24455c);
        }
        while (!this.f24453a.isEmpty()) {
            C10744k<NativeAd> remove = this.f24453a.remove(0);
            if (uptimeMillis - remove.f24506b < 14400000) {
                return remove.f24505a;
            }
        }
        return null;
    }

    /* renamed from: c */
    public int m10793c() {
        return this.f24464l.getAdRendererCount();
    }

    @VisibleForTesting
    /* renamed from: d */
    public int m10791d() {
        int i = this.f24460h;
        int[] iArr = f24452m;
        if (i >= iArr.length) {
            this.f24460h = iArr.length - 1;
        }
        return f24452m[this.f24460h];
    }

    @VisibleForTesting
    /* renamed from: e */
    public void m10789e() {
        if (!this.f24457e && this.f24463k != null && this.f24453a.size() < 1) {
            this.f24457e = true;
            this.f24463k.makeRequest(this.f24462j, Integer.valueOf(this.f24459g));
        }
    }

    @VisibleForTesting
    /* renamed from: f */
    public void m10787f() {
        this.f24460h = 0;
    }

    @VisibleForTesting
    /* renamed from: g */
    public void m10786g() {
        int i = this.f24460h;
        if (i < f24452m.length - 1) {
            this.f24460h = i + 1;
        }
    }

    @Nullable
    public MoPubAdRenderer getAdRendererForViewType(int i) {
        return this.f24464l.getRendererForViewType(i);
    }

    public int getViewTypeForAd(@NonNull NativeAd nativeAd) {
        return this.f24464l.getViewTypeForAd(nativeAd);
    }
}
